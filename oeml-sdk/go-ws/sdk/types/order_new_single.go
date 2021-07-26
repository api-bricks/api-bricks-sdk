package types

import (
	"bytes"
	"encoding/json"
	"github.com/iancoleman/orderedmap"
)

// OrderNewSingleRequest The new order message.
type OrderNewSingleRequest struct {
	// Message type to identity the request
	Type MessageType `json:"type"`
	// Exchange identifier used to identify the routing destination.
	ExchangeId string `json:"exchange_id"`
	// The unique identifier of the order assigned by the client.
	ClientOrderId string `json:"client_order_id"`
	// Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
	SymbolIdExchange *string `json:"symbol_id_exchange,omitempty"`
	// CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
	SymbolIdCoinapi *string `json:"symbol_id_coinapi,omitempty"`
	// Order quantity.
	AmountOrder float64 `json:"amount_order"`
	// Order price.
	Price       float64     `json:"price"`
	Side        OrdSide     `json:"side"`
	OrderType   OrdType     `json:"order_type"`
	TimeInForce TimeInForce `json:"time_in_force"`
	// Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
	ExpireTime *string `json:"expire_time,omitempty"`
	// Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>
	ExecInst *[]string `json:"exec_inst,omitempty"`
}

// GetExchangeId returns the ExchangeId field value
func (o *OrderNewSingleRequest) GetExchangeId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ExchangeId
}

// GetExchangeIdOk returns a tuple with the ExchangeId field value
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetExchangeIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ExchangeId, true
}

// SetExchangeId sets field value
func (o *OrderNewSingleRequest) SetExchangeId(v string) {
	o.ExchangeId = v
}

// GetClientOrderId returns the ClientOrderId field value
func (o *OrderNewSingleRequest) GetClientOrderId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ClientOrderId
}

// GetClientOrderIdOk returns a tuple with the ClientOrderId field value
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetClientOrderIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ClientOrderId, true
}

// SetClientOrderId sets field value
func (o *OrderNewSingleRequest) SetClientOrderId(v string) {
	o.ClientOrderId = v
}

// GetSymbolIdExchange returns the SymbolIdExchange field value if set, zero value otherwise.
func (o *OrderNewSingleRequest) GetSymbolIdExchange() string {
	if o == nil || o.SymbolIdExchange == nil {
		var ret string
		return ret
	}
	return *o.SymbolIdExchange
}

// GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetSymbolIdExchangeOk() (*string, bool) {
	if o == nil || o.SymbolIdExchange == nil {
		return nil, false
	}
	return o.SymbolIdExchange, true
}

// HasSymbolIdExchange returns a boolean if a field has been set.
func (o *OrderNewSingleRequest) HasSymbolIdExchange() bool {
	if o != nil && o.SymbolIdExchange != nil {
		return true
	}

	return false
}

// SetSymbolIdExchange gets a reference to the given string and assigns it to the SymbolIdExchange field.
func (o *OrderNewSingleRequest) SetSymbolIdExchange(v string) {
	o.SymbolIdExchange = &v
}

// GetSymbolIdCoinapi returns the SymbolIdCoinapi field value if set, zero value otherwise.
func (o *OrderNewSingleRequest) GetSymbolIdCoinapi() string {
	if o == nil || o.SymbolIdCoinapi == nil {
		var ret string
		return ret
	}
	return *o.SymbolIdCoinapi
}

// GetSymbolIdCoinapiOk returns a tuple with the SymbolIdCoinapi field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetSymbolIdCoinapiOk() (*string, bool) {
	if o == nil || o.SymbolIdCoinapi == nil {
		return nil, false
	}
	return o.SymbolIdCoinapi, true
}

// HasSymbolIdCoinapi returns a boolean if a field has been set.
func (o *OrderNewSingleRequest) HasSymbolIdCoinapi() bool {
	if o != nil && o.SymbolIdCoinapi != nil {
		return true
	}

	return false
}

// SetSymbolIdCoinapi gets a reference to the given string and assigns it to the SymbolIdCoinapi field.
func (o *OrderNewSingleRequest) SetSymbolIdCoinapi(v string) {
	o.SymbolIdCoinapi = &v
}

// GetAmountOrder returns the AmountOrder field value
func (o *OrderNewSingleRequest) GetAmountOrder() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.AmountOrder
}

// GetAmountOrderOk returns a tuple with the AmountOrder field value
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetAmountOrderOk() (*float64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.AmountOrder, true
}

// SetAmountOrder sets field value
func (o *OrderNewSingleRequest) SetAmountOrder(v float64) {
	o.AmountOrder = v
}

// GetPrice returns the Price field value
func (o *OrderNewSingleRequest) GetPrice() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.Price
}

// GetPriceOk returns a tuple with the Price field value
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetPriceOk() (*float64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Price, true
}

// SetPrice sets field value
func (o *OrderNewSingleRequest) SetPrice(v float64) {
	o.Price = v
}

// GetSide returns the Side field value
func (o *OrderNewSingleRequest) GetSide() OrdSide {
	if o == nil {
		var ret OrdSide
		return ret
	}

	return o.Side
}

// GetSideOk returns a tuple with the Side field value
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetSideOk() (*OrdSide, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Side, true
}

// SetSide sets field value
func (o *OrderNewSingleRequest) SetSide(v OrdSide) {
	o.Side = v
}

// GetOrderType returns the OrderType field value
func (o *OrderNewSingleRequest) GetOrderType() OrdType {
	if o == nil {
		var ret OrdType
		return ret
	}

	return o.OrderType
}

// GetOrderTypeOk returns a tuple with the OrderType field value
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetOrderTypeOk() (*OrdType, bool) {
	if o == nil {
		return nil, false
	}
	return &o.OrderType, true
}

// SetOrderType sets field value
func (o *OrderNewSingleRequest) SetOrderType(v OrdType) {
	o.OrderType = v
}

// GetTimeInForce returns the TimeInForce field value
func (o *OrderNewSingleRequest) GetTimeInForce() TimeInForce {
	if o == nil {
		var ret TimeInForce
		return ret
	}

	return o.TimeInForce
}

// GetTimeInForceOk returns a tuple with the TimeInForce field value
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetTimeInForceOk() (*TimeInForce, bool) {
	if o == nil {
		return nil, false
	}
	return &o.TimeInForce, true
}

// SetTimeInForce sets field value
func (o *OrderNewSingleRequest) SetTimeInForce(v TimeInForce) {
	o.TimeInForce = v
}

// GetExpireTime returns the ExpireTime field value if set, zero value otherwise.
func (o *OrderNewSingleRequest) GetExpireTime() string {
	if o == nil || o.ExpireTime == nil {
		var ret string
		return ret
	}
	return *o.ExpireTime
}

// GetExpireTimeOk returns a tuple with the ExpireTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetExpireTimeOk() (*string, bool) {
	if o == nil || o.ExpireTime == nil {
		return nil, false
	}
	return o.ExpireTime, true
}

// HasExpireTime returns a boolean if a field has been set.
func (o *OrderNewSingleRequest) HasExpireTime() bool {
	if o != nil && o.ExpireTime != nil {
		return true
	}

	return false
}

// SetExpireTime gets a reference to the given string and assigns it to the ExpireTime field.
func (o *OrderNewSingleRequest) SetExpireTime(v string) {
	o.ExpireTime = &v
}

// GetExecInst returns the ExecInst field value if set, zero value otherwise.
func (o *OrderNewSingleRequest) GetExecInst() []string {
	if o == nil || o.ExecInst == nil {
		var ret []string
		return ret
	}
	return *o.ExecInst
}

// GetExecInstOk returns a tuple with the ExecInst field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderNewSingleRequest) GetExecInstOk() (*[]string, bool) {
	if o == nil || o.ExecInst == nil {
		return nil, false
	}
	return o.ExecInst, true
}

// HasExecInst returns a boolean if a field has been set.
func (o *OrderNewSingleRequest) HasExecInst() bool {
	if o != nil && o.ExecInst != nil {
		return true
	}

	return false
}

// SetExecInst gets a reference to the given []string and assigns it to the ExecInst field.
func (o *OrderNewSingleRequest) SetExecInst(v []string) {
	o.ExecInst = &v
}

func (o OrderNewSingleRequest) MarshalJSON() ([]byte, error) {
	toSerialize := orderedmap.New()
	toSerialize.SetEscapeHTML(false)
	if true {
		toSerialize.Set("type", o.Type)
	}
	if true {
		toSerialize.Set("exchange_id", o.ExchangeId)
	}
	if true {
		toSerialize.Set("client_order_id", o.ClientOrderId)
	}
	if o.SymbolIdExchange != nil {
		toSerialize.Set("symbol_id_exchange", o.SymbolIdExchange)
	}
	if o.SymbolIdCoinapi != nil {
		toSerialize.Set("symbol_id_coinapi", o.SymbolIdCoinapi)
	}
	if true {
		toSerialize.Set("amount_order", o.AmountOrder)
	}
	if true {
		toSerialize.Set("price", o.Price)
	}
	if true {
		toSerialize.Set("side", o.Side)
	}
	if true {
		toSerialize.Set("order_type", o.OrderType)
	}
	if true {
		toSerialize.Set("time_in_force", o.TimeInForce)
	}
	if o.ExpireTime != nil {
		toSerialize.Set("expire_time", o.ExpireTime)
	}
	if o.ExecInst != nil {
		toSerialize.Set("exec_inst", o.ExecInst)
	}

	var b []byte
	b, err := json.Marshal(toSerialize)
	var prettyJSON bytes.Buffer
	err = json.Indent(&prettyJSON, b, "", "\t")

	return b, err
}
