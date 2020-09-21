using CoinAPI.REST.V1.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;

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

        public EndpointCheckResult<List<Icon>> Metadata_list_assets_icons(int iconSize)
        {
            return HandleCheck(CoinApiEndpointUrls.Assests_Icons(iconSize), () =>
           {
               var assetsIcons = _coinApi.Metadata_list_assets_icons(iconSize);
               return (CheckDataAndSetStatus<Icon>(assetsIcons), assetsIcons);
           });
        }

        public EndpointCheckResult<List<Icon>> Metadata_list_exchanges_icons(int iconSize)
        {
            return HandleCheck(CoinApiEndpointUrls.Exchanges_Icons(iconSize), () =>
             {
                 var exhcangesIcons = _coinApi.Metadata_list_exchanges_icons(iconSize);
                 return (CheckDataAndSetStatus<Icon>(exhcangesIcons), exhcangesIcons);
             });
        }

        public EndpointCheckResult<List<Exchange>> Metadata_list_exchanges()
        {
            return HandleCheck(CoinApiEndpointUrls.Exchanges(), () =>
            {
                var exchanges = _coinApi.Metadata_list_exchanges();
                return (CheckDataAndSetStatus<Exchange>(exchanges), exchanges);
            });
        }

        public EndpointCheckResult<List<Asset>> Metadata_list_assets()
        {
            return HandleCheck(CoinApiEndpointUrls.Assets(), () =>
            {
                var assets = _coinApi.Metadata_list_assets();
                return (CheckDataAndSetStatus<Asset>(assets), assets);
            });
        }

        public EndpointCheckResult<Exchangerate> Exchange_rates_get_specific_rate(string baseId, string quoteId)
        {
            return HandleCheck(CoinApiEndpointUrls.ExchangeRateSpecific(baseId, quoteId), () =>
            {
                var exchange_rate = _coinApi.Exchange_rates_get_specific_rate(baseId, quoteId);
                return (CheckDataAndSetStatus<Exchangerate>(exchange_rate), exchange_rate);
            });
        }

        public EndpointCheckResult<Exchangerate> Exchange_rates_get_specific_rate(string baseId, string quoteId, DateTime time)
        {
            return HandleCheck(CoinApiEndpointUrls.ExchangeRateSpecific(baseId, quoteId, time.ToString(DateFormat)), () =>
            {
                var exchange_rate = _coinApi.Exchange_rates_get_specific_rate(baseId, quoteId, time);
                return (CheckDataAndSetStatus<Exchangerate>(exchange_rate), exchange_rate);
            });
        }

        public EndpointCheckResult<ExchangeCurrentrate> Exchange_rates_get_all_current_rates(string baseId, bool invert = false)
        {
            return HandleCheck(CoinApiEndpointUrls.ExchangeRate(baseId, invert), () =>
            {
                var current_rates = _coinApi.Exchange_rates_get_all_current_rates(baseId, invert);
                return (CheckDataAndSetStatus<ExchangeCurrentrate>(current_rates), current_rates);
            });
        }

        public EndpointCheckResult<List<Period>> Ohlcv_list_all_periods()
        {
            return HandleCheck(CoinApiEndpointUrls.Ohlcv_Periods(), () =>
            {
                var periods = _coinApi.Ohlcv_list_all_periods();
                return (CheckDataAndSetStatus<Period>(periods), periods);
            });
        }

        public EndpointCheckResult<List<OHLCV>> Ohlcv_latest_data(string symbolId, string periodId)
        {
            return HandleCheck(CoinApiEndpointUrls.Ohlcv_LatestData(symbolId, periodId), () =>
                {
                    var ohlcv = _coinApi.Ohlcv_latest_data(symbolId, periodId);
                    return (CheckDataAndSetStatus<OHLCV>(ohlcv), ohlcv);
                });
        }

        public EndpointCheckResult<List<OHLCV>> Ohlcv_historical_data(string symbolId, string periodId, DateTime start)
        {
            return HandleCheck(CoinApiEndpointUrls.Ohlcv_HistoricalData(symbolId, periodId, start.ToString(DateFormat)), () =>
            {
                var ohlcv_latest = _coinApi.Ohlcv_historical_data(symbolId, periodId, start);
                return (CheckDataAndSetStatus<OHLCV>(ohlcv_latest), ohlcv_latest);
            });
        }
        public EndpointCheckResult<List<Trade>> Trades_latest_data_all()
        {
            return HandleCheck(CoinApiEndpointUrls.Trades_Latest(), () =>
            {
                var latest_trades = _coinApi.Trades_latest_data_all();
                return (CheckDataAndSetStatus<Trade>(latest_trades), latest_trades);
            });
        }

        public EndpointCheckResult<List<Trade>> Trades_historical_data(string symbolId, DateTime start)
        {
            return HandleCheck(CoinApiEndpointUrls.Trades_HistoricalData(symbolId, start.ToString(DateFormat)), () =>
            {
                var historical_trades = _coinApi.Trades_historical_data(symbolId, start);
                return (CheckDataAndSetStatus<Trade>(historical_trades), historical_trades);
            });
        }

        public EndpointCheckResult<List<Trade>> Trades_latest_data_symbol(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Trades_LatestSymbol(symbolId), () =>
            {
                var latest_trades = _coinApi.Trades_latest_data_symbol(symbolId);
                return (CheckDataAndSetStatus<Trade>(latest_trades), latest_trades);
            });
        }

        public EndpointCheckResult<List<Quote>> Quotes_current_data_all()
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_Current(), () =>
            {
                var current_quotes = _coinApi.Quotes_current_data_all();
                return (CheckDataAndSetStatus<Quote>(current_quotes), current_quotes);
            });
        }

        public EndpointCheckResult<Quote> Quotes_current_data_symbol(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_CurrentSymbol(symbolId), () =>
            {
                var current_quote = _coinApi.Quotes_current_data_symbol(symbolId);
                return (CheckDataAndSetStatus<Quote>(current_quote), current_quote);
            });
        }

        public EndpointCheckResult<List<Quote>> Quotes_latest_data_all()
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_Latest(), () =>
            {
                var quotes_latest_data = _coinApi.Quotes_latest_data_all();
                return (CheckDataAndSetStatus<Quote>(quotes_latest_data), quotes_latest_data);
            });
        }

        public EndpointCheckResult<List<Quote>> Quotes_latest_data_symbol(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_LatestSymbol(symbolId), () =>
            {
                var quotes_latest_data_btc_usd = _coinApi.Quotes_latest_data_symbol(symbolId);
                return (CheckDataAndSetStatus<Quote>(quotes_latest_data_btc_usd), quotes_latest_data_btc_usd);
            });
        }

        public EndpointCheckResult<List<Quote>> Quotes_historical_data(string symbolId, DateTime start)
        {
            return HandleCheck(CoinApiEndpointUrls.Quotes_HistoricalData(symbolId, start.ToString(DateFormat)), () =>
            {
                var quotes_historical_data = _coinApi.Quotes_historical_data(symbolId, start);
                return (CheckDataAndSetStatus<Quote>(quotes_historical_data), quotes_historical_data);
            });
        }

        public EndpointCheckResult<List<Orderbook>> Orderbooks_current_data_all_filtered_bitstamp()
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks_CurrentFilteredBitstamp(), () =>
            {
                var orderbooks_current_data = _coinApi.Orderbooks_current_data_all_filtered_bitstamp();
                return (CheckDataAndSetStatus<Orderbook>(orderbooks_current_data), orderbooks_current_data);
            });
        }

        public EndpointCheckResult<Orderbook> Orderbooks_current_data_symbol(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks_CurrentSymbol(symbolId), () =>
            {
                var orderbooks_current_data_btc_usd = _coinApi.Orderbooks_current_data_symbol(symbolId);
                return (CheckDataAndSetStatus<Orderbook>(orderbooks_current_data_btc_usd), orderbooks_current_data_btc_usd);
            });
        }

        public EndpointCheckResult<List<Orderbook>> Orderbooks_last_data(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks_LatestData(symbolId), () =>
            {
                var orderbooks_latest_data_btc_usd = _coinApi.Orderbooks_last_data(symbolId);
                return (CheckDataAndSetStatus<Orderbook>(orderbooks_latest_data_btc_usd), orderbooks_latest_data_btc_usd);
            });
        }

        public EndpointCheckResult<List<Orderbook>> Orderbooks_historical_data(string symbolId, DateTime start)
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks_HistoricalData(symbolId, start.ToString(DateFormat)), () =>
            {
                var orderbooks_historical_data_btc_usd = _coinApi.Orderbooks_historical_data(symbolId, start);
                return (CheckDataAndSetStatus<Orderbook>(orderbooks_historical_data_btc_usd), orderbooks_historical_data_btc_usd);
            });
        }

        public EndpointCheckResult<List<Orderbook3>> Orderbooks3_current_data_all_filtered_bitstamp()
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks3_CurrentFilteredBitstamp(), () =>
            {
                var orderbooks3_current_data = _coinApi.Orderbooks3_current_data_all_filtered_bitstamp();
                return (CheckDataAndSetStatus<Orderbook3>(orderbooks3_current_data), orderbooks3_current_data);
            });
        }
        public EndpointCheckResult<Orderbook3> Orderbooks3_current_data_symbol(string symbolId)
        {
            return HandleCheck(CoinApiEndpointUrls.Orderbooks3_Current(symbolId), () =>
            {
                var orderbooks3_current_data_btc_usd = _coinApi.Orderbooks3_current_data_symbol(symbolId);
                return (CheckDataAndSetStatus<Orderbook3>(orderbooks3_current_data_btc_usd), orderbooks3_current_data_btc_usd);
            });
        }

        private CoinApiCheckStatusCode CheckDataAndSetStatus<T>(object data)
        {
            if (data == null)
                return CoinApiCheckStatusCode.BadData;

            if (data is IEnumerable<T> list && !list.Any())
                return CoinApiCheckStatusCode.BadData;

            return CoinApiCheckStatusCode.GoodResponse;
        }


        private EndpointCheckResult<T> HandleCheck<T>(string endpoint, Func<(CoinApiCheckStatusCode, T)> check)
        {
            var result = new EndpointCheckResult<T> { Endpoint = endpoint };
            try
            {
                (CoinApiCheckStatusCode status, T data) = check();
                result.StatusCode = status;
                result.Data = data;
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
