namespace CoinAPI.WebSocket.V1.DataModels
{
    internal enum MessageType
    {
        book,
        book_l3,
        hearbeat,
        hello,
        quote,
        trade,
        volume,
        ohlcv,
        error,
        exrate,
        ticker
    }
}
