﻿
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using CoinAPI.REST.V1.Exceptions;
using CoinAPI.REST.V1.DataModels;
using System.Diagnostics;
using System.Linq;

namespace CoinAPI.REST.V1 {
    public class CoinApiRestClient
    {
        private string apikey;
        private string dateFormat = "yyyy-MM-ddTHH:mm:ss.fff";
        private string WebUrl = "http://hdc1-enc-02-bay-01.bbxt.svisstack.com:800";

        public CoinApiRestClient(string apikey, bool sandbox = false)
        {
            this.apikey = apikey;
			if (sandbox)
			{
				WebUrl = "https://rest-sandbox.coinapi.io";
			}
        }

        public CoinApiRestClient(string apikey, string url)
        {
            this.apikey = apikey;
            this.WebUrl = url.TrimEnd('/');
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

                        HttpResponseMessage response = null;
                        var swl = new List<long>();
                        for (int idx = 0; idx < 10; idx++)
                        {
                            var sw = new Stopwatch();
                            sw.Start();
                            response = client.GetAsync(WebUrl + url).Result;
                            sw.Stop();
                            swl.Add(sw.ElapsedMilliseconds);
                        }

                        var link = WebUrl + url;
                        if (!link.Contains("?"))
                        {
                            link = $"{link}?apikey={apikey};{swl.Min()};{(int)Math.Round(swl.Average(), 0)};{swl.Max()}";
                        }
                        else
                        {
                            link = $"{link}&apikey={apikey};{swl.Min()};{(int)Math.Round(swl.Average(), 0)};{swl.Max()}";
                        }
                        Debug.WriteLine(link);

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

        public List<Symbol> Metadata_list_symbols_exchange(string exchangeId)
        {
            return GetData<List<Symbol>>($"/v1/symbols/{exchangeId}");
        }

        public List<Icon> Metadata_list_assets_icons(int iconSize)
        {
            return GetData<List<Icon>>($"/v1/assets/icons/{iconSize}");
        }

        public List<Icon> Metadata_list_exchanges_icons(int iconSize)
        {
            return GetData<List<Icon>>($"/v1/exchanges/icons/{iconSize}");
        }

        public List<SymbolMapping> Metadata_symbol_mapping(string idExchange)
        {
            var url = $"/v1/symbols/map/{idExchange}";
            return GetData<List<SymbolMapping>>(url);
        }

        public Exchangerate Exchange_rates_get_specific_rate(string baseId, string quoteId, DateTime time) {
            var url = string.Format("/v1/exchangerate/{0}/{1}?time={2}", baseId, quoteId, time.ToString(dateFormat));
            return GetData<Exchangerate>(url);
        }
        public Exchangerate Exchange_rates_get_specific_rate(string baseId, string quoteId) {
            var url = string.Format("/v1/exchangerate/{0}/{1}", baseId, quoteId);
            return GetData<Exchangerate>(url);
        }

        public ExchangeCurrentrate Exchange_rates_get_all_current_rates(string baseId, bool invert = false) {
            var url = string.Format("/v1/exchangerate/{0}?invert={1}", baseId, invert);
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

        public List<OHLCV> Ohlcv_latest_asset_data(string assetBase, string assetQuote, string periodId)
        {
            var url = string.Format("/v1/ohlcv/{0}/{1}/latest?period_id={2}", assetBase, assetQuote, periodId);
            return GetData<List<OHLCV>>(url);
        }

        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start, DateTime end, int limit) {
            var url = string.Format("/v1/ohlcv/{0}/history?period_id={1}&time_start={2}&time_end={3}&limit={4}", symbolId, periodId, start.ToString(dateFormat), end.ToString(dateFormat), limit);
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
        public List<Orderbook> Orderbooks_current_data_all_filtered_bitstamp() {
            var url = "/v1/orderbooks/current?filter_symbol_id=BITSTAMP";
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

        public List<Orderbook3> Orderbooks3_current_data_all_filtered_bitstamp()
        {
            var url = "/v1/orderbooks3/current?filter_symbol_id=BITSTAMP";
            return GetData<List<Orderbook3>>(url);
        }

        public Orderbook3 Orderbooks3_current_data_symbol(string symbolId)
        {
            var url = string.Format("/v1/orderbooks3/{0}/current", symbolId);
            return GetData<Orderbook3>(url);
        }
    }

}
