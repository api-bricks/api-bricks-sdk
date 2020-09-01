namespace CoinAPI.REST.V1
{
    public class Orderbook3
    {
        public string symbol_id { get; set; }
        public string time_exchange { get; set; }
        public string time_coinapi { get; set; }
        public AskL3[] asks { get; set; }
        public BidL3[] bids { get; set; }
    }
}
