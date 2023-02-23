using System;

namespace CoinAPI.WebSocket.V1.DataModels
{
    public struct BidAskL3
    {
        public Guid id { get; set; }
        public decimal price { get; set; }
        public decimal size { get; set; }
        public string update_type { get; set; }
    }
}
