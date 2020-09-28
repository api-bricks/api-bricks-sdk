﻿using System;
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
            var coinApiEndpointTester = new CoinApiRestEndpointsTester("4FAB4B58-9D8F-4CFF-9FB3-83833109584E")
            {
                Log = s => Console.WriteLine(s)
            };

            Console.WriteLine("Assets with icons");
            var assetsIcons = coinApiEndpointTester.Metadata_list_assets_iconsAsync(32).GetAwaiter().GetResult();
            foreach (var assetIcon in assetsIcons.Data)
            {
                Console.WriteLine($"asset id = {assetIcon.asset_id} iconUrl = {assetIcon.url}");
            }
                        
            Console.WriteLine("Exchanges with icons");
            var exhcangesIcons =  coinApiEndpointTester.Metadata_list_exchanges_iconsAsync(32).GetAwaiter().GetResult();
            foreach (var exchaingeIcon in exhcangesIcons.Data)
            {
                Console.WriteLine($"exchange id = {exchaingeIcon.exchange_id} iconUrl = {exchaingeIcon.url}");
            }

            Console.Write("Exchange:");
            Console.Write(Environment.NewLine);
            var exchange =  coinApiEndpointTester.Metadata_list_exchangesAsync().GetAwaiter().GetResult();
            foreach (var item in exchange.Data)
            {
                Console.Write("exchange_id:" + item.exchange_id);
                Console.Write(Environment.NewLine);
                Console.Write("website:" + item.website);
                Console.Write(Environment.NewLine);
                Console.Write("name:" + item.name);
                Console.Write(Environment.NewLine);
                Console.WriteLine("volume_1day_usd:" + item.volume_1day_usd);
                Console.WriteLine("volume_1hrs_usd:" + item.volume_1hrs_usd);
                Console.WriteLine("volume_1mth_usd:" + item.volume_1mth_usd);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            //Console.Write("symbols:");
            //Console.Write(Environment.NewLine);
            //var symbols = coinApi.Metadata_list_symbols();
            //foreach (var item in symbols)
            //{
            //    Console.Write("symbol_id:" + item.symbol_id);
            //    Console.Write(Environment.NewLine);
            //    Console.Write("exchange_id:" + item.exchange_id);
            //    Console.Write(Environment.NewLine);
            //    Console.Write("symbol_type:" + item.symbol_type);
            //    Console.Write(Environment.NewLine);

            //    if (item.symbol_type == "OPTION")
            //    {
            //        Console.Write("option_type_is_call:" + item.option_type_is_call);
            //        Console.Write(Environment.NewLine);
            //        Console.Write("option_strike_price:" + item.option_strike_price);
            //        Console.Write(Environment.NewLine);
            //        Console.Write("option_contract_unit:" + item.option_contract_unit);
            //        Console.Write(Environment.NewLine);
            //        Console.Write("option_exercise_style:" + item.option_exercise_style);
            //        Console.Write(Environment.NewLine);
            //        Console.Write("option_expiration_time:" + item.option_expiration_time);
            //        Console.Write(Environment.NewLine);
            //    }

            //    if (item.symbol_type == "FUTURES")
            //    {
            //        Console.Write("future_delivery_time:" + item.future_delivery_time);
            //        Console.Write(Environment.NewLine);
            //    }

            //    Console.Write("asset_id_base:" + item.asset_id_base);
            //    Console.Write(Environment.NewLine);
            //    Console.Write("asset_id_quote:" + item.asset_id_quote);
            //    Console.Write(Environment.NewLine);
            //    Console.WriteLine("volume_1day_usd:" + item.volume_1day_usd);
            //    Console.WriteLine("volume_1hrs_usd:" + item.volume_1hrs_usd);
            //    Console.WriteLine("volume_1mth_usd:" + item.volume_1mth_usd);
            //    Console.WriteLine("volume_1day:" + item.volume_1day);
            //    Console.WriteLine("volume_1hrs:" + item.volume_1hrs);
            //    Console.WriteLine("volume_1mth:" + item.volume_1mth);
            //    Console.WriteLine("price:" + item.price);
            //    Console.Write("--------------------------------------------------------------------------------------------------------");
            //    Console.Write(Environment.NewLine);
            //}

            //Console.WriteLine($"Symbols mapping for BCEX: ");
            //var mappingsList = coinApi.Metadata_symbol_mapping("BCEX");

            //foreach (var mapping in mappingsList)
            //{
            //    Console.WriteLine($"symbol_id_exchange: {mapping.symbol_id_exchange}");
            //    Console.WriteLine($"price_precision: {mapping.price_precision}");
            //    Console.WriteLine($"size_precision: {mapping.size_precision}");
            //}

            Console.Write("Asset:");
            Console.Write(Environment.NewLine);
            var assets =  coinApiEndpointTester.Metadata_list_assetsAsync().GetAwaiter().GetResult();
            foreach (var item in assets.Data)
            {
                Console.Write("asset_id:" + item.asset_id);
                Console.Write(Environment.NewLine);
                Console.Write("name:" + item.name);
                Console.Write(Environment.NewLine);
                Console.Write("type_is_crypto:" + item.type_is_crypto);
                Console.Write(Environment.NewLine);
                Console.WriteLine("volume_1day_usd:" + item.volume_1day_usd);
                Console.WriteLine("volume_1hrs_usd:" + item.volume_1hrs_usd);
                Console.WriteLine("volume_1mth_usd:" + item.volume_1mth_usd);
                Console.WriteLine("price_usd:" + item.price_usd);
                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Exchangerate:");
            Console.Write(Environment.NewLine);
            var exchange_rate =  coinApiEndpointTester.Exchange_rates_get_specific_rateAsync("BTC", "USD").GetAwaiter().GetResult();

            Console.Write("time:" + exchange_rate.Data.time);
            Console.Write(Environment.NewLine);
            Console.Write("asset_id_base:" + exchange_rate.Data.asset_id_base);
            Console.Write(Environment.NewLine);
            Console.Write("asset_id_quote:" + exchange_rate.Data.asset_id_quote);
            Console.Write(Environment.NewLine);
            Console.Write("rate:" + exchange_rate.Data.rate);
            Console.Write(Environment.NewLine);
            Console.Write("--------------------------------------------------------------------------------------------------------");
            Console.Write(Environment.NewLine);

            Console.Write("Exchangerate Last Week:");
            Console.Write(Environment.NewLine);
            var lastweek = DateTime.Now.AddDays(-7);
            var exchange_rate_last_week =  coinApiEndpointTester.Exchange_rates_get_specific_rateAsync("BTC", "USD", lastweek).GetAwaiter().GetResult().Data;
            
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
            var current_rates =  coinApiEndpointTester.Exchange_rates_get_all_current_ratesAsync("BTC").GetAwaiter().GetResult().Data;

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
            var periods =  coinApiEndpointTester.Ohlcv_list_all_periodsAsync().GetAwaiter().GetResult().Data;
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
            var symbolId = "BITSTAMP_SPOT_BTC_USD";
            Console.Write("Ohlcv latest data:");
            Console.Write(Environment.NewLine);
            var ohlcv_latest =  coinApiEndpointTester.Ohlcv_latest_dataAsync(symbolId, "1MIN").GetAwaiter().GetResult().Data;
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
            var ohlcv_historical =  coinApiEndpointTester.Ohlcv_historical_dataAsync(symbolId, "1MIN", start_of_2016).GetAwaiter().GetResult().Data;
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
            var latest_trades =  coinApiEndpointTester.Trades_latest_data_allAsync().GetAwaiter().GetResult().Data;

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
            var latest_trades_doge = coinApiEndpointTester.Trades_latest_data_symbolAsync(symbolId).GetAwaiter().GetResult().Data;
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
            var historical_trades_btc =  coinApiEndpointTester.Trades_historical_dataAsync(symbolId, start_of_2016).GetAwaiter().GetResult().Data;
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
            var current_quotes =  coinApiEndpointTester.Quotes_current_data_allAsync().GetAwaiter().GetResult().Data;
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
            var current_quote_btc_usd =  coinApiEndpointTester.Quotes_current_data_symbolAsync(symbolId).GetAwaiter().GetResult().Data;

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
            var quotes_latest_data =  coinApiEndpointTester.Quotes_latest_data_allAsync().GetAwaiter().GetResult().Data;
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
            var quotes_latest_data_btc_usd =  coinApiEndpointTester.Quotes_latest_data_symbolAsync(symbolId).GetAwaiter().GetResult().Data;
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
            var quotes_historical_data_btc_usd =  coinApiEndpointTester.Quotes_historical_dataAsync(symbolId, start_of_2016).GetAwaiter().GetResult().Data;
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
            var orderbooks_current_data =  coinApiEndpointTester.Orderbooks_current_data_all_filtered_bitstampAsync().GetAwaiter().GetResult().Data;
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
            var orderbooks_current_data_btc_usd =  coinApiEndpointTester.Orderbooks_current_data_symbolAsync(symbolId).GetAwaiter().GetResult().Data;
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
            var orderbooks_latest_data_btc_usd =  coinApiEndpointTester.Orderbooks_last_dataAsync(symbolId).GetAwaiter().GetResult().Data;
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
            var orderbooks_historical_data_btc_usd =  coinApiEndpointTester.Orderbooks_historical_dataAsync(symbolId, start_of_2016).GetAwaiter().GetResult().Data;
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

            Console.Write("Orderbooks level 3 current data all:");
            Console.Write(Environment.NewLine);
            var orderbooks3_current_data = coinApiEndpointTester.Orderbooks3_current_data_all_filtered_bitstampAsync().GetAwaiter().GetResult().Data;
            foreach (var item in orderbooks3_current_data)
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
                    Console.Write("id:" + itm.id);
                    Console.Write(Environment.NewLine);
                    Console.Write("price:" + itm.price);
                    Console.Write(Environment.NewLine);
                    Console.Write("size:" + itm.size);
                    Console.Write(Environment.NewLine);

                }
                Console.Write("Bids:");
                Console.Write(Environment.NewLine);
                foreach (var itm in item.bids)
                {
                    Console.Write("id:" + itm.id);
                    Console.Write(Environment.NewLine);
                    Console.Write("price:" + itm.price);
                    Console.Write(Environment.NewLine);
                    Console.Write("size:" + itm.size);
                    Console.Write(Environment.NewLine);

                }

                Console.Write("--------------------------------------------------------------------------------------------------------");
                Console.Write(Environment.NewLine);
            }

            Console.Write("Orderbooks level 3 current data symbol:");
            Console.Write(Environment.NewLine);
            var orderbooks3_current_data_btc_usd = coinApiEndpointTester.Orderbooks3_current_data_symbolAsync("BITSTAMP_SPOT_BTC_USD").GetAwaiter().GetResult().Data;
            Console.Write("symbol_id:" + orderbooks3_current_data_btc_usd.symbol_id);
            Console.Write(Environment.NewLine);
            Console.Write("time_exchange:" + orderbooks3_current_data_btc_usd.time_exchange);
            Console.Write(Environment.NewLine);
            Console.Write("time_coinapi:" + orderbooks3_current_data_btc_usd.time_coinapi);
            Console.Write(Environment.NewLine);

            Console.Write("Asks:");
            Console.Write(Environment.NewLine);
            foreach (var itm in orderbooks3_current_data_btc_usd.asks)
            {
                Console.Write("id:" + itm.id);
                Console.Write(Environment.NewLine);
                Console.Write("price:" + itm.price);
                Console.Write(Environment.NewLine);
                Console.Write("size:" + itm.size);
                Console.Write(Environment.NewLine);

            }
            Console.Write("Bids:");
            Console.Write(Environment.NewLine);
            foreach (var itm in orderbooks3_current_data_btc_usd.bids)
            {
                Console.Write("id:" + itm.id);
                Console.Write(Environment.NewLine);
                Console.Write("price:" + itm.price);
                Console.Write(Environment.NewLine);
                Console.Write("size:" + itm.size);
                Console.Write(Environment.NewLine);
            }

            Console.Write("--------------------------------------------------------------------------------------------------------");
            Console.Write(Environment.NewLine);


            Console.WriteLine("=== END ===");
            Console.ReadLine();
        }
    }
}
