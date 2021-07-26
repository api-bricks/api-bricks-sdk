package types

import (
	"encoding/json"
	"fmt"
)

// PositionData The Position object.
type PositionData struct {
	// Exchange symbol.
	SymbolIdExchange *string `json:"symbol_id_exchange,omitempty"`
	// CoinAPI symbol.
	SymbolIdCoinapi *string `json:"symbol_id_coinapi,omitempty"`
	// Calculated average price of all fills on this position.
	AvgEntryPrice *float64 `json:"avg_entry_price,omitempty"`
	// The current position quantity.
	Quantity *float64 `json:"quantity,omitempty"`
	Side     *OrdSide `json:"side,omitempty"`
	// Unrealised profit or loss (PNL) of this position.
	UnrealizedPnl *float64 `json:"unrealized_pnl,omitempty"`
	// Leverage for this position reported by the exchange.
	Leverage *float64 `json:"leverage,omitempty"`
	// Is cross margin mode enable for this position?
	CrossMargin *bool `json:"cross_margin,omitempty"`
	// Liquidation price. If mark price will reach this value, the position will be liquidated.
	LiquidationPrice *float64                `json:"liquidation_price,omitempty"`
	RawData          *map[string]interface{} `json:"raw_data,omitempty"`
}

func (o *PositionData) String() string {
	return fmt.Sprintf("<PositionData> SymbolIdExchange: %v, SymbolIdCoinapi: %v, AvgEntryPrice: %v, Quantity: %v, Side: %v, UnrealizedPnl:  %v, Leverage  %v, Leverage: %v, CrossMargin: %v, LiquidationPrice: %v",
		o.SymbolIdExchange,
		o.SymbolIdCoinapi,
		o.AvgEntryPrice,
		o.Quantity,
		o.Side,
		o.UnrealizedPnl,
		o.Leverage,
		o.CrossMargin,
		o.LiquidationPrice,
	)
}

// NewPositionData instantiates a new PositionData object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPositionData() *PositionData {
	this := PositionData{}
	return &this
}

// NewPositionDataWithDefaults instantiates a new PositionData object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPositionDataWithDefaults() *PositionData {
	this := PositionData{}
	return &this
}

// GetSymbolIdExchange returns the SymbolIdExchange field value if set, zero value otherwise.
func (o *PositionData) GetSymbolIdExchange() string {
	if o == nil || o.SymbolIdExchange == nil {
		var ret string
		return ret
	}
	return *o.SymbolIdExchange
}

// GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetSymbolIdExchangeOk() (*string, bool) {
	if o == nil || o.SymbolIdExchange == nil {
		return nil, false
	}
	return o.SymbolIdExchange, true
}

// HasSymbolIdExchange returns a boolean if a field has been set.
func (o *PositionData) HasSymbolIdExchange() bool {
	if o != nil && o.SymbolIdExchange != nil {
		return true
	}

	return false
}

// SetSymbolIdExchange gets a reference to the given string and assigns it to the SymbolIdExchange field.
func (o *PositionData) SetSymbolIdExchange(v string) {
	o.SymbolIdExchange = &v
}

// GetSymbolIdCoinapi returns the SymbolIdCoinapi field value if set, zero value otherwise.
func (o *PositionData) GetSymbolIdCoinapi() string {
	if o == nil || o.SymbolIdCoinapi == nil {
		var ret string
		return ret
	}
	return *o.SymbolIdCoinapi
}

// GetSymbolIdCoinapiOk returns a tuple with the SymbolIdCoinapi field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetSymbolIdCoinapiOk() (*string, bool) {
	if o == nil || o.SymbolIdCoinapi == nil {
		return nil, false
	}
	return o.SymbolIdCoinapi, true
}

// HasSymbolIdCoinapi returns a boolean if a field has been set.
func (o *PositionData) HasSymbolIdCoinapi() bool {
	if o != nil && o.SymbolIdCoinapi != nil {
		return true
	}

	return false
}

// SetSymbolIdCoinapi gets a reference to the given string and assigns it to the SymbolIdCoinapi field.
func (o *PositionData) SetSymbolIdCoinapi(v string) {
	o.SymbolIdCoinapi = &v
}

// GetAvgEntryPrice returns the AvgEntryPrice field value if set, zero value otherwise.
func (o *PositionData) GetAvgEntryPrice() float64 {
	if o == nil || o.AvgEntryPrice == nil {
		var ret float64
		return ret
	}
	return *o.AvgEntryPrice
}

// GetAvgEntryPriceOk returns a tuple with the AvgEntryPrice field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetAvgEntryPriceOk() (*float64, bool) {
	if o == nil || o.AvgEntryPrice == nil {
		return nil, false
	}
	return o.AvgEntryPrice, true
}

// HasAvgEntryPrice returns a boolean if a field has been set.
func (o *PositionData) HasAvgEntryPrice() bool {
	if o != nil && o.AvgEntryPrice != nil {
		return true
	}

	return false
}

// SetAvgEntryPrice gets a reference to the given float64 and assigns it to the AvgEntryPrice field.
func (o *PositionData) SetAvgEntryPrice(v float64) {
	o.AvgEntryPrice = &v
}

// GetQuantity returns the Quantity field value if set, zero value otherwise.
func (o *PositionData) GetQuantity() float64 {
	if o == nil || o.Quantity == nil {
		var ret float64
		return ret
	}
	return *o.Quantity
}

// GetQuantityOk returns a tuple with the Quantity field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetQuantityOk() (*float64, bool) {
	if o == nil || o.Quantity == nil {
		return nil, false
	}
	return o.Quantity, true
}

// HasQuantity returns a boolean if a field has been set.
func (o *PositionData) HasQuantity() bool {
	if o != nil && o.Quantity != nil {
		return true
	}

	return false
}

// SetQuantity gets a reference to the given float64 and assigns it to the Quantity field.
func (o *PositionData) SetQuantity(v float64) {
	o.Quantity = &v
}

// GetSide returns the Side field value if set, zero value otherwise.
func (o *PositionData) GetSide() OrdSide {
	if o == nil || o.Side == nil {
		var ret OrdSide
		return ret
	}
	return *o.Side
}

// GetSideOk returns a tuple with the Side field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetSideOk() (*OrdSide, bool) {
	if o == nil || o.Side == nil {
		return nil, false
	}
	return o.Side, true
}

// HasSide returns a boolean if a field has been set.
func (o *PositionData) HasSide() bool {
	if o != nil && o.Side != nil {
		return true
	}

	return false
}

// SetSide gets a reference to the given OrdSide and assigns it to the Side field.
func (o *PositionData) SetSide(v OrdSide) {
	o.Side = &v
}

// GetUnrealizedPnl returns the UnrealizedPnl field value if set, zero value otherwise.
func (o *PositionData) GetUnrealizedPnl() float64 {
	if o == nil || o.UnrealizedPnl == nil {
		var ret float64
		return ret
	}
	return *o.UnrealizedPnl
}

// GetUnrealizedPnlOk returns a tuple with the UnrealizedPnl field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetUnrealizedPnlOk() (*float64, bool) {
	if o == nil || o.UnrealizedPnl == nil {
		return nil, false
	}
	return o.UnrealizedPnl, true
}

// HasUnrealizedPnl returns a boolean if a field has been set.
func (o *PositionData) HasUnrealizedPnl() bool {
	if o != nil && o.UnrealizedPnl != nil {
		return true
	}

	return false
}

// SetUnrealizedPnl gets a reference to the given float64 and assigns it to the UnrealizedPnl field.
func (o *PositionData) SetUnrealizedPnl(v float64) {
	o.UnrealizedPnl = &v
}

// GetLeverage returns the Leverage field value if set, zero value otherwise.
func (o *PositionData) GetLeverage() float64 {
	if o == nil || o.Leverage == nil {
		var ret float64
		return ret
	}
	return *o.Leverage
}

// GetLeverageOk returns a tuple with the Leverage field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetLeverageOk() (*float64, bool) {
	if o == nil || o.Leverage == nil {
		return nil, false
	}
	return o.Leverage, true
}

// HasLeverage returns a boolean if a field has been set.
func (o *PositionData) HasLeverage() bool {
	if o != nil && o.Leverage != nil {
		return true
	}

	return false
}

// SetLeverage gets a reference to the given float64 and assigns it to the Leverage field.
func (o *PositionData) SetLeverage(v float64) {
	o.Leverage = &v
}

// GetCrossMargin returns the CrossMargin field value if set, zero value otherwise.
func (o *PositionData) GetCrossMargin() bool {
	if o == nil || o.CrossMargin == nil {
		var ret bool
		return ret
	}
	return *o.CrossMargin
}

// GetCrossMarginOk returns a tuple with the CrossMargin field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetCrossMarginOk() (*bool, bool) {
	if o == nil || o.CrossMargin == nil {
		return nil, false
	}
	return o.CrossMargin, true
}

// HasCrossMargin returns a boolean if a field has been set.
func (o *PositionData) HasCrossMargin() bool {
	if o != nil && o.CrossMargin != nil {
		return true
	}

	return false
}

// SetCrossMargin gets a reference to the given bool and assigns it to the CrossMargin field.
func (o *PositionData) SetCrossMargin(v bool) {
	o.CrossMargin = &v
}

// GetLiquidationPrice returns the LiquidationPrice field value if set, zero value otherwise.
func (o *PositionData) GetLiquidationPrice() float64 {
	if o == nil || o.LiquidationPrice == nil {
		var ret float64
		return ret
	}
	return *o.LiquidationPrice
}

// GetLiquidationPriceOk returns a tuple with the LiquidationPrice field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetLiquidationPriceOk() (*float64, bool) {
	if o == nil || o.LiquidationPrice == nil {
		return nil, false
	}
	return o.LiquidationPrice, true
}

// HasLiquidationPrice returns a boolean if a field has been set.
func (o *PositionData) HasLiquidationPrice() bool {
	if o != nil && o.LiquidationPrice != nil {
		return true
	}

	return false
}

// SetLiquidationPrice gets a reference to the given float64 and assigns it to the LiquidationPrice field.
func (o *PositionData) SetLiquidationPrice(v float64) {
	o.LiquidationPrice = &v
}

// GetRawData returns the RawData field value if set, zero value otherwise.
func (o *PositionData) GetRawData() map[string]interface{} {
	if o == nil || o.RawData == nil {
		var ret map[string]interface{}
		return ret
	}
	return *o.RawData
}

// GetRawDataOk returns a tuple with the RawData field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PositionData) GetRawDataOk() (*map[string]interface{}, bool) {
	if o == nil || o.RawData == nil {
		return nil, false
	}
	return o.RawData, true
}

// HasRawData returns a boolean if a field has been set.
func (o *PositionData) HasRawData() bool {
	if o != nil && o.RawData != nil {
		return true
	}

	return false
}

// SetRawData gets a reference to the given map[string]interface{} and assigns it to the RawData field.
func (o *PositionData) SetRawData(v map[string]interface{}) {
	o.RawData = &v
}

func (o PositionData) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.SymbolIdExchange != nil {
		toSerialize["symbol_id_exchange"] = o.SymbolIdExchange
	}
	if o.SymbolIdCoinapi != nil {
		toSerialize["symbol_id_coinapi"] = o.SymbolIdCoinapi
	}
	if o.AvgEntryPrice != nil {
		toSerialize["avg_entry_price"] = o.AvgEntryPrice
	}
	if o.Quantity != nil {
		toSerialize["quantity"] = o.Quantity
	}
	if o.Side != nil {
		toSerialize["side"] = o.Side
	}
	if o.UnrealizedPnl != nil {
		toSerialize["unrealized_pnl"] = o.UnrealizedPnl
	}
	if o.Leverage != nil {
		toSerialize["leverage"] = o.Leverage
	}
	if o.CrossMargin != nil {
		toSerialize["cross_margin"] = o.CrossMargin
	}
	if o.LiquidationPrice != nil {
		toSerialize["liquidation_price"] = o.LiquidationPrice
	}
	if o.RawData != nil {
		toSerialize["raw_data"] = o.RawData
	}
	return json.Marshal(toSerialize)
}

type NullablePositionData struct {
	value *PositionData
	isSet bool
}

func (v NullablePositionData) Get() *PositionData {
	return v.value
}

func (v *NullablePositionData) Set(val *PositionData) {
	v.value = val
	v.isSet = true
}

func (v NullablePositionData) IsSet() bool {
	return v.isSet
}

func (v *NullablePositionData) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePositionData(val *PositionData) *NullablePositionData {
	return &NullablePositionData{value: val, isSet: true}
}

func (v NullablePositionData) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePositionData) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
