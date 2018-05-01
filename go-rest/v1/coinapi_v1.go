package coinapi_v1

import (
	"encoding/json"
	"errors"
	"fmt"
	"io/ioutil"
	"net/http"
	"time"

	"github.com/shopspring/decimal"
)

// Exchange info
type Exchange struct {
	Exchange_id string `json:"exchange_id"`
	Website     string `json:"website"`
	Name        string `json:"name"`
}

type Asset struct {
	Asset_id       string `json:"asset_id"`
	Name           string `json:"name"`
	Type_is_crypto int   `json:"type_is_crypto"`
}

type SymbolBase struct {
	Symbol_type string `json:"symbol_type"`
}

type Symbol struct {
	SymbolBase
	Symbol_id      string `json:"symbol_id"`
	Exchange_id    string `json:"exchange_id"`
	Asset_id_base  string `json:"asset_id_base"`
	Asset_id_quote string `json:"asset_id_quote"`
}

type Spot struct {
	Symbol
}

type Future struct {
	Symbol
	Future_delivery_time time.Time `json:"future_delivery_time"`
}

type Option struct {
	Option_type_is_call    bool            `json:"option_type_is_call"`
	Option_strike_price    decimal.Decimal `json:"option_strike_price"`
	Option_contract_unit   uint32          `json:"option_contract_unit"`
	Option_exercise_style  string          `json:"option_exercise_style"`
	Option_expiration_time time.Time       `json:"option_excercise_style"`
}

type Exchange_rate struct {
	Time           time.Time       `json:"time"`
	Asset_id_base  string          `json:"asset_id_base"`
	Asset_id_quote string          `json:"asset_id_quote"`
	Rate           decimal.Decimal `json:"rate"`
}

type Ohlcv_period struct {
	Period_id      string `json:"period_id"`
	Length_seconds uint64 `json:"length_seconds"`
	Length_months  uint32 `json:"length_months"`
	Unit_count     uint32 `json:"unit_count"`
	Unit_name      string `json:"unit_name"`
	Display_name   string `json:"display_name"`
}

type Ohlcv_data struct {
	Time_period_start time.Time       `json:"time_period_start"`
	Time_period_end   time.Time       `json:"time_period_end"`
	Time_open         time.Time       `json:"time_open"`
	Time_close        time.Time       `json:"time_close"`
	Price_open        decimal.Decimal `json:"price_open"`
	Price_high        decimal.Decimal `json:"price_high"`
	Price_low         decimal.Decimal `json:"price_low"`
	Price_close       decimal.Decimal `json:"price_close"`
	Volume_traded     decimal.Decimal `json:"volume_traded"`
	Trades_count      uint32          `json:"trades_count"`
}

type Trade struct {
	Symbol_id     string          `json:"symbol_id"`
	Time_exchange time.Time       `json:"time_exchange"`
	Time_coinapi  time.Time       `json:"time_coinapi"`
	Uuid          string          `json:"uuid"`
	Price         decimal.Decimal `json:"price"`
	Size          decimal.Decimal `json:"size"`
	taker_side    string          `json:"taker_side"`
}

type Quote struct {
	Symbol_id     string          `json:"symbol_id"`
	Time_exchange time.Time       `json:"time_exchange"`
	Time_coinapi  time.Time       `json:"time_coinapi"`
	Ask_price     decimal.Decimal `json:"ask_price"`
	Ask_size      decimal.Decimal `json:"ask_size"`
	Bid_price     decimal.Decimal `json:"bid_price"`
	Bid_size      decimal.Decimal `json:"bid_size"`
	Last_trade    Trade           `json:"last_trade"`
}

type Bid struct {
	Price decimal.Decimal `json:"price"`
	Size  decimal.Decimal `json:"size"`
}

type Orderbook struct {
	Symbol_id     string    `json:"symbol_id"`
	Time_exchange time.Time `json:"time_exchange"`
	Time_coinapi  time.Time `json:"time_coinapi"`
	Asks          []Bid     `json:"asks"`
	Bids          []Bid     `json:"bids"`
}

type Tweet struct {
	CreatedAt            string                 `json:"created_at"`
	FavoriteCount        int                    `json:"favorite_count"`
	Favorited            bool                   `json:"favorited"`
	FilterLevel          string                 `json:"filter_level"`
	ID                   int64                  `json:"id"`
	IDStr                string                 `json:"id_str"`
	InReplyToScreenName  string                 `json:"in_reply_to_screen_name"`
	InReplyToStatusID    int64                  `json:"in_reply_to_status_id"`
	InReplyToStatusIDStr string                 `json:"in_reply_to_status_id_str"`
	InReplyToUserID      int64                  `json:"in_reply_to_user_id"`
	InReplyToUserIDStr   string                 `json:"in_reply_to_user_id_str"`
	Lang                 string                 `json:"lang"`
	PossiblySensitive    bool                   `json:"possibly_sensitive"`
	RetweetCount         int                    `json:"retweet_count"`
	Retweeted            bool                   `json:"retweeted"`
	Source               string                 `json:"source"`
	Scopes               map[string]interface{} `json:"scopes"`
	Text                 string                 `json:"text"`
	FullText             string                 `json:"full_text"`
	Truncated            bool                   `json:"truncated"`
	WithheldCopyright    bool                   `json:"withheld_copyright"`
	WithheldInCountries  []string               `json:"withheld_in_countries"`
	WithheldScope        string                 `json:"withheld_scope"`
	QuotedStatusID       int64                  `json:"quoted_status_id"`
	QuotedStatusIDStr    string                 `json:"quoted_status_id_str"`
}

type SDK struct {
	api_key string
	url     string
}

type ErrorMessage struct {
	Message string `json:"message"`
}

var URL = "https://rest.coinapi.io"
var TEST_URL = "https://rest-test.coinapi.io"

func NewSDK(api_key string) *SDK {
	sdk := new(SDK)
	sdk.api_key = api_key
	sdk.url = URL
	return sdk
}

func NewTestSDK() *SDK {
	sdk := new(SDK)
	sdk.url = TEST_URL
	return sdk
}

func (sdk SDK) Metadata_list_exchanges() (exchanges []Exchange, err error) {
	path := "/v1/exchanges"
	err = sdk.do_request_and_unmarshal(path, &exchanges)
	return
}

func (sdk SDK) Metadata_list_assets() (assets []Asset, err error) {
	path := "/v1/assets"
	err = sdk.do_request_and_unmarshal(path, &assets)
	return
}

func (sdk SDK) Metadata_list_symbols() (spots []Spot, futures []Future, options []Option, err error) {
	path := "/v1/symbols"

	spots = []Spot{}
	futures = []Future{}
	options = []Option{}

	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, nil, nil, req_err
	}
	var data []json.RawMessage
	parse_err := json.Unmarshal([]byte(text), &data)
	if parse_err != nil {
		return nil, nil, nil, errors.New("Failed to parse response")
	}
	for _, symbol := range data {
		base := SymbolBase{}
		json.Unmarshal(symbol, &base)
		switch symbol_type := base.Symbol_type; symbol_type {
		case "SPOT":
			spot := Spot{}
			json.Unmarshal(symbol, &spot)
			spots = append(spots, spot)
		case "FUTURES":
			future := Future{}
			json.Unmarshal(symbol, &future)
			futures = append(futures, future)
		case "OPTION":
			option := Option{}
			json.Unmarshal(symbol, &option)
			options = append(options, option)
		}
	}
	return
}

func (sdk SDK) Exchange_rates_get_specific_rate(asset_id_base string, asset_id_quote string) (rate Exchange_rate, err error) {
	path := fmt.Sprintf("/v1/exchangerate/%s/%s", asset_id_base, asset_id_quote)
	err = sdk.do_request_and_unmarshal(path, &rate)
	return
}

func (sdk SDK) Exchange_rates_get_specific_rate_with_time(asset_id_base string, asset_id_quote string, _time time.Time) (rate Exchange_rate, err error) {
	path := fmt.Sprintf("/v1/exchangerate/%s/%s", asset_id_base, asset_id_quote)
	if !_time.IsZero() {
		path = path + "?time=" + _time.Format(time.RFC3339)
	}
	err = sdk.do_request_and_unmarshal(path, &rate)
	return
}

func (sdk SDK) Exchange_rates_get_all_current_rates(asset_id_base string) (rates []Exchange_rate, err error) {
	path := fmt.Sprintf("/v1/exchangerate/%s", asset_id_base)
	rates = []Exchange_rate{}

	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}

	type Tmp struct {
		Asset_id_base string          `json:"asset_id_base"`
		Rates         []Exchange_rate `json:"rates"`
	}

	tmp := Tmp{}

	json.Unmarshal([]byte(text), &tmp)
	for _, rate := range tmp.Rates {
		rate.Asset_id_base = tmp.Asset_id_base
		rates = append(rates, rate)
	}
	return
}

func (sdk SDK) Ohlcv_list_all_periods() (periods []Ohlcv_period, err error) {
	path := "/v1/ohlcv/periods"
	err = sdk.do_request_and_unmarshal(path, &periods)
	return
}

func (sdk SDK) Ohlcv_latest_data(symbol_id string, period_id string) (data []Ohlcv_data, err error) {
	path := fmt.Sprintf("/v1/ohlcv/%s/latest?period_id=%s", symbol_id, period_id)
	err = sdk.do_request_and_unmarshal(path, &data)
	return
}

func (sdk SDK) Ohlcv_latest_data_with_limit(symbol_id string, period_id string, limit uint32) (data []Ohlcv_data, err error) {
	path := fmt.Sprintf("/v1/ohlcv/%s/latest?period_id=%s&limit=%d", symbol_id, period_id, limit)
	err = sdk.do_request_and_unmarshal(path, &data)
	return
}

func (sdk SDK) Ohlcv_historic_data(symbol_id string, period_id string, time_start time.Time) (data []Ohlcv_data, err error) {
	path := fmt.Sprintf("/v1/ohlcv/%s/history?period_id=%s&time_start=%s",
		symbol_id, period_id, time_start.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &data)
	return
}

func (sdk SDK) Ohlcv_historic_data_with_time_end_and_limit(symbol_id string, period_id string, time_start time.Time, time_end time.Time, limit uint32) (data []Ohlcv_data, err error) {
	path := fmt.Sprintf("/v1/ohlcv/%s/history?period_id=%s&time_start=%s&time_end=%s&limit=%d",
		symbol_id, period_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &data)
	return
}

func (sdk SDK) Ohlcv_historic_data_with_time_end(symbol_id string, period_id string, time_start time.Time, time_end time.Time) (data []Ohlcv_data, err error) {
	path := fmt.Sprintf("/v1/ohlcv/%s/history?period_id=%s&time_start=%s&time_end=%s",
		symbol_id, period_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &data)
	return
}

func (sdk SDK) Ohlcv_historic_data_with_limit(symbol_id string, period_id string, time_start time.Time, limit uint32) (data []Ohlcv_data, err error) {
	path := fmt.Sprintf("/v1/ohlcv/%s/history?period_id=%s&time_start=%s&limit=%d",
		symbol_id, period_id, time_start.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &data)
	return
}

func (sdk SDK) Trades_latest_data_all() (trades []Trade, err error) {
	path := fmt.Sprintf("/v1/trades/latest")
	err = sdk.do_request_and_unmarshal(path, &trades)
	return
}

func (sdk SDK) Trades_latest_data_all_with_limit(limit uint32) (trades []Trade, err error) {
	path := fmt.Sprintf("/v1/trades/latest?limit=%d", limit)
	err = sdk.do_request_and_unmarshal(path, &trades)
	return
}

func (sdk SDK) Trades_latest_data_symbol(symbol_id string) (trades []Trade, err error) {
	path := fmt.Sprintf("/v1/trades/%s/latest", symbol_id)
	err = sdk.do_request_and_unmarshal(path, &trades)
	return
}

func (sdk SDK) Trades_latest_data_symbol_with_limit(symbol_id string, limit uint32) (trades []Trade, err error) {
	path := fmt.Sprintf("/v1/trades/%s/latest?limit=%d", symbol_id, limit)
	err = sdk.do_request_and_unmarshal(path, &trades)
	return
}

func (sdk SDK) Trades_historical_data(symbol_id string, time_start time.Time) (trades []Trade, err error) {
	path := fmt.Sprintf("/v1/trades/%s/history?time_start=%s", symbol_id, time_start.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &trades)
	return
}

func (sdk SDK) Trades_historical_data_with_limit(symbol_id string, time_start time.Time, limit uint32) (trades []Trade, err error) {
	path := fmt.Sprintf("/v1/trades/%s/history?time_start=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &trades)
	return
}

func (sdk SDK) Trades_historical_data_with_time_end(symbol_id string, time_start time.Time, time_end time.Time) (trades []Trade, err error) {
	path := fmt.Sprintf("/v1/trades/%s/history?time_start=%s&time_end=%s", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &trades)
	return
}

func (sdk SDK) Trades_historical_data_with_time_end_and_limit(symbol_id string, time_start time.Time, time_end time.Time, limit uint32) (trades []Trade, err error) {
	path := fmt.Sprintf("/v1/trades/%s/history?time_start=%s&time_end=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &trades)
	return
}

// quotes

func (sdk SDK) Quotes_current_data_all() (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/current")
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

func (sdk SDK) Quotes_current_data_symbol(symbol_id string) (quote Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/%s/current", symbol_id)
	err = sdk.do_request_and_unmarshal(path, &quote)
	return
}

func (sdk SDK) Quotes_latest_data_all() (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/latest")
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

func (sdk SDK) Quotes_latest_data_all_with_limit(limit uint32) (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/latest?limit=%d", limit)
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

func (sdk SDK) Quotes_latest_data_symbol(symbol_id string) (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/%s/latest", symbol_id)
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

func (sdk SDK) Quotes_latest_data_symbol_with_limit(symbol_id string, limit uint32) (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/%s/latest?limit=%d", symbol_id, limit)
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

func (sdk SDK) Quotes_historical_data(symbol_id string, time_start time.Time) (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/%s/history?time_start=%s", symbol_id, time_start.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

func (sdk SDK) Quotes_historical_data_with_limit(symbol_id string, time_start time.Time, limit uint32) (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/%s/history?time_start=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

func (sdk SDK) Quotes_historical_data_with_time_end(symbol_id string, time_start time.Time, time_end time.Time) (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/%s/history?time_start=%s&time_end=%s", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

func (sdk SDK) Quotes_historical_data_with_time_end_and_limit(symbol_id string, time_start time.Time, time_end time.Time, limit uint32) (quotes []Quote, err error) {
	path := fmt.Sprintf("/v1/quotes/%s/history?time_start=%s&time_end=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &quotes)
	return
}

// quotes end

// orderbooks

func (sdk SDK) Orderbooks_current_data_all() (orderbooks []Orderbook, err error) {
	path := fmt.Sprintf("/v1/orderbooks/current")
	err = sdk.do_request_and_unmarshal(path, &orderbooks)
	return
}

func (sdk SDK) Orderbooks_current_data_symbol(symbol_id string) (orderbook Orderbook, err error) {
	path := fmt.Sprintf("/v1/orderbooks/%s/current", symbol_id)
	err = sdk.do_request_and_unmarshal(path, &orderbook)
	return
}

func (sdk SDK) Orderbooks_latest_data(symbol_id string) (orderbooks []Orderbook, err error) {
	path := fmt.Sprintf("/v1/orderbooks/%s/latest", symbol_id)
	err = sdk.do_request_and_unmarshal(path, &orderbooks)
	return
}

func (sdk SDK) Orderbooks_latest_data_with_limit(symbol_id string, limit uint32) (orderbooks []Orderbook, err error) {
	path := fmt.Sprintf("/v1/orderbooks/%s/latest?limit=%d", symbol_id, limit)
	err = sdk.do_request_and_unmarshal(path, &orderbooks)
	return
}

func (sdk SDK) Orderbooks_historical_data(symbol_id string, time_start time.Time) (orderbooks []Orderbook, err error) {
	path := fmt.Sprintf("/v1/orderbooks/%s/history?time_start=%s", symbol_id, time_start.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &orderbooks)
	return
}

func (sdk SDK) Orderbooks_historical_data_with_limit(symbol_id string, time_start time.Time, limit uint32) (orderbooks []Orderbook, err error) {
	path := fmt.Sprintf("/v1/orderbooks/%s/history?time_start=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &orderbooks)
	return
}

func (sdk SDK) Orderbooks_historical_data_with_time_end(symbol_id string, time_start time.Time, time_end time.Time) (orderbooks []Orderbook, err error) {
	path := fmt.Sprintf("/v1/orderbooks/%s/history?time_start=%s&time_end=%s", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &orderbooks)
	return
}

func (sdk SDK) Orderbooks_historical_data_with_time_end_and_limit(symbol_id string, time_start time.Time, time_end time.Time, limit uint32) (orderbooks []Orderbook, err error) {
	path := fmt.Sprintf("/v1/orderbooks/%s/history?time_start=%s&time_end=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &orderbooks)
	return
}

// orderbooks end

// twitter
func (sdk SDK) Twitter_latest_data() (tweets []Tweet, err error) {
	path := fmt.Sprintf("/v1/twitter/latest")
	err = sdk.do_request_and_unmarshal(path, &tweets)
	return
}

func (sdk SDK) Twitter_latest_data_with_limit(limit uint32) (tweets []Tweet, err error) {
	path := fmt.Sprintf("/v1/twitter/latest?limit=%d", limit)
	err = sdk.do_request_and_unmarshal(path, &tweets)
	return
}

func (sdk SDK) Twitter_historical_data(time_start time.Time) (tweets []Tweet, err error) {
	path := fmt.Sprintf("/v1/twitter/history?time_start=%s", time_start.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &tweets)
	return
}

func (sdk SDK) Twitter_historical_data_with_limit(time_start time.Time, limit uint32) (tweets []Tweet, err error) {
	path := fmt.Sprintf("/v1/twitter/history?time_start=%s&limit=%d", time_start.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &tweets)
	return
}

func (sdk SDK) Twitter_historical_data_with_time_end(time_start time.Time, time_end time.Time) (tweets []Tweet, err error) {
	path := fmt.Sprintf("/v1/twitter/history?time_start=%s&time_end=%s", time_start.Format(time.RFC3339), time_end.Format(time.RFC3339))
	err = sdk.do_request_and_unmarshal(path, &tweets)
	return
}

func (sdk SDK) Twitter_historical_data_with_time_end_and_limit(time_start time.Time, time_end time.Time, limit uint32) (tweets []Tweet, err error) {
	path := fmt.Sprintf("/v1/twitter/history?time_start=%s&time_end=%s&limit=%d", time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	err = sdk.do_request_and_unmarshal(path, &tweets)
	return
}

// twitter end

func (sdk SDK) do_request_and_unmarshal(path string, o interface{}) (err error) {
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return req_err
	}
	err = json.Unmarshal([]byte(text), o)
	return
}

func (sdk SDK) get_response_text(path string) (responseBody string, err error) {
	url := sdk.url + path
	req, req_err := http.NewRequest("GET", url, nil)
	if req_err != nil {
		return "", req_err
	}
	if sdk.api_key != "" {
		req.Header.Set("X-CoinAPI-Key", sdk.api_key)
	}

	client := &http.Client{}

	resp, resp_err := client.Do(req)
	if resp_err != nil {
		return "", resp_err
	}

	defer resp.Body.Close()
	body, read_err := ioutil.ReadAll(resp.Body)
	if read_err != nil {
		return "", read_err
	}

	if resp.StatusCode != http.StatusOK {
		error_message := ErrorMessage{}
		err := json.Unmarshal(body, &error_message)
		if err != nil && error_message.Message != "" {
			return "", errors.New(error_message.Message)
		}
		return "", fmt.Errorf("Server responded with status code: %d", resp.StatusCode)
	}
	fmt.Println("response:", string(body))
	return string(body), nil
}

