using CoinAPI.REST.V1.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CoinAPI.REST.V1.Example
{
    public class CoinApiRestEndpointsTester
    {
        private CoinApiRestClient _coinApi;
        private string DateFormat => _coinApi.DateFormat;

        public Action<string> Log { get; set; }

        public CoinApiRestEndpointsTester(string apikey, bool sandbox = false)
        {
            _coinApi = new CoinApiRestClient(apikey, sandbox);
        }

        public CoinApiRestEndpointsTester(string apikey, string url)
        {
            _coinApi = new CoinApiRestClient(apikey, url);
        }

        public Task<EndpointCheckResult<List<Icon>>> Metadata_list_assets_iconsAsync(int iconSize)
        {
            return HandleCheck(CoinApiEndpointUrls.Assests_Icons(iconSize), _coinApi.Metadata_list_assets_iconsAsync(iconSize));
        }

        public Task<EndpointCheckResult<List<Icon>>> Metadata_list_exchanges_iconsAsync(int iconSize)
        {
            return HandleCheck(CoinApiEndpointUrls.Exchanges_Icons(iconSize), _coinApi.Metadata_list_exchanges_iconsAsync(iconSize));
        }

        public Task<EndpointCheckResult<List<Exchange>>> Metadata_list_exchangesAsync()
        {
            return HandleCheck(CoinApiEndpointUrls.Exchanges(), _coinApi.Metadata_list_exchanges());
        }

        public Task<EndpointCheckResult<List<Asset>>> Metadata_list_assetsAsync()
        {
            return HandleCheck(CoinApiEndpointUrls.Assets(), _coinApi.Metadata_list_assetsAsync());
        }

        public Task<EndpointCheckResult<Exchangerate>> Exchange_rates_get_specific_rateAsync(string baseId, string quoteId)
        {
            return HandleCheck(CoinApiEndpointUrls.ExchangeRateSpecific(baseId, quoteId), _coinApi.Exchange_rates_get_specific_rateAsync(baseId, quoteId));
        }

        public Task<EndpointCheckResult<Exchangerate>> Exchange_rates_get_specific_rateAsync(string baseId, string quoteId, DateTime time)
        {
            return HandleCheck(CoinApiEndpointUrls.ExchangeRateSpecific(baseId, quoteId, time.ToString(DateFormat)), _coinApi.Exchange_rates_get_specific_rateAsync(baseId, quoteId, time));
        }

        public Task<EndpointCheckResult<ExchangeCurrentrate>> Exchange_rates_get_all_current_ratesAsync(string baseId, bool invert = false)
        {
            return HandleCheck(CoinApiEndpointUrls.ExchangeRate(baseId, invert), _coinApi.Exchange_rates_get_all_current_ratesAsync(baseId, invert));
        }

        public Task<EndpointCheckResult<List<Period>>> Ohlcv_list_all_periodsAsync()
        {
            return HandleCheck(CoinApiEndpointUrls.Ohlcv_Periods(), _coinApi.Ohlcv_list_all_periodsAsync());
        }

        public Task<EndpointCheckResult<List<OHLCV>>> Ohlcv_latest_dataAsync(string symbolId, string periodId)
        {
            return HandleCheck(CoinApiEndpointUrls.Ohlcv_LatestData(symbolId, periodId), _coinApi.Ohlcv_latest_dataAsync(symbolId, periodId));
        }

        public Task<EndpointCheckResult<List<OHLCV>>> Ohlcv_historical_dataAsync(string symbolId, string periodId, DateTime start)
        {
            return HandleCheck(CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat)), _coinApi.Ohlcv_historical_dataAsync(symbolId, periodId, start));
        }
        public Task<EndpointCheckResult<List<Trade>>> Trades_latest_data_allAsync()
        {
            return HandleCheck(CoinApiEndpointUrls.Trades_Latest(), _coinApi.Trades_latest_data_allAsync());
        }

        public Task<EndpointCheckResult<List<Trade>>> Trades_historical_dataAsync(string symbolId, DateTime start)
        {
            return HandleCheck(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat)), _coinApi.Trades_historical_dataAsync(symbolId, start));
        }

        public Task<EndpointCheckResult<List<Trade>>> Trades_latest_data_symbolAsync(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Trades_LatestSymbol(symbolId), _coinApi.Trades_latest_data_symbolAsync(symbolId));
        }

        public Task<EndpointCheckResult<List<Quote>>> Quotes_current_data_allAsync()
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_Current(), _coinApi.Quotes_current_data_allAsync());
        }

        public Task<EndpointCheckResult<Quote>> Quotes_current_data_symbolAsync(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_CurrentSymbol(symbolId), _coinApi.Quotes_current_data_symbolAsync(symbolId));
        }

        public Task<EndpointCheckResult<List<Quote>>> Quotes_latest_data_allAsync()
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_Latest(), _coinApi.Quotes_latest_data_allAsync());
        }

        public Task<EndpointCheckResult<List<Quote>>> Quotes_latest_data_symbolAsync(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_LatestSymbol(symbolId), _coinApi.Quotes_latest_data_symbolAsync(symbolId));
        }

        public Task<EndpointCheckResult<List<Quote>>> Quotes_historical_dataAsync(string symbolId, DateTime start)
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat)), _coinApi.Quotes_historical_dataAsync(symbolId, start));
        }

        public Task<EndpointCheckResult<List<Orderbook>>> Orderbooks_current_data_all_filtered_bitstampAsync()
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks_CurrentFilteredBitstamp(), _coinApi.Orderbooks_current_data_all_filtered_bitstampAsync());
        }

        public Task<EndpointCheckResult<Orderbook>> Orderbooks_current_data_symbolAsync(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks_CurrentSymbol(symbolId), _coinApi.Orderbooks_current_data_symbolAsync(symbolId));
        }

        public Task<EndpointCheckResult<List<Orderbook>>> Orderbooks_last_dataAsync(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks_LatestData(symbolId), _coinApi.Orderbooks_last_dataAsync(symbolId));
        }

        public Task<EndpointCheckResult<List<Orderbook>>> Orderbooks_historical_dataAsync(string symbolId, DateTime start)
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat)), _coinApi.Orderbooks_historical_dataAsync(symbolId, start));
        }


        public Task<EndpointCheckResult<List<Orderbook3>>> Orderbooks3_current_data_all_filtered_bitstampAsync()
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks3_CurrentFilteredBitstamp(), _coinApi.Orderbooks3_current_data_all_filtered_bitstampAsync());
        }

        public Task<EndpointCheckResult<Orderbook3>> Orderbooks3_current_data_symbolAsync(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks3_Current(symbolId), _coinApi.Orderbooks3_current_data_symbolAsync(symbolId));
        }

        private async Task<EndpointCheckResult<T>> HandleCheck<T>(string endpoint, Task<T> data)
        {
            var result = new EndpointCheckResult<T> { Endpoint = endpoint };
            try
            {
                result.Data = await data;
                result.StatusCode = CoinApiCheckStatusCode.GoodResponse;

                if (data == null)
                    result.StatusCode = CoinApiCheckStatusCode.BadData;

                if (data is IEnumerable<T> list && !list.Any())
                    result.StatusCode = CoinApiCheckStatusCode.BadData;
            }
            catch (Exception exception)
            {
                result.StatusCode = CoinApiCheckStatusCode.ExceptionThrown;
                Log?.Invoke($"Endpoint {endpoint} check failed. Exception thrown: {exception.Message}");
                exception.Data.Add("Result", result);
                throw exception;
            }
            return result;
        }
    }
}
