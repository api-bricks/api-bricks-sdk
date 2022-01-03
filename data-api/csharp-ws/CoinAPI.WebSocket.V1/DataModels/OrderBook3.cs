using System;
using System.Collections.Generic;
using System.Text;

namespace CoinAPI.WebSocket.V1.DataModels
{
    public struct OrderBookL3
    {
        public string symbol_id { get; set; }
        public long sequence { get; set; }
        public bool? is_snapshot { get; set; }
        public DateTime time_exchange { get; set; }
        public DateTime time_coinapi { get; set; }
        public List<BidAskL3> asks { get; set; }
        public List<BidAskL3> bids { get; set; }
    }
}
