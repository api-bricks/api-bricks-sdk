
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using csharp_rest.Exceptions;

namespace csharp_rest {
    class CoinApi {
        private string apikey;
        private string dateFormat = "yyyy-MM-ddTHH:mm:ss.fff";
        private static string WebUrl = "https://rest.coinapi.io";// "https://rest-test.coinapi.io";
        public CoinApi(string apikey) {
            this.apikey = apikey;
        }

        private T GetData<T>(string url)
        {
            try
            {
                using (var handler = new HttpClientHandler())
                {
                    handler.AutomaticDecompression = DecompressionMethods.GZip | DecompressionMethods.Deflate;
                    using (var client = new HttpClient(handler, false))
                    {
                        client.DefaultRequestHeaders.Add("X-CoinAPI-Key", apikey);

                        var response = client.GetAsync(WebUrl + url).Result;

                        if (!response.IsSuccessStatusCode) 
                            RaiseError(response);

                        return Deserialize<T>(response);
                    }
                }
            }
            catch (CoinApiException)
            {
                throw;
            }
            catch (Exception e)
            {
                throw new CoinApiException("Unexpected error", e);
            }
        }

        private static void RaiseError(HttpResponseMessage response)
        {
            var message = Deserialize<ErrorMessage>(response).message;

            switch ((int) response.StatusCode)
            {
                case 400:
                    throw new BadRequestException(message);
                case 401:
                    throw new UnauthorizedException(message);
                case 403:
                    throw new ForbiddenException(message);
                case 429:
                    throw new TooManyRequestsException(message);
                case 550:
                    throw new NoDataException(message);
                default:
                    throw new CoinApiException(message);
            }
        }

        private static T Deserialize<T>(HttpResponseMessage responseMessage)
        {
            var responseString = responseMessage.Content.ReadAsStringAsync().Result;
            var data = JsonConvert.DeserializeObject<T>(responseString);
            return data;
        }

        public List<Exchange> Metadata_list_exchanges() {
            return GetData<List<Exchange>>("/v1/exchanges");
        }

        public List<Asset> Metadata_list_assets() {
            return GetData<List<Asset>>("/v1/assets");
        }
        public List<Symbol> Metadata_list_symbols() {
            return GetData<List<Symbol>>("/v1/symbols");
        }

        public Exchangerate Exchange_rates_get_specific_rate(string baseId, string quoteId, DateTime time) {
            var url = string.Format("/v1/exchangerate/{0}/{1}?time={2}", baseId, quoteId, time.ToString(dateFormat));
            return GetData<Exchangerate>(url);
        }
        public Exchangerate Exchange_rates_get_specific_rate(string baseId, string quoteId) {
            var url = string.Format("/v1/exchangerate/{0}/{1}", baseId, quoteId);
            return GetData<Exchangerate>(url);
        }

        public ExchangeCurrentrate Exchange_rates_get_all_current_rates(string baseId) {
            var url = string.Format("/v1/exchangerate/{0}", baseId);
            return GetData<ExchangeCurrentrate>(url);
        }

        public List<Period> Ohlcv_list_all_periods() {
            var url = "/v1/ohlcv/periods";
            return GetData<List<Period>>(url);
        }


        public List<OHLCV> Ohlcv_latest_data(string symbolId, string periodId, int limit) {
            var url = string.Format("/v1/ohlcv/{0}/latest?period_id={1}&limit={2}", symbolId, periodId, limit);
            return GetData<List<OHLCV>>(url);
        }
        public List<OHLCV> Ohlcv_latest_data(string symbolId, string periodId) {
            var url = string.Format("/v1/ohlcv/{0}/latest?period_id={1}", symbolId, periodId);
            return GetData<List<OHLCV>>(url);
        }

        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start, DateTime end, int limit) {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&time_end={3}&limit={4}", symbolId, periodId, start.ToString("yyyy-MM-dd HH:ss:mm"), end.ToString("yyyy-MM-dd HH:ss:mm"), limit);
            return GetData<List<OHLCV>>(url);
        }
        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start, DateTime end) {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&time_end={3}", symbolId, periodId, start.ToString(dateFormat), end.ToString(dateFormat));
            return GetData<List<OHLCV>>(url);
        }
        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start, int limit) {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&limit={3}", symbolId, periodId, start.ToString(dateFormat), limit);
            return GetData<List<OHLCV>>(url);
        }
        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start) {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}", symbolId, periodId, start.ToString(dateFormat));
            return GetData<List<OHLCV>>(url);
        }

        public List<Trade> Trades_latest_data_all() {
            var url = "/v1/trades/latest";
            return GetData<List<Trade>>(url);
        }
        public List<Trade> Trades_latest_data_all(int limit) {
            var url = string.Format("/v1/trades/latest?limit={0}", limit);
            return GetData<List<Trade>>(url);
        }


        public List<Trade> Trades_latest_data_symbol(string symbolId) {
            var url = string.Format("/v1/trades/{0}/latest", symbolId);
            return GetData<List<Trade>>(url);
        }
        public List<Trade> Trades_latest_data_symbol(string symbolId, int limit) {
            var url = string.Format("/v1/trades/{0}/latest?limit={1}", symbolId, limit);
            return GetData<List<Trade>>(url);
        }

        public List<Trade> Trades_historical_data(string symbolId, DateTime start, DateTime end, int limit) {
            var url = string.Format("/v1/trades/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat), limit);
            return GetData<List<Trade>>(url);
        }
        public List<Trade> Trades_historical_data(string symbolId, DateTime start) {
            var url = string.Format("/v1/trades/{0}/history?time_start={1}", symbolId, start.ToString(dateFormat));
            return GetData<List<Trade>>(url);
        }
        public List<Trade> Trades_historical_data(string symbolId, DateTime start, DateTime end) {
            var url = string.Format("/v1/trades/{0}/history?time_start={1}&time_end={2}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat));
            return GetData<List<Trade>>(url);
        }
        public List<Trade> Trades_historical_data(string symbolId, DateTime start, int limit) {
            var url = string.Format("/v1/trades/{0}/history?time_start={1}&limit={2}", symbolId, start.ToString(dateFormat), limit);
            return GetData<List<Trade>>(url);
        }

        public List<Quote> Quotes_current_data_all() {
            var url = "/v1/quotes/current";
            return GetData<List<Quote>>(url);
        }

        public Quote Quotes_current_data_symbol(string symbolId) {
            var url = string.Format("/v1/quotes/{0}/current", symbolId);
            return GetData<Quote>(url);
        }

        public List<Quote> Quotes_latest_data_all() {
            var url = "/v1/quotes/latest";
            return GetData<List<Quote>>(url);
        }
        public List<Quote> Quotes_latest_data_all(int limit) {
            var url = string.Format("/v1/quotes/latest?limit={0}", limit);
            return GetData<List<Quote>>(url);
        }

        public List<Quote> Quotes_latest_data_symbol(string symbolId) {
            var url = string.Format("/v1/quotes/{0}/latest", symbolId);
            return GetData<List<Quote>>(url);
        }
        public List<Quote> Quotes_latest_data_symbol(string symbolId, int limit) {
            var url = string.Format("/v1/quotes/{0}/latest?limit={1}", symbolId, limit);
            return GetData<List<Quote>>(url);
        }

        public List<Quote> Quotes_historical_data(string symbolId, DateTime start, DateTime end, int limit) {
            var url = string.Format("/v1/quotes/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat), limit);
            return GetData<List<Quote>>(url);

        }
        public List<Quote> Quotes_historical_data(string symbolId, DateTime start) {
            var url = string.Format("/v1/quotes/{0}/history?time_start={1}", symbolId, start.ToString(dateFormat));
            return GetData<List<Quote>>(url);
        }
        public List<Quote> Quotes_historical_data(string symbolId, DateTime start, DateTime end) {
            var url = string.Format("/v1/quotes/{0}/history?time_start={1}&time_end={2}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat));
            return GetData<List<Quote>>(url);
        }
        public List<Quote> Quotes_historical_data(string symbolId, DateTime start, int limit) {
            var url = string.Format("/v1/quotes/{0}/history?time_start={1}&limit={2}", symbolId, start.ToString(dateFormat), limit);
            return GetData<List<Quote>>(url);

        }
        public List<Orderbook> Orderbooks_current_data_all() {
            var url = "/v1/orderbooks/current";
            return GetData<List<Orderbook>>(url);
        }

        public Orderbook Orderbooks_current_data_symbol(string symbolId) {
            var url = string.Format("/v1/orderbooks/{0}/current", symbolId);
            return GetData<Orderbook>(url);
        }

        public List<Orderbook> Orderbooks_last_data(string symbolId, int limit) {
            var url = string.Format("/v1/orderbooks/{0}/latest?limit={1}", symbolId, limit);
            return GetData<List<Orderbook>>(url);
        }
        public List<Orderbook> Orderbooks_last_data(string symbolId) {
            var url = string.Format("/v1/orderbooks/{0}/latest", symbolId);
            return GetData<List<Orderbook>>(url);
        }

        public List<Orderbook> Orderbooks_historical_data(string symbolId, DateTime start, DateTime end, int limit) {
            var url = string.Format("/v1/orderbooks/{0}/history?time_start={1}&time_end={2}&limit={3}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat), limit);
            return GetData<List<Orderbook>>(url);
        }
        public List<Orderbook> Orderbooks_historical_data(string symbolId, DateTime start) {
            var url = string.Format("/v1/orderbooks/{0}/history?time_start={1}", symbolId, start.ToString(dateFormat));
            return GetData<List<Orderbook>>(url);
        }
        public List<Orderbook> Orderbooks_historical_data(string symbolId, DateTime start, DateTime end) {
            var url = string.Format("/v1/orderbooks/{0}/history?time_start={1}&time_end={2}", symbolId, start.ToString(dateFormat), end.ToString(dateFormat));
            return GetData<List<Orderbook>>(url);
        }
        public List<Orderbook> Orderbooks_historical_data(string symbolId, DateTime start, int limit) {
            var url = string.Format("/v1/orderbooks/{0}/history?time_start={1}&limit={2}", symbolId, start.ToString(dateFormat), limit);
            return GetData<List<Orderbook>>(url);
        }
    }

}
