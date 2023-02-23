namespace CoinAPI.REST.V1
{
    public static class CoinApiEndpointUrls
    {
        public static string Exchanges() => "/v1/exchanges";
        public static string Assets() => "/v1/assets";
        public static string Symbols() => "/v1/symbols";
        public static string Symbols(string exchangeId) => $"/v1/symbols/{exchangeId}";
        public static string Assests_Icons(int iconSize) => $"/v1/assets/icons/{iconSize}";
        public static string Exchanges_Icons(int iconSize) => $"/v1/exchanges/icons/{iconSize}";
        public static string ExchangeRateSpecific(string baseId, string quoteId, string time) => string.Format("/v1/exchangerate/{0}/{1}?time={2}", baseId, quoteId, time);
        public static string ExchangeRateSpecific(string baseId, string quoteId) => string.Format("/v1/exchangerate/{0}/{1}", baseId, quoteId);
        public static string ExchangeRate(string baseId, bool invert) => string.Format("/v1/exchangerate/{0}?invert={1}", baseId, invert);
        public static string Ohlcv_Periods() => "/v1/ohlcv/periods";
        public static string Ohlcv_LatestData(string symbolId, string periodId, int limit) => string.Format("/v1/ohlcv/{0}/latest?period_id={1}&limit={2}", symbolId, periodId, limit);
        public static string Ohlcv_LatestData(string symbolId, string periodId) => string.Format("/v1/ohlcv/{0}/latest?period_id={1}", symbolId, periodId);
        public static string Ohlcv_Asset_Latest(string assetBase, string assetQuote, string periodId) => string.Format("/v1/ohlcv/{0}/{1}/latest?period_id={2}", assetBase, assetQuote, periodId);
        public static string Ohlcv_HistoricalData(string symbolId, string periodId, string start, string end, int limit) => string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&time_end={3}&limit={4}", symbolId, periodId, start, end, limit);
        public static string Ohlcv_HistoricalData(string symbolId, string periodId, string start, string end) => string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&time_end={3}", symbolId, periodId, start, end);
        public static string Ohlcv_HistoricalData(string symbolId, string periodId, string start, int limit) => string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&limit={3}", symbolId, periodId, start, limit);
        public static string Ohlcv_HistoricalData(string symbolId, string periodId, string start) => string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}", symbolId, periodId, start);
        public static string Trades_Latest() => "/v1/trades/latest";
        public static string Trades_Latest(int limit) => string.Format("/v1/trades/latest?limit={0}", limit);
        public static string Trades_LatestSymbol(string symbolId) => string.Format("/v1/trades/{0}/latest", symbolId);
        public static string Trades_LatestSymbol(string symbolId, int limit) => string.Format("/v1/trades/{0}/latest?limit={1}", symbolId, limit);
        public static string Trades_HistoricalData(string symbolId, string start, string end, int limit) => string.Format("/v1/trades/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start, end, limit);
        public static string Trades_HistoricalData(string symbolId, string start) => string.Format("/v1/trades/{0}/history?time_start={1}", symbolId, start);
        public static string Trades_HistoricalData(string symbolId, string start, string end) => string.Format("/v1/trades/{0}/history?time_start={1}&time_end={2}", symbolId, start, end);
        public static string Trades_HistoricalData(string symbolId, string start, int limit) => string.Format("/v1/trades/{0}/history?time_start={1}&limit={2}", symbolId, start, limit);
        public static string Quotes_Current() => "/v1/quotes/current";
        public static string Quotes_CurrentSymbol(string symbolId) => string.Format("/v1/quotes/{0}/current", symbolId);
        public static string Quotes_Latest() => "/v1/quotes/latest";
        public static string Quotes_Latest(int limit) => string.Format("/v1/quotes/latest?limit={0}", limit);
        public static string Quotes_LatestSymbol(string symbolId) => string.Format("/v1/quotes/{0}/latest", symbolId);
        public static string Quotes_LatestSymbol(string symbolId, int limit) => string.Format("/v1/quotes/{0}/latest?limit={1}", symbolId, limit);
        public static string Quotes_HistoricalData(string symbolId, string start, string end, int limit) => string.Format("/v1/quotes/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start, end, limit);
        public static string Quotes_HistoricalData(string symbolId, string start) => string.Format("/v1/quotes/{0}/history?time_start={1}", symbolId, start);
        public static string Quotes_HistoricalData(string symbolId, string start, string end) => string.Format("/v1/quotes/{0}/history?time_start={1}&time_end={2}", symbolId, start, end);
        public static string Quotes_HistoricalData(string symbolId, string start, int limit) => string.Format("/v1/quotes/{0}/history?time_start={1}&limit={2}", symbolId, start, limit);
        public static string Orderbooks_CurrentFilteredBitstamp() => "/v1/orderbooks/current?filter_symbol_id=BITSTAMP";
        public static string Orderbooks_CurrentSymbol(string symbolId) => string.Format("/v1/orderbooks/{0}/current", symbolId);
        public static string Orderbooks_LatestData(string symbolId, int limit) => string.Format("/v1/orderbooks/{0}/latest?limit={1}", symbolId, limit);
        public static string Orderbooks_LatestData(string symbolId) => string.Format("/v1/orderbooks/{0}/latest", symbolId);
        public static string Orderbooks_HistoricalData(string symbolId, string start, string end, int limit) => string.Format("/v1/orderbooks/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start, end, limit);
        public static string Orderbooks_HistoricalData(string symbolId, string start) => string.Format("/v1/orderbooks/{0}/history?time_start={1}", symbolId, start);
        public static string Orderbooks_HistoricalData(string symbolId, string start, string end) => string.Format("/v1/orderbooks/{0}/history?time_start={1}&time_end={2}", symbolId, start, end);
        public static string Orderbooks_HistoricalData(string symbolId, string start, int limit) => string.Format("/v1/orderbooks/{0}/history?time_start={1}&limit={2}", symbolId, start, limit);
        public static string Orderbooks3_CurrentFilteredBitstamp() => "/v1/orderbooks3/current?filter_symbol_id=BITSTAMP";
        public static string Orderbooks3_Current(string symbolId) => string.Format("/v1/orderbooks3/{0}/current", symbolId);
    }

}
