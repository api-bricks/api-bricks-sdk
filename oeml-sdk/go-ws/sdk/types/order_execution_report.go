package types

import (
	"encoding/json"
	"fmt"
)

// OrderExecutionReport The order execution report object.
type OrderExecutionReport struct {
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
	// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
	ClientOrderIdFormatExchange string `json:"client_order_id_format_exchange"`
	// Unique identifier of the order assigned by the exchange or executing system.
	ExchangeOrderId *string `json:"exchange_order_id,omitempty"`
	// Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
	AmountOpen float64 `json:"amount_open"`
	// Total quantity filled.
	AmountFilled float64 `json:"amount_filled"`
	// Calculated average price of all fills on this order.
	AvgPx  *float64  `json:"avg_px,omitempty"`
	Status OrdStatus `json:"status"`
	// Timestamped history of order status changes.
	StatusHistory *[][]string `json:"status_history,omitempty"`
	// Error message.
	ErrorMessage *string `json:"error_message,omitempty"`
	// Relay fill information on working orders.
	Fills *[]Fills `json:"fills,omitempty"`
}

func (o *OrderExecutionReport) String() string {
	return fmt.Sprintf("<OrderExecutionReport> \n ExchangeId: %v, \n ClientOrderId: %v, \n SymbolIdExchange: %v, \n SymbolIdCoinapi: %v, \n AmountOrder: %v, \n Price: %v, \n Side: %v, \n OrderType: %v, \n TimeInForce: %v, \n ExpireTime: %v, \n ExecInst: %v, \n ClientOrderIdFormatExchange: %v, \n ExchangeOrderId: %v, \n AmountOpen: %v, \n AmountFilled: %v, \n AvgPrice: %v, \n Status: %v, \n StatusHistory: %v, \n ErrorMessage: %v, \n Fills: %v",
		o.GetExchangeId(),
		o.GetClientOrderId(),
		o.GetSymbolIdExchange(),
		o.GetSymbolIdCoinapi(),
		o.GetAmountOrder(),
		o.GetPrice(),
		o.GetSide(),
		o.GetOrderType(),
		o.GetTimeInForce(),
		o.GetExpireTime(),
		o.GetExecInst(),
		o.GetClientOrderIdFormatExchange(),
		o.GetExchangeOrderId(),
		o.GetAmountOpen(),
		o.GetAmountFilled(),
		o.GetAvgPx(),
		o.GetStatus(),
		o.GetStatusHistory(),
		o.GetErrorMessage(),
		o.GetFills(),
	)
}

// NewOrderExecutionReport instantiates a new OrderExecutionReport object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOrderExecutionReport(exchangeId string, clientOrderId string, amountOrder float64, price float64, side OrdSide, orderType OrdType, timeInForce TimeInForce, clientOrderIdFormatExchange string, amountOpen float64, amountFilled float64, status OrdStatus) *OrderExecutionReport {
	this := OrderExecutionReport{}
	this.ExchangeId = exchangeId
	this.ClientOrderId = clientOrderId
	this.AmountOrder = amountOrder
	this.Price = price
	this.Side = side
	this.OrderType = orderType
	this.TimeInForce = timeInForce
	this.ClientOrderIdFormatExchange = clientOrderIdFormatExchange
	this.AmountOpen = amountOpen
	this.AmountFilled = amountFilled
	this.Status = status
	return &this
}

// NewOrderExecutionReportWithDefaults instantiates a new OrderExecutionReport object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOrderExecutionReportWithDefaults() *OrderExecutionReport {
	this := OrderExecutionReport{}
	return &this
}

// GetExchangeId returns the ExchangeId field value
func (o *OrderExecutionReport) GetExchangeId() string {
	if o == nil {
		var ret string
		return ret
	}
	return o.ExchangeId
}

// GetExchangeIdOk returns a tuple with the ExchangeId field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetExchangeIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ExchangeId, true
}

// SetExchangeId sets field value
func (o *OrderExecutionReport) SetExchangeId(v string) {
	o.ExchangeId = v
}

// GetClientOrderId returns the ClientOrderId field value
func (o *OrderExecutionReport) GetClientOrderId() string {
	if o == nil {
		var ret string
		return ret
	}
	return o.ClientOrderId
}

// GetClientOrderIdOk returns a tuple with the ClientOrderId field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetClientOrderIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ClientOrderId, true
}

// SetClientOrderId sets field value
func (o *OrderExecutionReport) SetClientOrderId(v string) {
	o.ClientOrderId = v
}

// GetSymbolIdExchange returns the SymbolIdExchange field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetSymbolIdExchange() string {
	if o == nil || o.SymbolIdExchange == nil {
		var ret string
		return ret
	}
	return *o.SymbolIdExchange
}

// GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetSymbolIdExchangeOk() (*string, bool) {
	if o == nil || o.SymbolIdExchange == nil {
		return nil, false
	}
	return o.SymbolIdExchange, true
}

// HasSymbolIdExchange returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasSymbolIdExchange() bool {
	if o != nil && o.SymbolIdExchange != nil {
		return true
	}

	return false
}

// SetSymbolIdExchange gets a reference to the given string and assigns it to the SymbolIdExchange field.
func (o *OrderExecutionReport) SetSymbolIdExchange(v string) {
	o.SymbolIdExchange = &v
}

// GetSymbolIdCoinapi returns the SymbolIdCoinapi field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetSymbolIdCoinapi() string {
	if o == nil || o.SymbolIdCoinapi == nil {
		var ret string
		return ret
	}
	return *o.SymbolIdCoinapi
}

// GetSymbolIdCoinapiOk returns a tuple with the SymbolIdCoinapi field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetSymbolIdCoinapiOk() (*string, bool) {
	if o == nil || o.SymbolIdCoinapi == nil {
		return nil, false
	}
	return o.SymbolIdCoinapi, true
}

// HasSymbolIdCoinapi returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasSymbolIdCoinapi() bool {
	if o != nil && o.SymbolIdCoinapi != nil {
		return true
	}
	return false
}

// SetSymbolIdCoinapi gets a reference to the given string and assigns it to the SymbolIdCoinapi field.
func (o *OrderExecutionReport) SetSymbolIdCoinapi(v string) {
	o.SymbolIdCoinapi = &v
}

// GetAmountOrder returns the AmountOrder field value
func (o *OrderExecutionReport) GetAmountOrder() float64 {
	if o == nil {
		var ret float64
		return ret
	}
	return o.AmountOrder
}

// GetAmountOrderOk returns a tuple with the AmountOrder field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetAmountOrderOk() (*float64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.AmountOrder, true
}

// SetAmountOrder sets field value
func (o *OrderExecutionReport) SetAmountOrder(v float64) {
	o.AmountOrder = v
}

// GetPrice returns the Price field value
func (o *OrderExecutionReport) GetPrice() float64 {
	if o == nil {
		var ret float64
		return ret
	}
	return o.Price
}

// GetPriceOk returns a tuple with the Price field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetPriceOk() (*float64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Price, true
}

// SetPrice sets field value
func (o *OrderExecutionReport) SetPrice(v float64) {
	o.Price = v
}

// GetSide returns the Side field value
func (o *OrderExecutionReport) GetSide() OrdSide {
	if o == nil {
		var ret OrdSide
		return ret
	}

	return o.Side
}

// GetSideOk returns a tuple with the Side field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetSideOk() (*OrdSide, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Side, true
}

// SetSide sets field value
func (o *OrderExecutionReport) SetSide(v OrdSide) {
	o.Side = v
}

// GetOrderType returns the OrderType field value
func (o *OrderExecutionReport) GetOrderType() OrdType {
	if o == nil {
		var ret OrdType
		return ret
	}

	return o.OrderType
}

// GetOrderTypeOk returns a tuple with the OrderType field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetOrderTypeOk() (*OrdType, bool) {
	if o == nil {
		return nil, false
	}
	return &o.OrderType, true
}

// SetOrderType sets field value
func (o *OrderExecutionReport) SetOrderType(v OrdType) {
	o.OrderType = v
}

// GetTimeInForce returns the TimeInForce field value
func (o *OrderExecutionReport) GetTimeInForce() TimeInForce {
	if o == nil {
		var ret TimeInForce
		return ret
	}

	return o.TimeInForce
}

// GetTimeInForceOk returns a tuple with the TimeInForce field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetTimeInForceOk() (*TimeInForce, bool) {
	if o == nil {
		return nil, false
	}
	return &o.TimeInForce, true
}

// SetTimeInForce sets field value
func (o *OrderExecutionReport) SetTimeInForce(v TimeInForce) {
	o.TimeInForce = v
}

// GetExpireTime returns the ExpireTime field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetExpireTime() string {
	if o == nil || o.ExpireTime == nil {
		var ret string
		return ret
	}
	return *o.ExpireTime
}

// GetExpireTimeOk returns a tuple with the ExpireTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetExpireTimeOk() (*string, bool) {
	if o == nil || o.ExpireTime == nil {
		return nil, false
	}
	return o.ExpireTime, true
}

// HasExpireTime returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasExpireTime() bool {
	if o != nil && o.ExpireTime != nil {
		return true
	}

	return false
}

// SetExpireTime gets a reference to the given string and assigns it to the ExpireTime field.
func (o *OrderExecutionReport) SetExpireTime(v string) {
	o.ExpireTime = &v
}

// GetExecInst returns the ExecInst field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetExecInst() []string {
	if o == nil || o.ExecInst == nil {
		var ret []string
		return ret
	}
	return *o.ExecInst
}

// GetExecInstOk returns a tuple with the ExecInst field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetExecInstOk() (*[]string, bool) {
	if o == nil || o.ExecInst == nil {
		return nil, false
	}
	return o.ExecInst, true
}

// HasExecInst returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasExecInst() bool {
	if o != nil && o.ExecInst != nil {
		return true
	}

	return false
}

// SetExecInst gets a reference to the given []string and assigns it to the ExecInst field.
func (o *OrderExecutionReport) SetExecInst(v []string) {
	o.ExecInst = &v
}

// GetClientOrderIdFormatExchange returns the ClientOrderIdFormatExchange field value
func (o *OrderExecutionReport) GetClientOrderIdFormatExchange() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ClientOrderIdFormatExchange
}

// GetClientOrderIdFormatExchangeOk returns a tuple with the ClientOrderIdFormatExchange field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetClientOrderIdFormatExchangeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ClientOrderIdFormatExchange, true
}

// SetClientOrderIdFormatExchange sets field value
func (o *OrderExecutionReport) SetClientOrderIdFormatExchange(v string) {
	o.ClientOrderIdFormatExchange = v
}

// GetExchangeOrderId returns the ExchangeOrderId field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetExchangeOrderId() string {
	if o == nil || o.ExchangeOrderId == nil {
		var ret string
		return ret
	}
	return *o.ExchangeOrderId
}

// GetExchangeOrderIdOk returns a tuple with the ExchangeOrderId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetExchangeOrderIdOk() (*string, bool) {
	if o == nil || o.ExchangeOrderId == nil {
		return nil, false
	}
	return o.ExchangeOrderId, true
}

// HasExchangeOrderId returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasExchangeOrderId() bool {
	if o != nil && o.ExchangeOrderId != nil {
		return true
	}

	return false
}

// SetExchangeOrderId gets a reference to the given string and assigns it to the ExchangeOrderId field.
func (o *OrderExecutionReport) SetExchangeOrderId(v string) {
	o.ExchangeOrderId = &v
}

// GetAmountOpen returns the AmountOpen field value
func (o *OrderExecutionReport) GetAmountOpen() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.AmountOpen
}

// GetAmountOpenOk returns a tuple with the AmountOpen field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetAmountOpenOk() (*float64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.AmountOpen, true
}

// SetAmountOpen sets field value
func (o *OrderExecutionReport) SetAmountOpen(v float64) {
	o.AmountOpen = v
}

// GetAmountFilled returns the AmountFilled field value
func (o *OrderExecutionReport) GetAmountFilled() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.AmountFilled
}

// GetAmountFilledOk returns a tuple with the AmountFilled field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetAmountFilledOk() (*float64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.AmountFilled, true
}

// SetAmountFilled sets field value
func (o *OrderExecutionReport) SetAmountFilled(v float64) {
	o.AmountFilled = v
}

// GetAvgPx returns the AvgPx field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetAvgPx() float64 {
	if o == nil || o.AvgPx == nil {
		var ret float64
		return ret
	}
	return *o.AvgPx
}

// GetAvgPxOk returns a tuple with the AvgPx field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetAvgPxOk() (*float64, bool) {
	if o == nil || o.AvgPx == nil {
		return nil, false
	}
	return o.AvgPx, true
}

// HasAvgPx returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasAvgPx() bool {
	if o != nil && o.AvgPx != nil {
		return true
	}

	return false
}

// SetAvgPx gets a reference to the given float64 and assigns it to the AvgPx field.
func (o *OrderExecutionReport) SetAvgPx(v float64) {
	o.AvgPx = &v
}

// GetStatus returns the Status field value
func (o *OrderExecutionReport) GetStatus() OrdStatus {
	if o == nil {
		var ret OrdStatus
		return ret
	}

	return o.Status
}

// GetStatusOk returns a tuple with the Status field value
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetStatusOk() (*OrdStatus, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Status, true
}

// SetStatus sets field value
func (o *OrderExecutionReport) SetStatus(v OrdStatus) {
	o.Status = v
}

// GetStatusHistory returns the StatusHistory field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetStatusHistory() [][]string {
	if o == nil || o.StatusHistory == nil {
		var ret [][]string
		return ret
	}
	return *o.StatusHistory
}

// GetStatusHistoryOk returns a tuple with the StatusHistory field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetStatusHistoryOk() (*[][]string, bool) {
	if o == nil || o.StatusHistory == nil {
		return nil, false
	}
	return o.StatusHistory, true
}

// HasStatusHistory returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasStatusHistory() bool {
	if o != nil && o.StatusHistory != nil {
		return true
	}

	return false
}

// SetStatusHistory gets a reference to the given [][]string and assigns it to the StatusHistory field.
func (o *OrderExecutionReport) SetStatusHistory(v [][]string) {
	o.StatusHistory = &v
}

// GetErrorMessage returns the ErrorMessage field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetErrorMessage() string {
	if o == nil || o.ErrorMessage == nil {
		var ret string
		return ret
	}
	return *o.ErrorMessage
}

// GetErrorMessageOk returns a tuple with the ErrorMessage field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetErrorMessageOk() (*string, bool) {
	if o == nil || o.ErrorMessage == nil {
		return nil, false
	}
	return o.ErrorMessage, true
}

// HasErrorMessage returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasErrorMessage() bool {
	if o != nil && o.ErrorMessage != nil {
		return true
	}

	return false
}

// SetErrorMessage gets a reference to the given string and assigns it to the ErrorMessage field.
func (o *OrderExecutionReport) SetErrorMessage(v string) {
	o.ErrorMessage = &v
}

// GetFills returns the Fills field value if set, zero value otherwise.
func (o *OrderExecutionReport) GetFills() []Fills {
	if o == nil || o.Fills == nil {
		var ret []Fills
		return ret
	}
	return *o.Fills
}

// GetFillsOk returns a tuple with the Fills field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OrderExecutionReport) GetFillsOk() (*[]Fills, bool) {
	if o == nil || o.Fills == nil {
		return nil, false
	}
	return o.Fills, true
}

// HasFills returns a boolean if a field has been set.
func (o *OrderExecutionReport) HasFills() bool {
	if o != nil && o.Fills != nil {
		return true
	}

	return false
}

// SetFills gets a reference to the given []Fills and assigns it to the Fills field.
func (o *OrderExecutionReport) SetFills(v []Fills) {
	o.Fills = &v
}

func (o OrderExecutionReport) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["exchange_id"] = o.ExchangeId
	}
	if true {
		toSerialize["client_order_id"] = o.ClientOrderId
	}
	if o.SymbolIdExchange != nil {
		toSerialize["symbol_id_exchange"] = o.SymbolIdExchange
	}
	if o.SymbolIdCoinapi != nil {
		toSerialize["symbol_id_coinapi"] = o.SymbolIdCoinapi
	}
	if true {
		toSerialize["amount_order"] = o.AmountOrder
	}
	if true {
		toSerialize["price"] = o.Price
	}
	if true {
		toSerialize["side"] = o.Side
	}
	if true {
		toSerialize["order_type"] = o.OrderType
	}
	if true {
		toSerialize["time_in_force"] = o.TimeInForce
	}
	if o.ExpireTime != nil {
		toSerialize["expire_time"] = o.ExpireTime
	}
	if o.ExecInst != nil {
		toSerialize["exec_inst"] = o.ExecInst
	}
	if true {
		toSerialize["client_order_id_format_exchange"] = o.ClientOrderIdFormatExchange
	}
	if o.ExchangeOrderId != nil {
		toSerialize["exchange_order_id"] = o.ExchangeOrderId
	}
	if true {
		toSerialize["amount_open"] = o.AmountOpen
	}
	if true {
		toSerialize["amount_filled"] = o.AmountFilled
	}
	if o.AvgPx != nil {
		toSerialize["avg_px"] = o.AvgPx
	}
	if true {
		toSerialize["status"] = o.Status
	}
	if o.StatusHistory != nil {
		toSerialize["status_history"] = o.StatusHistory
	}
	if o.ErrorMessage != nil {
		toSerialize["error_message"] = o.ErrorMessage
	}
	if o.Fills != nil {
		toSerialize["fills"] = o.Fills
	}
	return json.Marshal(toSerialize)
}

type NullableOrderExecutionReport struct {
	value *OrderExecutionReport
	isSet bool
}

func (v NullableOrderExecutionReport) Get() *OrderExecutionReport {
	return v.value
}

func (v *NullableOrderExecutionReport) Set(val *OrderExecutionReport) {
	v.value = val
	v.isSet = true
}

func (v NullableOrderExecutionReport) IsSet() bool {
	return v.isSet
}

func (v *NullableOrderExecutionReport) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOrderExecutionReport(val *OrderExecutionReport) *NullableOrderExecutionReport {
	return &NullableOrderExecutionReport{value: val, isSet: true}
}

func (v NullableOrderExecutionReport) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOrderExecutionReport) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
