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

        private readonly bool _isSandbox;
        private readonly string _url;
        
        private readonly CancellationTokenSource _cts = new CancellationTokenSource();
        private readonly QueueThread<MessageData> _queueThread = null;

        // client reference is leaked here only for testing purposes (forcing reconnects)
        private ClientWebSocket _client = null;

        private Hello? helloMessage { get; set; }
        public long UnprocessedMessagesQueueSize => _queueThread.QueueSize;

        public CoinApiWsClient(bool isSandbox = false)
        {
            _isSandbox = isSandbox;
            _queueThread = new QueueThread<MessageData>();
            _queueThread.ItemDequeuedEvent += _queueThread_ItemDequeuedEvent;
            _url = _isSandbox ? UrlSandbox : UrlProduction;
        }


        public void SendHelloMessage(Hello msg)
        {
            var startClient = !helloMessage.HasValue;

            helloMessage = msg;

            if(startClient)
            {
                Task.Run(() => Connect());
            }
        }

        public void ForceReconnectUsedOnlyTestPurpose()
        {
            try
            {
                _client.CloseAsync(WebSocketCloseStatus.NormalClosure, "testClose", _cts.Token).Wait();
            }
            catch { }
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
            }
        }

        private void HandleBookItem(object sender, MessageData item)
        {
            var data = JsonSerializer.Deserialize<OrderBook>(item.Data);
            OrderBookEvent?.Invoke(sender, data);
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

        private async Task Connect()
        {
            while (!_cts.IsCancellationRequested)
            {
                await HandleConnection();
            }
        }

        private async Task HandleConnection()
        {
            using(_client = new ClientWebSocket())
            {
                try
                {
                    await _client.ConnectAsync(new Uri(_url), _cts.Token);

                    var helloMsg = new ArraySegment<byte>(JsonSerializer.Serialize(helloMessage.Value));

                    await _client.SendAsync(helloMsg, WebSocketMessageType.Text, true, _cts.Token);

                    while (_client.State == WebSocketState.Open && !_cts.IsCancellationRequested)
                    {
                        var messageData = await WSUtils.ReceiveMessage(_client);

                        if (messageData.MessageType == WebSocketMessageType.Close)
                        {
                            return;
                        }

                        _queueThread.Enqueue(messageData);
                    }
                }
                catch
                {
                }
            }
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
        public event QuoteEventHandler QuoteEvent;
        public event TradeEventHandler TradeEvent;
        public event VolumeEventHandler VolumeEvent;
        public event ExchangeRateHandler ExchangeRateEvent;
    }
}
