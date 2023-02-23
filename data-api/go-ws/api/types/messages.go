package types

import (
	"bytes"
	"encoding/json"
	"fmt"
	"github.com/shopspring/decimal"
	"log"
	"time"
)

// DataMessage composite type substitutes missing type inheritance.
type DataMessage struct {
	Type         *MessageType
	ErrorMessage *ErrorMessage
	ExchangeRate *ExchangeRate
	Orderbook    *OrderBook
	Ohlcv        *Ohlcv
	Quote        *Quote
	Reconnect    *Reconnect
	Hearbeat     *Heartbeat
	Trade        *Trade
	Volume       *Volume
}

func (s DataMessage) String() string {
	return fmt.Sprintf("<DataMessage>{Type: %v, ErrorMessage: %v, ExchangeRate %v, Orderbook: %v, Ohlcv: %v, Quote: %v, Reconnect: %v, Reconnect: %v, Hearbeat: %v, Trade: %v, Volume: %v}",
		s.Type,
		s.ErrorMessage,
		s.ExchangeRate,
		s.Orderbook,
		s.Ohlcv,
		s.Quote,
		s.Reconnect,
		s.Hearbeat,
		s.Trade,
		s.Volume,
	)
}

// Ask subtype for OrderBook
type Ask struct {
	Type  MessageType     `json:"type"`
	Price decimal.Decimal `json:"price"`
	Size  decimal.Decimal `json:"size"`
}

func (s Ask) String() string {
	return fmt.Sprintf("<Ask>{Type: %v, Price: %v, Size: %v}",
		s.Type,
		s.Price,
		s.Size,
	)
}

// Bid subtype for OrderBook
type Bid struct {
	Type  MessageType     `json:"type"`
	Price decimal.Decimal `json:"price"`
	Size  decimal.Decimal `json:"size"`
}

func (s Bid) String() string {
	return fmt.Sprintf("<Bid>{Type: %v, Price: %v, Size: %v}",
		s.Type,
		s.Price,
		s.Size,
	)
}

// ErrorMessage expect that the underlying WebSocket connection will be closed by us after sending an error message.
// https://docs.coinapi.io/#error-handling
type ErrorMessage struct {
	Type    MessageType `json:"type"`
	Message string      `json:"message"`
}

func (s ErrorMessage) String() string {
	return fmt.Sprintf("<ErrorMessage>{Type: %v, Message: %v}",
		s.Type,
		s.Message,
	)
}

// ExchangeRate message delivering updates of (VWAP-24H) Volume Weighted Average Price between pair of assets
// https://docs.coinapi.io/#exchange-rate-in
type ExchangeRate struct {
	Type           MessageType     `json:"type"`
	Asset_id_base  string          `json:"asset_id_base"`
	Asset_id_quote string          `json:"asset_id_quote"`
	Time           time.Time       `json:"time"`
	Rate           decimal.Decimal `json:"rate"`
}

func (s ExchangeRate) String() string {
	return fmt.Sprintf("<ExchangeRate>{Type: %v, Asset_id_base: %v, Asset_id_quote: %v Time: %v, Rate: %v, }",
		s.Type,
		s.Asset_id_base,
		s.Asset_id_quote,
		s.Time,
		s.Rate,
	)
}

// Hello After your WebSocket connection is established, you must send us a Hello message which contains:
// * Stream preferences
// * API key for authorization
// If your message will be incorrect, we will send you error message and disconnect connection afterwards.
// Hello message can be repeated, each one will cause subscription scope override without interruption of your WebSocket connection.
// https://docs.coinapi.io/#hello-out
type Hello struct {
	Type                                    MessageType `json:"type"`
	Api_key                                 string      `json:"apikey"`
	Heartbeat                               bool        `json:"heartbeat"`
	Subscribe_data_type                     []string    `json:"subscribe_data_type"`
	Subscribe_filter_symbol_id              []string    `json:"subscribe_filter_symbol_id"`
	Subscribe_filter_asset_id               []string    `json:"subscribe_filter_asset_id"`
	Subscribe_filter_period_id              []string    `json:"subscribe_filter_period_id"`
	Subscribe_filter_exchange_id            []string    `json:"subscribe_filter_exchange_id"`
	Subscribe_update_limit_ms_quote         uint32      `json:"subscribe_update_limit_ms_quote"`
	Subscribe_update_limit_ms_book_snapshot uint32      `json:"subscribe_update_limit_ms_book_snapshot"`
}

func (s Hello) String() string {
	return fmt.Sprintf("<Hello>{Type: %v, Api_key: %v, Heartbeat: %v Subscribe_data_type: %v, Subscribe_filter_symbol_id: %v, Subscribe_filter_asset_id: %v, Subscribe_filter_period_id: %v, Subscribe_filter_exchange_id: %v, Subscribe_update_limit_ms_quote: %v, Subscribe_update_limit_ms_book_snapshot: %v}",
		s.Type,
		s.Api_key,
		s.Heartbeat,
		s.Subscribe_data_type,
		s.Subscribe_filter_symbol_id,
		s.Subscribe_filter_asset_id,
		s.Subscribe_filter_period_id,
		s.Subscribe_filter_exchange_id,
		s.Subscribe_update_limit_ms_quote,
		s.Subscribe_update_limit_ms_book_snapshot,
	)
}
func (s Hello) GetJSON() (b []byte, err error) {

	b, err = json.Marshal(s)
	if err != nil {
		log.Println("Error marshaling Hello object")
		log.Println(err)
		return nil, err
	}

	var prettyJSON bytes.Buffer
	err = json.Indent(&prettyJSON, b, "", "\t")
	if err != nil {
		log.Println("Error making JSON pretty")
		log.Println(err)
		return nil, err
	}

	return b, nil
}

func (s Hello) PrintJSON() {
	b, err := s.GetJSON()
	if err != nil {
		log.Println(err)
	}
	println(string(b))

}

// OrderBook Book message is sent for each snapshot or update of the order book.
// After subscription to this data type is initialized, we immediately start delivering updates to the order book
// and at least one snapshot will be provided as soon as possible with the nearest update of the book.
// Book message represents total amount of bids and asks aggregated by price level.
// https://docs.coinapi.io/#orderbook-l2-full-in
type OrderBook struct {
	Type          MessageType `json:"type"`
	Symbol_id     string      `json:"symbol_id"`
	Sequence      uint32      `json:"sequence"`
	Time_exchange time.Time   `json:"time_exchange"`
	Time_coinapi  time.Time   `json:"time_coinapi"`
	Asks          []Bid       `json:"asks"`
	Bids          []Bid       `json:"bids"`
}

func (s OrderBook) String() string {
	return fmt.Sprintf("<OrderBook> { MessageType: %v, Symbol_id: %v, Sequence: %v, Time_exchange: %v, Time_coinapi: %v, Asks: %v, Bids: %v, }",
		s.Type,
		s.Symbol_id,
		s.Sequence,
		s.Time_exchange,
		s.Time_coinapi,
		s.Asks,
		s.Bids,
	)
}

// Ohlcv A OHLCV message is sent for each update on the periods between 1SEC and 1MIN.
// https://docs.coinapi.io/#ohlcv-in
type Ohlcv struct {
	Type              MessageType     `json:"type"`
	Symbol_id         string          `json:"symbol_id"`
	Sequence          uint32          `json:"sequence"`
	PeriodID          string          `json:"period_id"`
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

func (s Ohlcv) String() string {
	return fmt.Sprintf("<OHLCV> {Type: %v, Symbol_id: %v, Sequence: %v, Time_period_start: %v, Time_period_start: %v, Time_period_end: %v, Time_open: %v, Time_close: %v, Price_open: %v, Price_high: %v, Price_low: %v,Price_close: %v, Volume_traded: %v, Trades_count: %v}",
		s.Type,
		s.Symbol_id,
		s.Sequence,
		s.PeriodID,
		s.Time_period_start,
		s.Time_period_end,
		s.Time_open,
		s.Time_close,
		s.Price_open,
		s.Price_high,
		s.Price_low,
		s.Price_close,
		s.Volume_traded,
		s.Trades_count,
	)
}

// Quote Quote message is sent for each update on orderbook first best bid or ask level.
// https://docs.coinapi.io/#quotes-in
type Quote struct {
	Type          MessageType     `json:"type"`
	Symbol_id     string          `json:"symbol_id"`
	Sequence      uint32          `json:"sequence"`
	Time_exchange time.Time       `json:"time_exchange"`
	Time_coinapi  time.Time       `json:"time_coinapi"`
	Ask_price     decimal.Decimal `json:"ask_price"`
	Ask_size      decimal.Decimal `json:"ask_size"`
	Bid_price     decimal.Decimal `json:"bid_price"`
	Bid_size      decimal.Decimal `json:"bid_size"`
}

func (s Quote) String() string {
	return fmt.Sprintf("<Quote> {Type: %v, Symbol_id: %v, Sequence: %v, Time_exchange: %v, Time_coinapi: %v, Ask_price: %v, Ask_siz: %v, Bid_price: %v, Bid_size: %v}",
		s.Type,
		s.Symbol_id,
		s.Sequence,
		s.Time_exchange,
		s.Time_coinapi,
		s.Ask_price,
		s.Ask_size,
		s.Bid_price,
		s.Bid_size,
	)
}

// Reconnect message is sent by the server to all connected clients when the server will be restarted or shut down at the defined exact time included in the message content. After the period specified in message passes,
// the client must expect that the underlying WebSocket connection will be closed from the server-side.
// A new connection will automatically be established to a different server.
// The correct way of handling this event is documented online:
// https://docs.coinapi.io/#reconnect-in
type Reconnect struct {
	Type           MessageType `json:"type"`
	Within_seconds uint32      `json:"within_seconds"`
	Before_time    time.Time   `json:"before_time"`
}

func (s Reconnect) String() string {
	return fmt.Sprintf("<Reconnect>{Type: %v, Within_seconds: %v, Before_time: %v,}",
		s.Type,
		s.Within_seconds,
		s.Before_time,
	)
}

// Heartbeat message is sent to you every time there is one second of silence in communication between us,
// if you agreed on this feature in Hello message.
// https://docs.coinapi.io/#heartbeat-in
type Heartbeat struct {
	Type MessageType `json:"type"`
}

func (s Heartbeat) String() string {
	return fmt.Sprintf("<Heartbeat>{Type: %v}",
		s.Type,
	)
}

// Trade message is sent for every executed transaction (orderbook match).
// https://docs.coinapi.io/#trades-in
type Trade struct {
	Type          MessageType     `json:"type"`
	Symbol_id     string          `json:"symbol_id"`
	Sequence      uint32          `json:"sequence"`
	Time_exchange time.Time       `json:"time_exchange"`
	Time_coinapi  time.Time       `json:"time_coinapi"`
	Uuid          string          `json:"uuid"`
	Price         decimal.Decimal `json:"price"`
	Size          decimal.Decimal `json:"size"`
	Taker_side    string          `json:"taker_side"`
}

func (s Trade) String() string {
	return fmt.Sprintf("<Trade> { MessageType: %v, Symbol_id: %v, Sequence: %v, Time_exchange: %v, Time_coinapi: %v, Uuid: %v, Price: %v, Size: %v, Taker_side: %v}",
		s.Type,
		s.Symbol_id,
		s.Sequence,
		s.Time_exchange,
		s.Time_coinapi,
		s.Uuid,
		s.Price,
		s.Size,
		s.Taker_side,
	)
}

// Volume message is sent periodically to update last volume information per symbols on periods 1HRS, 1DAY and 1MTH.
// The 1HRS and 1DAY volumes are updated every minute and 1MTH every 10 minutes.
// Subscription to this message type triggers redelivery of the last published messages for each period.
// https://docs.coinapi.io/#volume-in
type Volume struct {
	Type             MessageType      `json:"type"`
	Period_id        string           `json:"period_id"`
	Time_coinapi     time.Time        `json:"time_coinapi"`
	Volume_by_symbol []VolumeBySymbol `json:"volume_by_symbol"`
}

func (s Volume) String() string {
	return fmt.Sprintf("<Volume>{Type: %v, Period_id: %v, Time_coinapi: %v Volume_by_symbol: %v}",
		s.Type,
		s.Period_id,
		s.Time_coinapi,
		s.Volume_by_symbol,
	)
}

// VolumeBySymbol subtype for Volume
// https://docs.coinapi.io/#volume-in
type VolumeBySymbol struct {
	Symbol_id      string          `json:"symbol_id"`
	Asset_id_base  string          `json:"asset_id_base"`
	Asset_id_quote string          `json:"asset_id_quote"`
	Volume_base    decimal.Decimal `json:"volume_base"`
	Volume_quote   decimal.Decimal `json:"volume_quote"`
}

func (s VolumeBySymbol) String() string {
	return fmt.Sprintf("<VolumeBySymbol>{Symbol_id: %v, Asset_id_base: %v, Asset_id_quote: %v, Volume_base: %v, Volume_quote: %v, }",
		s.Symbol_id,
		s.Asset_id_base,
		s.Asset_id_quote,
		s.Volume_base,
		s.Volume_quote,
	)
}
