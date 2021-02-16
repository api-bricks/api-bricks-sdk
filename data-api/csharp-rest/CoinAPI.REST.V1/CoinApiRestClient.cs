
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using CoinAPI.REST.V1.Exceptions;
using CoinAPI.REST.V1.DataModels;
using System.Threading.Tasks;

namespace CoinAPI.REST.V1
{
    public class CoinApiRestClient
    {              
        private string apikey;
        public string DateFormat => "yyyy-MM-ddTHH:mm:ss.fff";
        private string WebUrl = "https://rest.coinapi.io";

        public CoinApiRestClient(string apikey, bool sandbox = false)
        {
            this.apikey = apikey;
            if (sandbox)
            {
                WebUrl = "https://rest-sandbox.coinapi.io";
            }
            this.WebUrl = WebUrl.TrimEnd('/');
        }

        public CoinApiRestClient(string apikey, string url)
        {
            this.apikey = apikey;
            this.WebUrl = url.TrimEnd('/');
        }

        private async Task<T> GetData<T>(string url)
        {
            try
            {
                using (var handler = new HttpClientHandler())
                {
                    handler.AutomaticDecompression = DecompressionMethods.GZip | DecompressionMethods.Deflate;
                    using (var client = new HttpClient(handler, false))
                    {
                        client.DefaultRequestHeaders.Add("X-CoinAPI-Key", apikey);

                        HttpResponseMessage response = await client.GetAsync(WebUrl + url);

                        if (!response.IsSuccessStatusCode)
                            await RaiseError(response);

                        return await Deserialize<T>(response);
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

        private static async Task RaiseError(HttpResponseMessage response)
        {
            var message = (await Deserialize<ErrorMessage>(response)).message;

            switch ((int)response.StatusCode)
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

        private static async Task<T> Deserialize<T>(HttpResponseMessage responseMessage)
        {
            var responseString = await responseMessage.Content.ReadAsStringAsync();
            var data = JsonConvert.DeserializeObject<T>(responseString);
            return data;
        }

        public Task<List<Exchange>> Metadata_list_exchangesAsync()
        {
            return GetData<List<Exchange>>(CoinApiEndpointUrls.Exchanges());
        }

        public Task<List<Asset>> Metadata_list_assetsAsync()
        {
            return GetData<List<Asset>>(CoinApiEndpointUrls.Assets());
        }

        public Task<List<Symbol>> Metadata_list_symbolsAsync()
        {
            return GetData<List<Symbol>>(CoinApiEndpointUrls.Symbols());
        }

        public Task<List<Symbol>> Metadata_list_symbols_exchangeAsync(string exchangeId)
        {
            return GetData<List<Symbol>>(CoinApiEndpointUrls.Symbols(exchangeId));
        }

        public Task<List<Icon>> Metadata_list_assets_iconsAsync(int iconSize)
        {
            return GetData<List<Icon>>(CoinApiEndpointUrls.Assests_Icons(iconSize));
        }

        public Task<List<Icon>> Metadata_list_exchanges_iconsAsync(int iconSize)
        {
            return GetData<List<Icon>>(CoinApiEndpointUrls.Exchanges_Icons(iconSize));
        }

        public Task<List<SymbolMapping>> Metadata_symbol_mappingAsync(string idExchange)
        {
            var url = CoinApiEndpointUrls.Symbols_Map(idExchange);
            return GetData<List<SymbolMapping>>(url);
        }

        public Task<Exchangerate> Exchange_rates_get_specific_rateAsync(string baseId, string quoteId, DateTime time)
        {
            var url = CoinApiEndpointUrls.ExchangeRateSpecific(baseId, quoteId, time.ToString(DateFormat));
            return GetData<Exchangerate>(url);
        }
        public Task<Exchangerate> Exchange_rates_get_specific_rateAsync(string baseId, string quoteId)
        {
            var url = CoinApiEndpointUrls.ExchangeRateSpecific(baseId, quoteId);
            return GetData<Exchangerate>(url);
        }

        public Task<ExchangeCurrentrate> Exchange_rates_get_all_current_ratesAsync(string baseId, bool invert = false)
        {
            var url = CoinApiEndpointUrls.ExchangeRate(baseId, invert);
            return GetData<ExchangeCurrentrate>(url);
        }

        public Task<List<Period>> Ohlcv_list_all_periodsAsync()
        {
            var url = CoinApiEndpointUrls.Ohlcv_Periods();
            return GetData<List<Period>>(url);
        }


        public Task<List<OHLCV>> Ohlcv_latest_dataAsync(string symbolId, string periodId, int limit)
        {
            var url = CoinApiEndpointUrls.Ohlcv_LatestData(symbolId, periodId, limit);
            return GetData<List<OHLCV>>(url);
        }
        public Task<List<OHLCV>> Ohlcv_latest_dataAsync(string symbolId, string periodId)
        {
            var url = CoinApiEndpointUrls.Ohlcv_LatestData(symbolId, periodId);
            return GetData<List<OHLCV>>(url);
        }

        public Task<List<OHLCV>> Ohlcv_latest_asset_dataAsync(string assetBase, string assetQuote, string periodId)
        {
            var url = CoinApiEndpointUrls.Ohlcv_Asset_Latest(assetBase, assetQuote, periodId);
            return GetData<List<OHLCV>>(url);
        }

        public Task<List<OHLCV>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start, DateTime end, int limit)
        {
            var url = CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat), end.ToString(DateFormat), limit);
            return GetData<List<OHLCV>>(url);
        }
        public Task<List<OHLCV>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start, DateTime end)
        {
            var url = CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat), end.ToString(DateFormat));
            return GetData<List<OHLCV>>(url);
        }
        public Task<List<OHLCV>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start, int limit)
        {
            var url = CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat), limit);
            return GetData<List<OHLCV>>(url);
        }
        public Task<List<OHLCV>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start)
        {
            var url = CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat));
            return GetData<List<OHLCV>>(url);
        }

        public Task<List<Trade>> Trades_latest_data_allAsync()
        {
            var url = CoinApiEndpointUrls.Trades_Latest();
            return GetData<List<Trade>>(url);
        }
        public Task<List<Trade>> Trades_latest_data_allAsync(int limit)
        {
            var url = CoinApiEndpointUrls.Trades_Latest(limit);
            return GetData<List<Trade>>(url);
        }


        public Task<List<Trade>> Trades_latest_data_symbolAsync(string symbolId)
        {
            var url = CoinApiEndpointUrls.Trades_LatestSymbol(symbolId);
            return GetData<List<Trade>>(url);
        }
        public Task<List<Trade>> Trades_latest_data_symbolAsync(string symbolId, int limit)
        {
            var url = CoinApiEndpointUrls.Trades_LatestSymbol(symbolId, limit);
            return GetData<List<Trade>>(url);
        }

        public Task<List<Trade>> Trades_historical_dataAsync(string symbolId, DateTime start, DateTime end, int limit)
        {

            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat), limit));
        }
        public Task<List<Trade>> Trades_historical_dataAsync(string symbolId, DateTime start)
        {
            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat)));
        }
        public Task<List<Trade>> Trades_historical_dataAsync(string symbolId, DateTime start, DateTime end)
        {

            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat)));
        }
        public Task<List<Trade>> Trades_historical_dataAsync(string symbolId, DateTime start, int limit)
        {
            return GetData<List<Trade>>(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat), limit));
        }

        public Task<List<Quote>> Quotes_current_data_allAsync()
        {
            var url = CoinApiEndpointUrls.Quotes_Current();
            return GetData<List<Quote>>(url);
        }

        public Task<Quote> Quotes_current_data_symbolAsync(string symbolId)
        {
            var url = CoinApiEndpointUrls.Quotes_CurrentSymbol(symbolId);
            return GetData<Quote>(url);
        }

        public Task<List<Quote>> Quotes_latest_data_allAsync()
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_Latest());
        }
        public Task<List<Quote>> Quotes_latest_data_allAsync(int limit)
        {
            var url = CoinApiEndpointUrls.Quotes_Latest(limit);
            return GetData<List<Quote>>(url);
        }

        public Task<List<Quote>> Quotes_latest_data_symbolAsync(string symbolId)
        {
            var url = CoinApiEndpointUrls.Quotes_LatestSymbol(symbolId);
            return GetData<List<Quote>>(url);
        }
        public Task<List<Quote>> Quotes_latest_data_symbolAsync(string symbolId, int limit)
        {
            var url = CoinApiEndpointUrls.Quotes_LatestSymbol(symbolId, limit);
            return GetData<List<Quote>>(url);
        }

        public Task<List<Quote>> Quotes_historical_dataAsync(string symbolId, DateTime start, DateTime end, int limit)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat), limit));
        }
        public Task<List<Quote>> Quotes_historical_dataAsync(string symbolId, DateTime start)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat)));
        }
        public Task<List<Quote>> Quotes_historical_dataAsync(string symbolId, DateTime start, DateTime end)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat)));
        }
        public Task<List<Quote>> Quotes_historical_dataAsync(string symbolId, DateTime start, int limit)
        {
            return GetData<List<Quote>>(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat), limit));

        }
        public Task<List<Orderbook>> Orderbooks_current_data_all_filtered_bitstampAsync()
        {
            var url = CoinApiEndpointUrls.Orderbooks_CurrentFilteredBitstamp();
            return GetData<List<Orderbook>>(url);
        }

        public Task<Orderbook> Orderbooks_current_data_symbolAsync(string symbolId)
        {
            var url = CoinApiEndpointUrls.Orderbooks_CurrentSymbol(symbolId);
            return GetData<Orderbook>(url);
        }

        public Task<List<Orderbook>> Orderbooks_last_dataAsync(string symbolId, int limit)
        {
            var url = CoinApiEndpointUrls.Orderbooks_LatestData(symbolId, limit);
            return GetData<List<Orderbook>>(url);
        }
        public Task<List<Orderbook>> Orderbooks_last_dataAsync(string symbolId)
        {
            var url = CoinApiEndpointUrls.Orderbooks_LatestData(symbolId);
            return GetData<List<Orderbook>>(url);
        }

        public Task<List<Orderbook>> Orderbooks_historical_dataAsync(string symbolId, DateTime start, DateTime end, int limit)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat), limit));
        }
        public Task<List<Orderbook>> Orderbooks_historical_dataAsync(string symbolId, DateTime start)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat)));
        }
        public Task<List<Orderbook>> Orderbooks_historical_dataAsync(string symbolId, DateTime start, DateTime end)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat), end.ToString(DateFormat)));
        }
        public Task<List<Orderbook>> Orderbooks_historical_dataAsync(string symbolId, DateTime start, int limit)
        {
            return GetData<List<Orderbook>>(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat), limit));
        }

        public Task<List<Orderbook3>> Orderbooks3_current_data_all_filtered_bitstampAsync()
        {
            return GetData<List<Orderbook3>>(CoinApiEndpointUrls.Orderbooks3_CurrentFilteredBitstamp());
        }

        public Task<Orderbook3> Orderbooks3_current_data_symbolAsync(string symbolId)
        {
            return GetData<Orderbook3>(CoinApiEndpointUrls.Orderbooks3_Current(symbolId));
        }
    }

}
