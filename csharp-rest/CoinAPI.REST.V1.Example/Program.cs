using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CoinAPI.REST.V1;

namespace CoinAPI.REST.V1.Example
{
    class Program
    {
        static void Main(string[] args)
        {
            var coinApi = new CoinApiRestClient("YOUR_API_KEY_HERE");
            Console.Write("Exchange:");
            Console.Write(Environment.NewLine);
            var exchange = coinApi.Metadata_list_exchanges();
            foreach (var item in exchange)
            {
                Console.Write("exchange_id:" + item.exchange_id);
                Console.Write(Environment.NewLine);
                Console.Write("website:" + item.website);
                Console.Write(Environment.NewLine);
                Console.Write("name:" + item.name);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("symbols:");
            Console.Write(Environment.NewLine);
            var symbols = coinApi.Metadata_list_symbols();
            foreach (var item in symbols)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("exchange_id:" + item.exchange_id);
                Console.Write(Environment.NewLine);
                Console.Write("symbol_type:" + item.symbol_type);
                Console.Write(Environment.NewLine);

                if (item.symbol_type == "OPTION")
                {
                    Console.Write("option_type_is_call:" + item.option_type_is_call);
                    Console.Write(Environment.NewLine);
                    Console.Write("option_strike_price:" + item.option_strike_price);
                    Console.Write(Environment.NewLine);
                    Console.Write("option_contract_unit:" + item.option_contract_unit);
                    Console.Write(Environment.NewLine);
                    Console.Write("option_exercise_style:" + item.option_exercise_style);
                    Console.Write(Environment.NewLine);
                    Console.Write("option_expiration_time:" + item.option_expiration_time);
                    Console.Write(Environment.NewLine);
                }

                if (item.symbol_type == "FUTURES")
                {
                    Console.Write("future_delivery_time:" + item.future_delivery_time);
                    Console.Write(Environment.NewLine);
                }

                Console.Write("asset_id_base:" + item.asset_id_base);
                Console.Write(Environment.NewLine);
                Console.Write("asset_id_quote:" + item.asset_id_quote);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.WriteLine($"Symbols mapping for BCEX: ");
            var mappingsList = coinApi.Metadata_symbol_mapping("BCEX");

            foreach(var mapping in mappingsList)
            {
                Console.WriteLine($"symbol_id_exchange: {mapping.symbol_id_exchange}");
                Console.WriteLine($"price_precision: {mapping.price_precision}");
                Console.WriteLine($"size_precision: {mapping.size_precision}");
            }

            Console.Write("Asset:");
            Console.Write(Environment.NewLine);
            var assets = coinApi.Metadata_list_assets();
            foreach (var item in assets)
            {
                Console.Write("asset_id:" + item.asset_id);
                Console.Write(Environment.NewLine);
                Console.Write("name:" + item.name);
                Console.Write(Environment.NewLine);
                Console.Write("type_is_crypto:" + item.type_is_crypto);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Exchangerate:");
            Console.Write(Environment.NewLine);
            var exchange_rate = coinApi.Exchange_rates_get_specific_rate("BTC", "USD");

            Console.Write("time:" + exchange_rate.time);
            Console.Write(Environment.NewLine);
            Console.Write("asset_id_base:" + exchange_rate.asset_id_base);
            Console.Write(Environment.NewLine);
            Console.Write("asset_id_quote:" + exchange_rate.asset_id_quote);
            Console.Write(Environment.NewLine);
            Console.Write("rate:" + exchange_rate.rate);
            Console.Write(Environment.NewLine);
            Console.Write("--------------------------------------------------------------------------------------------------------");
            Console.Write(Environment.NewLine);

            Console.Write("Exchangerate Last Week:");
            Console.Write(Environment.NewLine);
            var lastweek = DateTime.Now.AddDays(-7);
            var exchange_rate_last_week = coinApi.Exchange_rates_get_specific_rate("BTC", "USD", lastweek);
            Console.Write("time:" + exchange_rate_last_week.time);
            Console.Write(Environment.NewLine);
            Console.Write("asset_id_base:" + exchange_rate_last_week.asset_id_base);
            Console.Write(Environment.NewLine);
            Console.Write("asset_id_quote:" + exchange_rate_last_week.asset_id_quote);
            Console.Write(Environment.NewLine);
            Console.Write("rate:" + exchange_rate_last_week.rate);
            Console.Write(Environment.NewLine);
            Console.Write("--------------------------------------------------------------------------------------------------------");
            Console.Write(Environment.NewLine);

            Console.Write("Exchangerate current rates:");
            Console.Write(Environment.NewLine);
            var current_rates = coinApi.Exchange_rates_get_all_current_rates("BTC");

            Console.Write("Asset ID Base:" + current_rates.asset_id_base);
            Console.Write(Environment.NewLine);
            foreach (var item in current_rates.rates)
            {
                Console.Write("time:" + item.time);
                Console.Write(Environment.NewLine);
                Console.Write("asset_id_quote:" + item.asset_id_quote);
                Console.Write(Environment.NewLine);
                Console.Write("rate:" + item.rate);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Ohlcv list all periods:");
            Console.Write(Environment.NewLine);
            var periods = coinApi.Ohlcv_list_all_periods();
            foreach (var item in periods)
            {
                Console.Write("period_id:" + item.period_id);
                Console.Write(Environment.NewLine);
                Console.Write("length_seconds:" + item.length_seconds);
                Console.Write(Environment.NewLine);
                Console.Write("length_months:" + item.length_months);
                Console.Write(Environment.NewLine);
                Console.Write("unit_count:" + item.unit_count);
                Console.Write(Environment.NewLine);
                Console.Write("unit_name:" + item.unit_name);
                Console.Write(Environment.NewLine);
                Console.Write("display_name:" + item.display_name);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Ohlcv latest data:");
            Console.Write(Environment.NewLine);
            var ohlcv_latest = coinApi.Ohlcv_latest_data("BITSTAMP_SPOT_BTC_USD", "1MIN");

            foreach (var item in ohlcv_latest)
            {
                Console.Write("time_period_start:" + item.time_period_start);
                Console.Write(Environment.NewLine);
                Console.Write("time_period_end:" + item.time_period_end);
                Console.Write(Environment.NewLine);
                Console.Write("time_open:" + item.time_open);
                Console.Write(Environment.NewLine);
                Console.Write("time_close:" + item.time_close);
                Console.Write(Environment.NewLine);
                Console.Write("price_open:" + item.price_open);
                Console.Write(Environment.NewLine);
                Console.Write("price_high:" + item.price_high);
                Console.Write(Environment.NewLine);
                Console.Write("price_low:" + item.price_low);
                Console.Write(Environment.NewLine);
                Console.Write("price_close:" + item.price_close);
                Console.Write(Environment.NewLine);
                Console.Write("volume_traded:" + item.volume_traded);
                Console.Write(Environment.NewLine);
                Console.Write("trades_count:" + item.trades_count);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Ohlcv last year:");
            Console.Write(Environment.NewLine);
            var start_of_2016 = new DateTime(2016, 1, 1);
            var ohlcv_historical = coinApi.Ohlcv_historical_data("BITSTAMP_SPOT_BTC_USD", "1MIN", start_of_2016);
            foreach (var item in ohlcv_historical)
            {
                Console.Write("time_period_start:" + item.time_period_start);
                Console.Write(Environment.NewLine);
                Console.Write("time_period_end:" + item.time_period_end);
                Console.Write(Environment.NewLine);
                Console.Write("time_open:" + item.time_open);
                Console.Write(Environment.NewLine);
                Console.Write("time_close:" + item.time_close);
                Console.Write(Environment.NewLine);
                Console.Write("price_open:" + item.price_open);
                Console.Write(Environment.NewLine);
                Console.Write("price_high:" + item.price_high);
                Console.Write(Environment.NewLine);
                Console.Write("price_low:" + item.price_low);
                Console.Write(Environment.NewLine);
                Console.Write("price_close:" + item.price_close);
                Console.Write(Environment.NewLine);
                Console.Write("volume_traded:" + item.volume_traded);
                Console.Write(Environment.NewLine);
                Console.Write("trades_count:" + item.trades_count);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Trades latest data all:");
            Console.Write(Environment.NewLine);
            var latest_trades = coinApi.Trades_latest_data_all();

            foreach (var item in latest_trades)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);
                Console.Write("uuid:" + item.uuid);
                Console.Write(Environment.NewLine);
                Console.Write("price:" + item.price);
                Console.Write(Environment.NewLine);
                Console.Write("size:" + item.size);
                Console.Write(Environment.NewLine);
                Console.Write("taker_side:" + item.taker_side);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Trades latest data symbol:");
            Console.Write(Environment.NewLine);
            var latest_trades_doge = coinApi.Trades_latest_data_symbol("BITTREX_SPOT_BTC_DOGE");
            foreach (var item in latest_trades_doge)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);
                Console.Write("uuid:" + item.uuid);
                Console.Write(Environment.NewLine);
                Console.Write("price:" + item.price);
                Console.Write(Environment.NewLine);
                Console.Write("size:" + item.size);
                Console.Write(Environment.NewLine);
                Console.Write("taker_side:" + item.taker_side);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Trades historical data:");
            Console.Write(Environment.NewLine);
            var historical_trades_btc = coinApi.Trades_historical_data("BITSTAMP_SPOT_BTC_USD", start_of_2016);
            foreach (var item in historical_trades_btc)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);
                Console.Write("uuid:" + item.uuid);
                Console.Write(Environment.NewLine);
                Console.Write("price:" + item.price);
                Console.Write(Environment.NewLine);
                Console.Write("size:" + item.size);
                Console.Write(Environment.NewLine);
                Console.Write("taker_side:" + item.taker_side);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }
            Console.Write("Quotes current data all:");
            Console.Write(Environment.NewLine);
            var current_quotes = coinApi.Quotes_current_data_all();
            foreach (var item in current_quotes)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);
                Console.Write("ask_price:" + item.ask_price);
                Console.Write(Environment.NewLine);
                Console.Write("ask_size:" + item.ask_size);
                Console.Write(Environment.NewLine);
                Console.Write("bid_price:" + item.bid_price);
                Console.Write(Environment.NewLine);
                Console.Write("bid_size:" + item.bid_size);
                Console.Write(Environment.NewLine);
                //Console.Write("last_trade:" + item.last_trade);
                //Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }
            Console.Write("Quotes current data symbol:");
            Console.Write(Environment.NewLine);
            var current_quote_btc_usd = coinApi.Quotes_current_data_symbol("BITSTAMP_SPOT_BTC_USD");

            Console.Write("symbol_id:" + current_quote_btc_usd.symbol_id);
            Console.Write(Environment.NewLine);
            Console.Write("time_exchange:" + current_quote_btc_usd.time_exchange);
            Console.Write(Environment.NewLine);
            Console.Write("time_coinapi:" + current_quote_btc_usd.time_coinapi);
            Console.Write(Environment.NewLine);
            Console.Write("ask_price:" + current_quote_btc_usd.ask_price);
            Console.Write(Environment.NewLine);
            Console.Write("ask_size:" + current_quote_btc_usd.ask_size);
            Console.Write(Environment.NewLine);
            Console.Write("bid_price:" + current_quote_btc_usd.bid_price);
            Console.Write(Environment.NewLine);
            Console.Write("bid_size:" + current_quote_btc_usd.bid_size);
            Console.Write(Environment.NewLine);
            if (current_quote_btc_usd.last_trade != null)
            {
                Console.Write("last trade:");
                Console.Write(Environment.NewLine);
                Console.Write("symbol_id:" + current_quote_btc_usd.last_trade.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + current_quote_btc_usd.last_trade.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + current_quote_btc_usd.last_trade.time_coinapi);
                Console.Write(Environment.NewLine);
                Console.Write("uuid:" + current_quote_btc_usd.last_trade.uuid);
                Console.Write(Environment.NewLine);
                Console.Write("price:" + current_quote_btc_usd.last_trade.price);
                Console.Write(Environment.NewLine);
                Console.Write("size:" + current_quote_btc_usd.last_trade.size);
                Console.Write(Environment.NewLine);
                Console.Write("taker_side:" + current_quote_btc_usd.last_trade.taker_side);
                Console.Write(Environment.NewLine);
            }
            Console.Write("--------------------------------------------------------------------------------------------------------");
            Console.Write(Environment.NewLine);

            Console.Write("Quotes latest data all:");
            Console.Write(Environment.NewLine);
            var quotes_latest_data = coinApi.Quotes_latest_data_all();
            foreach (var item in quotes_latest_data)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);
                Console.Write("ask_price:" + item.ask_price);
                Console.Write(Environment.NewLine);
                Console.Write("ask_size:" + item.ask_size);
                Console.Write(Environment.NewLine);
                Console.Write("bid_price:" + item.bid_price);
                Console.Write(Environment.NewLine);
                Console.Write("bid_size:" + item.bid_size);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }
            Console.Write("Quotes latest data symbol:");
            Console.Write(Environment.NewLine);
            var quotes_latest_data_btc_usd = coinApi.Quotes_latest_data_symbol("BITSTAMP_SPOT_BTC_USD");
            foreach (var item in quotes_latest_data_btc_usd)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);
                Console.Write("ask_price:" + item.ask_price);
                Console.Write(Environment.NewLine);
                Console.Write("ask_size:" + item.ask_size);
                Console.Write(Environment.NewLine);
                Console.Write("bid_price:" + item.bid_price);
                Console.Write(Environment.NewLine);
                Console.Write("bid_size:" + item.bid_size);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }
            Console.Write("Quotes historical data:");
            Console.Write(Environment.NewLine);
            var quotes_historical_data_btc_usd = coinApi.Quotes_historical_data("BITSTAMP_SPOT_BTC_USD", start_of_2016);
            foreach (var item in quotes_historical_data_btc_usd)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);
                Console.Write("ask_price:" + item.ask_price);
                Console.Write(Environment.NewLine);
                Console.Write("ask_size:" + item.ask_size);
                Console.Write(Environment.NewLine);
                Console.Write("bid_price:" + item.bid_price);
                Console.Write(Environment.NewLine);
                Console.Write("bid_size:" + item.bid_size);
                Console.Write(Environment.NewLine);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }
            Console.Write("Orderbooks current data all:");
            Console.Write(Environment.NewLine);
            var orderbooks_current_data = coinApi.Orderbooks_current_data_all();
            foreach (var item in orderbooks_current_data)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);

                Console.Write("Asks:");
                Console.Write(Environment.NewLine);
                foreach (var itm in item.asks)
                {
                    Console.Write("price:" + itm.price);
                    Console.Write(Environment.NewLine);
                    Console.Write("size:" + itm.size);
                    Console.Write(Environment.NewLine);

                }
                Console.Write("Bids:");
                Console.Write(Environment.NewLine);
                foreach (var itm in item.bids)
                {
                    Console.Write("price:" + itm.price);
                    Console.Write(Environment.NewLine);
                    Console.Write("size:" + itm.size);
                    Console.Write(Environment.NewLine);

                }

                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Orderbooks current data symbol:");
            Console.Write(Environment.NewLine);
            var orderbooks_current_data_btc_usd = coinApi.Orderbooks_current_data_symbol("BITSTAMP_SPOT_BTC_USD");
            Console.Write("symbol_id:" + orderbooks_current_data_btc_usd.symbol_id);
            Console.Write(Environment.NewLine);
            Console.Write("time_exchange:" + orderbooks_current_data_btc_usd.time_exchange);
            Console.Write(Environment.NewLine);
            Console.Write("time_coinapi:" + orderbooks_current_data_btc_usd.time_coinapi);
            Console.Write(Environment.NewLine);

            Console.Write("Asks:");
            Console.Write(Environment.NewLine);
            foreach (var itm in orderbooks_current_data_btc_usd.asks)
            {
                Console.Write("price:" + itm.price);
                Console.Write(Environment.NewLine);
                Console.Write("size:" + itm.size);
                Console.Write(Environment.NewLine);

            }
            Console.Write("Bids:");
            Console.Write(Environment.NewLine);
            foreach (var itm in orderbooks_current_data_btc_usd.bids)
            {
                Console.Write("price:" + itm.price);
                Console.Write(Environment.NewLine);
                Console.Write("size:" + itm.size);
                Console.Write(Environment.NewLine);

            }

            Console.Write("--------------------------------------------------------------------------------------------------------");
            Console.Write(Environment.NewLine);

            Console.Write("Orderbooks last data:");
            Console.Write(Environment.NewLine);
            var orderbooks_latest_data_btc_usd = coinApi.Orderbooks_last_data("BITSTAMP_SPOT_BTC_USD");
            foreach (var item in orderbooks_latest_data_btc_usd)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);

                Console.Write("Asks:");
                Console.Write(Environment.NewLine);
                foreach (var itm in item.asks)
                {
                    Console.Write("price:" + itm.price);
                    Console.Write(Environment.NewLine);
                    Console.Write("size:" + itm.size);
                    Console.Write(Environment.NewLine);

                }
                Console.Write("Bids:");
                Console.Write(Environment.NewLine);
                foreach (var itm in item.bids)
                {
                    Console.Write("price:" + itm.price);
                    Console.Write(Environment.NewLine);
                    Console.Write("size:" + itm.size);
                    Console.Write(Environment.NewLine);

                }

                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Orderbooks historical data:");
            Console.Write(Environment.NewLine);
            var orderbooks_historical_data_btc_usd = coinApi.Orderbooks_historical_data("BITSTAMP_SPOT_BTC_USD", start_of_2016);
            foreach (var item in orderbooks_historical_data_btc_usd)
            {
                Console.Write("symbol_id:" + item.symbol_id);
                Console.Write(Environment.NewLine);
                Console.Write("time_exchange:" + item.time_exchange);
                Console.Write(Environment.NewLine);
                Console.Write("time_coinapi:" + item.time_coinapi);
                Console.Write(Environment.NewLine);

                Console.Write("Asks:");
                Console.Write(Environment.NewLine);
                foreach (var itm in item.asks)
                {
                    Console.Write("price:" + itm.price);
                    Console.Write(Environment.NewLine);
                    Console.Write("size:" + itm.size);
                    Console.Write(Environment.NewLine);

                }
                Console.Write("Bids:");
                Console.Write(Environment.NewLine);
                foreach (var itm in item.bids)
                {
                    Console.Write("price:" + itm.price);
                    Console.Write(Environment.NewLine);
                    Console.Write("size:" + itm.size);
                    Console.Write(Environment.NewLine);

                }

                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.ReadLine();
        }
    }
}
