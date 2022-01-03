using System;
using System.Collections.Generic;
using System.Text;

namespace CoinAPI.WebSocket.V1.DataModels
{
    public struct OrderBook
    {
        public string symbol_id { get; set; }
        public long sequence { get; set; }
        public bool? is_snapshot { get; set; }
        public DateTime time_exchange { get; set; }
        public DateTime time_coinapi { get; set; }
        public List<BidAsk> asks { get; set; }
        public List<BidAsk> bids { get; set; }
    }
}
