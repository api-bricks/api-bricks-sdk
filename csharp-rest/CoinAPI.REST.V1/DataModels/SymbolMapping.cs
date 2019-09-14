using System;
using System.Collections.Generic;
using System.Text;

namespace CoinAPI.REST.V1.DataModels
{
    public class SymbolMapping
    {
        public string symbol_id { get; set; }
        public string symbol_id_exchange { get; set; }
        public decimal? price_precision { get; set; }
        public decimal? size_precision { get; set; }
    }
}
