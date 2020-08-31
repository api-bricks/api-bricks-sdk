using System;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using CoinAPI.WebSocket.V1.DataModels;
using Utf8Json;

namespace CoinAPI.WebSocket.V1
{
    public class CoinApiWsClient : ICoinApiWsClient, IDisposable
    {
        private const string UrlSandbox = "wss://ws-sandbox.coinapi.io/";
        private const string UrlProduction = "wss://ws.coinapi.io/";

        private readonly string _url;
        
        private readonly CancellationTokenSource _cts = new CancellationTokenSource();
        private readonly QueueThread<MessageData> _queueThread = null;

        private readonly TimeSpan _hbTimeout = TimeSpan.FromSeconds(10);
        private readonly TimeSpan _hbTimeoutCheckInterval = TimeSpan.FromSeconds(1);
        private readonly TimeSpan _reconnectInterval = TimeSpan.FromSeconds(1);
        private DateTime _hbLastAction = DateTime.MinValue;

        // client reference is leaked here only for testing purposes (forcing reconnects)
#pragma warning disable IDE0069 // Disposable fields should be disposed
        protected ClientWebSocket _client = null;
#pragma warning restore IDE0069 // Disposable fields should be disposed

        private Hello HelloMessage { get; set; }
        public long UnprocessedMessagesQueueSize => _queueThread.QueueSize;
        public event EventHandler<Exception> Error;
        public AutoResetEvent ConnectedEvent { get; } = new AutoResetEvent(false);
        public DateTime? ConnectedTime { get; private set; }
        protected bool? ForceOverrideHeartbeat { get; set; } = true;

        public CoinApiWsClient(bool isSandbox = false)
        {
            _queueThread = new QueueThread<MessageData>();
            _queueThread.ItemDequeuedEvent += _queueThread_ItemDequeuedEvent;
            _url = isSandbox ? UrlSandbox : UrlProduction;
        }
        public CoinApiWsClient(string url)
        {
            _queueThread = new QueueThread<MessageData>();
            _queueThread.ItemDequeuedEvent += _queueThread_ItemDequeuedEvent;
            _url = url;
        }
        public void SendHelloMessage(Hello msg)
        {
            if (msg == null)
            {
                throw new ArgumentNullException(nameof(msg));
            }

            var startClient = HelloMessage == null;

            if (ForceOverrideHeartbeat.HasValue)
            {
                msg.heartbeat = ForceOverrideHeartbeat.Value;
            }
            HelloMessage = msg;

            if (startClient)
            {
                Task.Run(() => Connect());
            }
        }

        private void _queueThread_ItemDequeuedEvent(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<MessageBase>(item.Data);

            if (!Enum.TryParse(data.type, out MessageType messageType))
            {
                // unknown type
                return;
            }

            switch(messageType)
            {
                case MessageType.book:
                    HandleBookItem(sender, item);
                    break;
                case MessageType.book_l3:
                    HandleBookL3Item(sender, item);
                    break;
                case MessageType.ohlcv:
                    HandleOHLCVItem(sender, item);
                    break;
                case MessageType.quote:
                    HandleQuoteItem(sender, item);
                    break;
                case MessageType.trade:
                    HandleTradeItem(sender, item);
                    break;
                case MessageType.volume:
                    HandleVolumeItem(sender, item);
                    break;
                case MessageType.exrate:
                    HandleExchangeRateItem(sender, item);
                    break;
                case MessageType.ticker:
                    HandleTickerItem(sender, item);
                    break;
                case MessageType.error:
                    HandleErrorItem(sender, item);
                    break;
            }
        }

        private void HandleBookItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<OrderBook>(item.Data);
            OrderBookEvent?.Invoke(sender, data);
        }

        private void HandleBookL3Item(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<OrderBookL3>(item.Data);
            OrderBookL3Event?.Invoke(sender, data);
        }


        private void HandleOHLCVItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<OHLCV>(item.Data);
            OHLCVEvent?.Invoke(sender, data);
        }

        private void HandleQuoteItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Quote>(item.Data);
            QuoteEvent?.Invoke(sender, data);
        }

        private void HandleTradeItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Trade>(item.Data);
            TradeEvent?.Invoke(sender, data);
        }

        private void HandleVolumeItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Volume>(item.Data);
            VolumeEvent?.Invoke(sender, data);
        }

        private void HandleExchangeRateItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<ExchangeRate>(item.Data);
            ExchangeRateEvent?.Invoke(sender, data);
        }

        private void HandleTickerItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Ticker>(item.Data);
            TickerEvent?.Invoke(sender, data);
        }

        private void HandleErrorItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<Error>(item.Data);
            OnError(new CoinAPIException(data));
        }

        private async Task Connect()
        {
            while (!_cts.IsCancellationRequested)
            {
                using (var connectionCts = CancellationTokenSource.CreateLinkedTokenSource(_cts.Token))
                {
                    await HandleConnection(connectionCts);
                    ConnectedTime = null;
                    connectionCts.Cancel();
                }
                
                await Task.Delay(_reconnectInterval);
            }
        }

        private async Task HeartbeatWatcher(ClientWebSocket client, CancellationTokenSource connectionCts)
        {
            while (!connectionCts.IsCancellationRequested)
            {
                var lag = DateTime.UtcNow - _hbLastAction;
                if (lag > _hbTimeout)
                {
                    connectionCts.Cancel();
                    await client.CloseAsync(WebSocketCloseStatus.NormalClosure, 
                        nameof(HeartbeatWatcher), 
                        CancellationToken.None);
                    continue;
                }
                await Task.Delay(_hbTimeoutCheckInterval, connectionCts.Token);
            }
        }

        private async Task HandleConnection(CancellationTokenSource connectionCts)
        {
            _hbLastAction = DateTime.UtcNow;

            using (_client = new ClientWebSocket())
            {
                try
                {
                    _ = Task.Run(() => HeartbeatWatcher(_client, connectionCts));
                    await _client.ConnectAsync(new Uri(_url), connectionCts.Token);
                    ConnectedTime = DateTime.UtcNow;
                    ConnectedEvent.Set();
                    ConnectedEvent.Reset();
                    _hbLastAction = DateTime.UtcNow;

                    var currentHello = HelloMessage;
                    var helloAs = new ArraySegment<byte>(JsonSerializer.Serialize(currentHello));
                    await _client.SendAsync(helloAs, WebSocketMessageType.Text, true, connectionCts.Token);
                    _hbLastAction = DateTime.UtcNow;

                    while (_client.State == WebSocketState.Open && !connectionCts.IsCancellationRequested)
                    {
                        if (currentHello != HelloMessage)
                        {
                            currentHello = HelloMessage;
                            helloAs = new ArraySegment<byte>(JsonSerializer.Serialize(currentHello));
                            await _client.SendAsync(helloAs, WebSocketMessageType.Text, true, connectionCts.Token);
                            _hbLastAction = DateTime.UtcNow;
                        }
                        var messageData = await WSUtils.ReceiveMessage(_client, connectionCts.Token);
                        _hbLastAction = DateTime.UtcNow;

                        if (messageData.MessageType == WebSocketMessageType.Close)
                        {
                            return;
                        }

                        _queueThread.Enqueue(messageData);
                    }
                }
                catch (TaskCanceledException) { }
                catch (Exception ex)
                {
                    OnError(ex);
                }
            }
        }

        protected void OnError(Exception ex)
        {
            Error?.Invoke(this, ex);
        }

        public void Dispose()
        {
            _queueThread.ItemDequeuedEvent -= _queueThread_ItemDequeuedEvent;
            _queueThread.Dispose();

            _cts.Cancel();
            _cts.Dispose();
        }

        public event OHLCVEventHandler OHLCVEvent;
        public event OrderBookEventHandler OrderBookEvent;
        public event OrderBookL3EventHandler OrderBookL3Event;
        public event QuoteEventHandler QuoteEvent;
        public event TradeEventHandler TradeEvent;
        public event VolumeEventHandler VolumeEvent;
        public event ExchangeRateHandler ExchangeRateEvent;
        public event TickerHandler TickerEvent;
    }
}
