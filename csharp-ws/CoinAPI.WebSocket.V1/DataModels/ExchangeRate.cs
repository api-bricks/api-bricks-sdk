using System;

namespace CoinAPI.WebSocket.V1.DataModels
{
    public struct ExchangeRate
    {
        public decimal? rate { get; set; }
        public decimal? crossing_cost { get; set; }
        public DateTime time { get; set; }
        public string asset_id_base { get; set; }
        public string asset_id_quote { get; set; }
    }
}
