package main

import (
	"encoding/json"
	"fmt"
	"time"
)

import SDK "github.com/CoinAPI/coinapi-sdk/data-api/go-rest/v1"

var API_KEY = "YOUR_API_KEY_HERE"

func main() {
	sdk := SDK.NewSDK(API_KEY)

	t, _ := time.Parse(
		time.RFC3339,
		"2016-11-01T22:08:41+00:00")
	fmt.Println(t)

	exchanges, _ := sdk.Metadata_list_exchanges()
	fmt.Println("exchanges:")
	fmt.Println("  number:", len(exchanges))
	exchanges_item, _ := json.MarshalIndent(&exchanges[0], "", "  ")
	fmt.Println("  first items:", string(exchanges_item))

	assets, _ := sdk.Metadata_list_assets()
	fmt.Println("assets:")
	fmt.Println("number:", len(assets))
	assets_item, _ := json.MarshalIndent(&assets[0], "", "  ")
	fmt.Println("first items:", string(assets_item))

	spots, _, _, _ := sdk.Metadata_list_symbols()
	fmt.Println("spots:")
	fmt.Println("number:", len(spots))
	spots_item, _ := json.MarshalIndent(&spots[0], "", "  ")
	fmt.Println("first items:", string(spots_item))

	_, futures, _, _ := sdk.Metadata_list_symbols()
	fmt.Println("futures:")
	fmt.Println("number:", len(futures))
	futures_item, _ := json.MarshalIndent(&futures[0], "", "  ")

	_, _, options, _ := sdk.Metadata_list_symbols()
	fmt.Println("options:")
	fmt.Println("number:", len(options))
	options_item, _ := json.MarshalIndent(&options[0], "", "  ")
	fmt.Println("first items:", string(options_item))
	fmt.Println("first items:", string(futures_item))

	exchange_rat_specific, _ := sdk.Exchange_rates_get_specific_rate("BTC", "USD")
	fmt.Println("exchange_rat_specific:")
	exchange_rat_specific_item, _ := json.MarshalIndent(&exchange_rat_specific, "", "  ")
	fmt.Println("first items:", string(exchange_rat_specific_item))

	ex_rate_specific_with_time, _ := sdk.Exchange_rates_get_specific_rate_with_time("BTC", "USD", t)
	fmt.Println("ex_rate_specific_with_time:")
	ex_rate_specific_with_time_item, _ := json.MarshalIndent(&ex_rate_specific_with_time, "", "  ")
	fmt.Println("first items:", string(ex_rate_specific_with_time_item))

	ex_rate_current_all_item, _ := sdk.Exchange_rates_get_all_current_rates("BTC")
	fmt.Println("ex_rate_current_all_item:")
	fmt.Println("number:", len(ex_rate_current_all_item))
	ex_rate_current_all_item_item, _ := json.MarshalIndent(&ex_rate_current_all_item[0], "", "  ")
	fmt.Println("first items:", string(ex_rate_current_all_item_item))

	ohlvc_periods, _ := sdk.Ohlcv_list_all_periods()
	fmt.Println("ohlvc_periods:")
	fmt.Println("number:", len(ohlvc_periods))
	ohlvc_periods_item, _ := json.MarshalIndent(&ohlvc_periods[0], "", "  ")
	fmt.Println("first items:", string(ohlvc_periods_item))

	ohlvc_latest_item, _ := sdk.Ohlcv_latest_data("BITSTAMP_SPOT_BTC_USD", "1MIN")
	fmt.Println("ohlvc_latest_item:")
	fmt.Println("number:", len(ohlvc_latest_item))
	ohlvc_latest_item_item, _ := json.MarshalIndent(&ohlvc_latest_item[0], "", "  ")
	fmt.Println("first items:", string(ohlvc_latest_item_item))

	ohlvc_latest_with_limit, _ := sdk.Ohlcv_latest_data_with_limit("BITSTAMP_SPOT_BTC_USD", "1MIN", 5)
	fmt.Println("ohlvc_latest_with_limit:")
	fmt.Println("number:", len(ohlvc_latest_with_limit))
	ohlvc_latest_with_limit_item, _ := json.MarshalIndent(&ohlvc_latest_with_limit[0], "", "  ")
	fmt.Println("first items:", string(ohlvc_latest_with_limit_item))

	Ohlcv_historic_data, _ := sdk.Ohlcv_historic_data("BITSTAMP_SPOT_BTC_USD", "1MIN", t)
	fmt.Println("Ohlcv_historic_data:")
	fmt.Println("number:", len(Ohlcv_historic_data))
	Ohlcv_historic_data_item, _ := json.MarshalIndent(&Ohlcv_historic_data[0], "", "  ")
	fmt.Println("first items:", string(Ohlcv_historic_data_item))

	Ohlcv_historic_data_with_time_end_and_limit, _ := sdk.Ohlcv_historic_data_with_time_end_and_limit("BITSTAMP_SPOT_BTC_USD", "1MIN", t, time.Now(), 5)
	fmt.Println("Ohlcv_historic_data_with_time_end_and_limit:")
	fmt.Println("number:", len(Ohlcv_historic_data_with_time_end_and_limit))
	Ohlcv_historic_data_with_time_end_and_limit_item, _ := json.MarshalIndent(&Ohlcv_historic_data_with_time_end_and_limit[0], "", "  ")
	fmt.Println("first items:", string(Ohlcv_historic_data_with_time_end_and_limit_item))

	Ohlcv_historic_data_with_time_end, _ := sdk.Ohlcv_historic_data_with_time_end("BITSTAMP_SPOT_BTC_USD", "1MIN", t, time.Now())
	fmt.Println("Ohlcv_historic_data_with_time_end:")
	fmt.Println("number:", len(Ohlcv_historic_data_with_time_end))
	Ohlcv_historic_data_with_time_end_item, _ := json.MarshalIndent(&Ohlcv_historic_data_with_time_end[0], "", "  ")
	fmt.Println("first items:", string(Ohlcv_historic_data_with_time_end_item))

	Ohlcv_historic_data_with_limit, _ := sdk.Ohlcv_historic_data_with_limit("BITSTAMP_SPOT_BTC_USD", "1MIN", t, 5)
	fmt.Println("Ohlcv_historic_data_with_limit:")
	fmt.Println("number:", len(Ohlcv_historic_data_with_limit))
	Ohlcv_historic_data_with_limit_item, _ := json.MarshalIndent(&Ohlcv_historic_data_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Ohlcv_historic_data_with_limit_item))

	Trades_latest_data_all, _ := sdk.Trades_latest_data_all()
	fmt.Println("Trades_latest_data_all:")
	fmt.Println("number:", len(Trades_latest_data_all))
	Trades_latest_data_all_item, _ := json.MarshalIndent(&Trades_latest_data_all[0], "", "  ")
	fmt.Println("first items:", string(Trades_latest_data_all_item))

	Trades_latest_data_all_with_limit, _ := sdk.Trades_latest_data_all_with_limit(5)
	fmt.Println("Trades_latest_data_all_with_limit:")
	fmt.Println("number:", len(Trades_latest_data_all_with_limit))
	Trades_latest_data_all_with_limit_item, _ := json.MarshalIndent(&Trades_latest_data_all_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Trades_latest_data_all_with_limit_item))

	Trades_latest_data_symbol, _ := sdk.Trades_latest_data_symbol("BITSTAMP_SPOT_BTC_USD")
	fmt.Println("Trades_latest_data_symbol:")
	fmt.Println("number:", len(Trades_latest_data_symbol))
	Trades_latest_data_symbol_item, _ := json.MarshalIndent(&Trades_latest_data_symbol[0], "", "  ")
	fmt.Println("first items:", string(Trades_latest_data_symbol_item))

	Trades_latest_data_symbol_with_limit, _ := sdk.Trades_latest_data_symbol_with_limit("BITSTAMP_SPOT_BTC_USD", 5)
	fmt.Println("Trades_latest_data_symbol_with_limit:")
	fmt.Println("number:", len(Trades_latest_data_symbol_with_limit))
	Trades_latest_data_symbol_with_limit_item, _ := json.MarshalIndent(&Trades_latest_data_symbol_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Trades_latest_data_symbol_with_limit_item))

	Trades_historical_data, _ := sdk.Trades_historical_data("BITSTAMP_SPOT_BTC_USD", t)
	fmt.Println("Trades_historical_data:")
	fmt.Println("number:", len(Trades_historical_data))
	Trades_historical_data_item, _ := json.MarshalIndent(&Trades_historical_data[0], "", "  ")
	fmt.Println("first items:", string(Trades_historical_data_item))

	Trades_historical_data_with_limit, _ := sdk.Trades_historical_data_with_limit("BITSTAMP_SPOT_BTC_USD", t, 5)
	fmt.Println("Trades_historical_data_with_limit:")
	fmt.Println("number:", len(Trades_historical_data_with_limit))
	Trades_historical_data_with_limit_item, _ := json.MarshalIndent(&Trades_historical_data_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Trades_historical_data_with_limit_item))

	Trades_historical_data_with_time_end, _ := sdk.Trades_historical_data_with_time_end("BITSTAMP_SPOT_BTC_USD", t, time.Now())
	fmt.Println("Trades_historical_data_with_time_end:")
	fmt.Println("number:", len(Trades_historical_data_with_time_end))
	Trades_historical_data_with_time_end_item, _ := json.MarshalIndent(&Trades_historical_data_with_time_end[0], "", "  ")
	fmt.Println("first items:", string(Trades_historical_data_with_time_end_item))

	Trades_historical_data_with_time_end_and_limit, _ := sdk.Trades_historical_data_with_time_end_and_limit("BITSTAMP_SPOT_BTC_USD", t, time.Now(), 5)
	fmt.Println("Trades_historical_data_with_time_end_and_limit:")
	fmt.Println("number:", len(Trades_historical_data_with_time_end_and_limit))
	Trades_historical_data_with_time_end_and_limit_item, _ := json.MarshalIndent(&Trades_historical_data_with_time_end_and_limit[0], "", "  ")
	fmt.Println("first items:", string(Trades_historical_data_with_time_end_and_limit_item))

	Quotes_current_data_all, _ := sdk.Quotes_current_data_all()
	fmt.Println("Quotes_current_data_all:")
	fmt.Println("number:", len(Quotes_current_data_all))
	Quotes_current_data_all_item, _ := json.MarshalIndent(&Quotes_current_data_all[0], "", "  ")
	fmt.Println("first items:", string(Quotes_current_data_all_item))

	Quotes_current_data_symbol, _ := sdk.Quotes_current_data_symbol("BITSTAMP_SPOT_BTC_USD")
	fmt.Println("Quotes_current_data_symbol:")
	Quotes_current_data_symbol_item, _ := json.MarshalIndent(&Quotes_current_data_symbol, "", "  ")
	fmt.Println("first items:", string(Quotes_current_data_symbol_item))

	Quotes_latest_data_all, _ := sdk.Quotes_latest_data_all()
	fmt.Println("Quotes_latest_data_all:")
	fmt.Println("number:", len(Quotes_latest_data_all))
	Quotes_latest_data_all_item, _ := json.MarshalIndent(&Quotes_latest_data_all[0], "", "  ")
	fmt.Println("first items:", string(Quotes_latest_data_all_item))

	Quotes_latest_data_all_with_limit, _ := sdk.Quotes_latest_data_all_with_limit(5)
	fmt.Println("Quotes_latest_data_all_with_limit:")
	fmt.Println("number:", len(Quotes_latest_data_all_with_limit))
	Quotes_latest_data_all_with_limit_item, _ := json.MarshalIndent(&Quotes_latest_data_all_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Quotes_latest_data_all_with_limit_item))

	Quotes_latest_data_symbol, _ := sdk.Quotes_latest_data_symbol("BITSTAMP_SPOT_BTC_USD")
	fmt.Println("Quotes_latest_data_symbol:")
	fmt.Println("number:", len(Quotes_latest_data_symbol))
	Quotes_latest_data_symbol_item, _ := json.MarshalIndent(&Quotes_latest_data_symbol[0], "", "  ")
	fmt.Println("first items:", string(Quotes_latest_data_symbol_item))

	Quotes_latest_data_symbol_with_limit, _ := sdk.Quotes_latest_data_symbol_with_limit("BITSTAMP_SPOT_BTC_USD", 5)
	fmt.Println("Quotes_latest_data_symbol_with_limit:")
	fmt.Println("number:", len(Quotes_latest_data_symbol_with_limit))
	Quotes_latest_data_symbol_with_limit_item, _ := json.MarshalIndent(&Quotes_latest_data_symbol_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Quotes_latest_data_symbol_with_limit_item))

	Quotes_historical_data, _ := sdk.Quotes_historical_data("BITSTAMP_SPOT_BTC_USD", t)
	fmt.Println("Quotes_historical_data:")
	fmt.Println("number:", len(Quotes_historical_data))
	Quotes_historical_data_item, _ := json.MarshalIndent(&Quotes_historical_data[0], "", "  ")
	fmt.Println("first items:", string(Quotes_historical_data_item))

	Quotes_historical_data_with_limit, _ := sdk.Quotes_historical_data_with_limit("BITSTAMP_SPOT_BTC_USD", t, 5)
	fmt.Println("Quotes_historical_data_with_limit:")
	fmt.Println("number:", len(Quotes_historical_data_with_limit))
	Quotes_historical_data_with_limit_item, _ := json.MarshalIndent(&Quotes_historical_data_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Quotes_historical_data_with_limit_item))

	Quotes_historical_data_with_time_end, _ := sdk.Quotes_historical_data_with_time_end("BITSTAMP_SPOT_BTC_USD", t, time.Now())
	fmt.Println("Quotes_historical_data_with_time_end:")
	fmt.Println("number:", len(Quotes_historical_data_with_time_end))
	Quotes_historical_data_with_time_end_item, _ := json.MarshalIndent(&Quotes_historical_data_with_time_end[0], "", "  ")
	fmt.Println("first items:", string(Quotes_historical_data_with_time_end_item))

	Quotes_historical_data_with_time_end_and_limit, _ := sdk.Quotes_historical_data_with_time_end_and_limit("BITSTAMP_SPOT_BTC_USD", t, time.Now(), 5)
	fmt.Println("Quotes_historical_data_with_time_end_and_limit:")
	fmt.Println("number:", len(Quotes_historical_data_with_time_end_and_limit))
	Quotes_historical_data_with_time_end_and_limit_item, _ := json.MarshalIndent(&Quotes_historical_data_with_time_end_and_limit[0], "", "  ")
	fmt.Println("first items:", string(Quotes_historical_data_with_time_end_and_limit_item))

	Orderbooks_current_data_all, _ := sdk.Orderbooks_current_data_all()
	fmt.Println("Orderbooks_current_data_all:")
	fmt.Println("number:", len(Orderbooks_current_data_all))
	Orderbooks_current_data_all_item, _ := json.MarshalIndent(&Orderbooks_current_data_all[0], "", "  ")
	fmt.Println("first items:", string(Orderbooks_current_data_all_item))

	Orderbooks_current_data_symbol, _ := sdk.Orderbooks_current_data_symbol("BITSTAMP_SPOT_BTC_USD")
	fmt.Println("Orderbooks_current_data_symbol:")
	Orderbooks_current_data_symbol_item, _ := json.MarshalIndent(&Orderbooks_current_data_symbol, "", "  ")
	fmt.Println("first items:", string(Orderbooks_current_data_symbol_item))

	Orderbooks_latest_data_all, _ := sdk.Orderbooks_latest_data("BITSTAMP_SPOT_BTC_USD")
	fmt.Println("Orderbooks_latest_data_all:")
	fmt.Println("number:", len(Orderbooks_latest_data_all))
	Orderbooks_latest_data_all_item, _ := json.MarshalIndent(&Orderbooks_latest_data_all[0], "", "  ")
	fmt.Println("first items:", string(Orderbooks_latest_data_all_item))

	Orderbooks_latest_data_all_with_limit, _ := sdk.Orderbooks_latest_data_with_limit("BITSTAMP_SPOT_BTC_USD", 5)
	fmt.Println("Orderbooks_latest_data_all_with_limit:")
	fmt.Println("number:", len(Orderbooks_latest_data_all_with_limit))
	Orderbooks_latest_data_all_with_limit_item, _ := json.MarshalIndent(&Orderbooks_latest_data_all_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Orderbooks_latest_data_all_with_limit_item))

	Orderbooks_historical_data, _ := sdk.Orderbooks_historical_data("BITSTAMP_SPOT_BTC_USD", t)
	fmt.Println("Orderbooks_historical_data:")
	fmt.Println("number:", len(Orderbooks_historical_data))
	Orderbooks_historical_data_item, _ := json.MarshalIndent(&Orderbooks_historical_data[0], "", "  ")
	fmt.Println("first items:", string(Orderbooks_historical_data_item))

	Orderbooks_historical_data_with_limit, _ := sdk.Orderbooks_historical_data_with_limit("BITSTAMP_SPOT_BTC_USD", t, 5)
	fmt.Println("Orderbooks_historical_data_with_limit:")
	fmt.Println("number:", len(Orderbooks_historical_data_with_limit))
	Orderbooks_historical_data_with_limit_item, _ := json.MarshalIndent(&Orderbooks_historical_data_with_limit[0], "", "  ")
	fmt.Println("first items:", string(Orderbooks_historical_data_with_limit_item))

	Orderbooks_historical_data_with_time_end, _ := sdk.Orderbooks_historical_data_with_time_end("BITSTAMP_SPOT_BTC_USD", t, time.Now())
	fmt.Println("Orderbooks_historical_data_with_time_end:")
	fmt.Println("number:", len(Orderbooks_historical_data_with_time_end))
	Orderbooks_historical_data_with_time_end_item, _ := json.MarshalIndent(&Orderbooks_historical_data_with_time_end[0], "", "  ")
	fmt.Println("first items:", string(Orderbooks_historical_data_with_time_end_item))

	Orderbooks_historical_data_with_time_end_and_limit, _ := sdk.Orderbooks_historical_data_with_time_end_and_limit("BITSTAMP_SPOT_BTC_USD", t, time.Now(), 5)
	fmt.Println("Orderbooks_historical_data_with_time_end_and_limit:")
	fmt.Println("number:", len(Orderbooks_historical_data_with_time_end_and_limit))
	Orderbooks_historical_data_with_time_end_and_limit_item, _ := json.MarshalIndent(&Orderbooks_historical_data_with_time_end_and_limit[0], "", "  ")
	fmt.Println("first items:", string(Orderbooks_historical_data_with_time_end_and_limit_item))
}
