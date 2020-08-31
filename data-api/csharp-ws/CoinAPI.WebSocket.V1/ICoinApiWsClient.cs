using CoinAPI.WebSocket.V1.DataModels;

namespace CoinAPI.WebSocket.V1
{
    public delegate void OHLCVEventHandler(object sender, OHLCV item);
    public delegate void OrderBookEventHandler(object sender, OrderBook item);
    public delegate void OrderBookL3EventHandler(object sender, OrderBookL3 item);
    public delegate void QuoteEventHandler(object sender, Quote item);
    public delegate void TradeEventHandler(object sender, Trade item);
    public delegate void VolumeEventHandler(object sender, Volume item);
    public delegate void ExchangeRateHandler(object sneder, ExchangeRate item);
    public delegate void TickerHandler(object sender, Ticker item);

    public interface ICoinApiWsClient
    {
        void SendHelloMessage(Hello helloMessage);
        long UnprocessedMessagesQueueSize { get; }
        event OHLCVEventHandler OHLCVEvent;
        event OrderBookEventHandler OrderBookEvent;
        event OrderBookL3EventHandler OrderBookL3Event;
        event QuoteEventHandler QuoteEvent;
        event TradeEventHandler TradeEvent;
        event VolumeEventHandler VolumeEvent;
        event ExchangeRateHandler ExchangeRateEvent;
        event TickerHandler TickerEvent;
    }
}
