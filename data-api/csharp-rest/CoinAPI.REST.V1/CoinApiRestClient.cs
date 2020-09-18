
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
        public string DateFormat => "yyyy-MM-ddTHH:mm:ss.fff";
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

        public List<Exchange> Metadata_list_exchanges()
        {
            return GetData<List<Exchange>>(CoinApiEndpointUrls.Exchanges());
        }

        public List<Asset> Metadata_list_assets()
        {
            return GetData<List<Asset>>(CoinApiEndpointUrls.Assets());
        }

        public List<Symbol> Metadata_list_symbols()
        {
            return GetData<List<Symbol>>(CoinApiEndpointUrls.Symbols());
        }

        public List<Symbol> Metadata_list_symbols_exchange(string exchangeId)
        {
            return GetData<List<Symbol>>(CoinApiEndpointUrls.Symbols(exchangeId));
        }

        public List<Icon> Metadata_list_assets_icons(int iconSize)
        {
            return GetData<List<Icon>>(CoinApiEndpointUrls.Assests_Icons(iconSize));
        }

        public List<Icon> Metadata_list_exchanges_icons(int iconSize)
        {
            return GetData<List<Icon>>(CoinApiEndpointUrls.Exchanges_Icons(iconSize));
        }

        public List<SymbolMapping> Metadata_symbol_mapping(string idExchange)
        {
            var url = CoinApiEndpointUrls.Symbols_Map(idExchange);
            return GetData<List<SymbolMapping>>(url);
        }

        public Exchangerate Exchange_rates_get_specific_rate(string baseId, string quoteId, DateTime time)
        {
            var url = CoinApiEndpointUrls.ExchangeRateSpecific(baseId, quoteId, time.ToString(DateFormat));
            return GetData<Exchangerate>(url);
        }
        public Exchangerate Exchange_rates_get_specific_rate(string baseId, string quoteId)
        {
            var url = CoinApiEndpointUrls.ExchangeRateSpecific(baseId, quoteId);
            return GetData<Exchangerate>(url);
        }

        public ExchangeCurrentrate Exchange_rates_get_all_current_rates(string baseId, bool invert = false)
        {
            var url = CoinApiEndpointUrls.ExchangeRate(baseId, invert);
            return GetData<ExchangeCurrentrate>(url);
        }

        public List<Period> Ohlcv_list_all_periods()
        {
            return GetData<List<Period>>(CoinApiEndpointUrls.Ohlcv_Periods());
        }


        public List<OHLCV> Ohlcv_latest_data(string symbolId, string periodId, int limit)
        {
            var url = CoinApiEndpointUrls.Ohlcv_LatestData(symbolId, periodId, limit);
            return GetData<List<OHLCV>>(url);
        }
        public List<OHLCV> Ohlcv_latest_data(string symbolId, string periodId)
        {
            var url = CoinApiEndpointUrls.Ohlcv_LatestData(symbolId, periodId);
            return GetData<List<OHLCV>>(url);
        }

        public List<OHLCV> Ohlcv_latest_asset_data(string assetBase, string assetQuote, string periodId)
        {
            var url = CoinApiEndpointUrls.Ohlcv_Asset_Latest(assetBase, assetQuote, periodId);
            return GetData<List<OHLCV>>(url);
        }

        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start, DateTime end, int limit)
        {
            var url = CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat), end.ToString(DateFormat), limit);
            return GetData<List<OHLCV>>(url);
        }
        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start, DateTime end)
        {
            var url = CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat), end.ToString(DateFormat));
            return GetData<List<OHLCV>>(url);
        }
        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start, int limit)
        {
            var url = CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat), limit);
            return GetData<List<OHLCV>>(url);
        }
        public List<OHLCV> Ohlcv_historical_data(string symbolId, string periodId, DateTime start)
        {
            var url = CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat));
            return GetData<List<OHLCV>>(url);
        }

        public List<Trade> Trades_latest_data_all()
        {
            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_Latest());
        }
        public List<Trade> Trades_latest_data_all(int limit)
        {
            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_Latest(limit));
        }


        public List<Trade> Trades_latest_data_symbol(string symbolId)
        {
            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_LatestSymbol(symbolId));
        }
        public List<Trade> Trades_latest_data_symbol(string symbolId, int limit)
        {
            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_LatestSymbol(symbolId, limit));
        }

        public List<Trade> Trades_historical_data(string symbolId, DateTime start, DateTime end, int limit)
        {

            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat), limit));
        }
        public List<Trade> Trades_historical_data(string symbolId, DateTime start)
        {
            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat)));
        }
        public List<Trade> Trades_historical_data(string symbolId, DateTime start, DateTime end)
        {

            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat)));
        }
        public List<Trade> Trades_historical_data(string symbolId, DateTime start, int limit)
        {
            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat), limit));
        }

        public List<Quote> Quotes_current_data_all()
        {

            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_Current());
        }

        public Quote Quotes_current_data_symbol(string symbolId)
        {

            return GetData<Quote>(CoinApiEndpointUrls.Quotes_CurrentSymbol(symbolId));
        }

        public List<Quote> Quotes_latest_data_all()
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_Latest());
        }
        public List<Quote> Quotes_latest_data_all(int limit)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_Latest(limit));
        }

        public List<Quote> Quotes_latest_data_symbol(string symbolId)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_LatestSymbol(symbolId));
        }
        public List<Quote> Quotes_latest_data_symbol(string symbolId, int limit)
        {

            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_LatestSymbol(symbolId, limit));
        }

        public List<Quote> Quotes_historical_data(string symbolId, DateTime start, DateTime end, int limit)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat), limit));
        }

        public List<Quote> Quotes_historical_data(string symbolId, DateTime start)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat)));
        }

        public List<Quote> Quotes_historical_data(string symbolId, DateTime start, DateTime end)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat)));
        }
        public List<Quote> Quotes_historical_data(string symbolId, DateTime start, int limit)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat), limit));

        }
        public List<Orderbook> Orderbooks_current_data_all_filtered_bitstamp()
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_CurrentFilteredBitstamp());
        }

        public Orderbook Orderbooks_current_data_symbol(string symbolId)
        {
            return GetData<Orderbook>(CoinApiEndpointUrls.Orderbooks_CurrentSymbol(symbolId));
        }

        public List<Orderbook> Orderbooks_last_data(string symbolId, int limit)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_LatestData(symbolId, limit));
        }
        public List<Orderbook> Orderbooks_last_data(string symbolId)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_LatestData(symbolId));
        }

        public List<Orderbook> Orderbooks_historical_data(string symbolId, DateTime start, DateTime end, int limit)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat), limit));
        }
        public List<Orderbook> Orderbooks_historical_data(string symbolId, DateTime start)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat)));
        }
        public List<Orderbook> Orderbooks_historical_data(string symbolId, DateTime start, DateTime end)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat)));
        }
        public List<Orderbook> Orderbooks_historical_data(string symbolId, DateTime start, int limit)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat), limit));
        }

        public List<Orderbook3> Orderbooks3_current_data_all_filtered_bitstamp()
        {
            return GetData<List<Orderbook3>>(CoinApiEndpointUrls.Orderbooks3_CurrentFilteredBitstamp());
        }

        public Orderbook3 Orderbooks3_current_data_symbol(string symbolId)
        {
            return GetData<Orderbook3>(CoinApiEndpointUrls.Orderbooks3_Current(symbolId));
        }
    }

}
