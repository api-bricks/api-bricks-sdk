# OrderExecutionReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Exchange identifier used to identify the routing destination. | 
**ClientOrderId** | **string** | The unique identifier of the order assigned by the client. | 
**SymbolIdExchange** | Pointer to **string** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**SymbolIdCoinapi** | Pointer to **string** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**AmountOrder** | **float32** | Order quantity. | 
**Price** | **float32** | Order price. | 
**Side** | [**OrdSide**](OrdSide.md) |  | 
**OrderType** | [**OrdType**](OrdType.md) |  | 
**TimeInForce** | [**TimeInForce**](TimeInForce.md) |  | 
**ExpireTime** | Pointer to **string** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**ExecInst** | Pointer to **[]string** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 
**ClientOrderIdFormatExchange** | **string** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**ExchangeOrderId** | Pointer to **string** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**AmountOpen** | **float32** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**AmountFilled** | **float32** | Total quantity filled. | 
**AvgPx** | Pointer to **float32** | Calculated average price of all fills on this order. | [optional] 
**Status** | [**OrdStatus**](OrdStatus.md) |  | 
**StatusHistory** | Pointer to **[][]string** | Timestamped history of order status changes. | [optional] 
**ErrorMessage** | Pointer to **string** | Error message. | [optional] 
**Fills** | Pointer to [**[]Fills**](Fills.md) | Relay fill information on working orders. | [optional] 

## Methods

### NewOrderExecutionReport

`func NewOrderExecutionReport(exchangeId string, clientOrderId string, amountOrder float32, price float32, side OrdSide, orderType OrdType, timeInForce TimeInForce, clientOrderIdFormatExchange string, amountOpen float32, amountFilled float32, status OrdStatus, ) *OrderExecutionReport`

NewOrderExecutionReport instantiates a new OrderExecutionReport object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrderExecutionReportWithDefaults

`func NewOrderExecutionReportWithDefaults() *OrderExecutionReport`

NewOrderExecutionReportWithDefaults instantiates a new OrderExecutionReport object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *OrderExecutionReport) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *OrderExecutionReport) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *OrderExecutionReport) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.


### GetClientOrderId

`func (o *OrderExecutionReport) GetClientOrderId() string`

GetClientOrderId returns the ClientOrderId field if non-nil, zero value otherwise.

### GetClientOrderIdOk

`func (o *OrderExecutionReport) GetClientOrderIdOk() (*string, bool)`

GetClientOrderIdOk returns a tuple with the ClientOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderId

`func (o *OrderExecutionReport) SetClientOrderId(v string)`

SetClientOrderId sets ClientOrderId field to given value.


### GetSymbolIdExchange

`func (o *OrderExecutionReport) GetSymbolIdExchange() string`

GetSymbolIdExchange returns the SymbolIdExchange field if non-nil, zero value otherwise.

### GetSymbolIdExchangeOk

`func (o *OrderExecutionReport) GetSymbolIdExchangeOk() (*string, bool)`

GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdExchange

`func (o *OrderExecutionReport) SetSymbolIdExchange(v string)`

SetSymbolIdExchange sets SymbolIdExchange field to given value.

### HasSymbolIdExchange

`func (o *OrderExecutionReport) HasSymbolIdExchange() bool`

HasSymbolIdExchange returns a boolean if a field has been set.

### GetSymbolIdCoinapi

`func (o *OrderExecutionReport) GetSymbolIdCoinapi() string`

GetSymbolIdCoinapi returns the SymbolIdCoinapi field if non-nil, zero value otherwise.

### GetSymbolIdCoinapiOk

`func (o *OrderExecutionReport) GetSymbolIdCoinapiOk() (*string, bool)`

GetSymbolIdCoinapiOk returns a tuple with the SymbolIdCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdCoinapi

`func (o *OrderExecutionReport) SetSymbolIdCoinapi(v string)`

SetSymbolIdCoinapi sets SymbolIdCoinapi field to given value.

### HasSymbolIdCoinapi

`func (o *OrderExecutionReport) HasSymbolIdCoinapi() bool`

HasSymbolIdCoinapi returns a boolean if a field has been set.

### GetAmountOrder

`func (o *OrderExecutionReport) GetAmountOrder() float32`

GetAmountOrder returns the AmountOrder field if non-nil, zero value otherwise.

### GetAmountOrderOk

`func (o *OrderExecutionReport) GetAmountOrderOk() (*float32, bool)`

GetAmountOrderOk returns a tuple with the AmountOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountOrder

`func (o *OrderExecutionReport) SetAmountOrder(v float32)`

SetAmountOrder sets AmountOrder field to given value.


### GetPrice

`func (o *OrderExecutionReport) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *OrderExecutionReport) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *OrderExecutionReport) SetPrice(v float32)`

SetPrice sets Price field to given value.


### GetSide

`func (o *OrderExecutionReport) GetSide() OrdSide`

GetSide returns the Side field if non-nil, zero value otherwise.

### GetSideOk

`func (o *OrderExecutionReport) GetSideOk() (*OrdSide, bool)`

GetSideOk returns a tuple with the Side field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSide

`func (o *OrderExecutionReport) SetSide(v OrdSide)`

SetSide sets Side field to given value.


### GetOrderType

`func (o *OrderExecutionReport) GetOrderType() OrdType`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *OrderExecutionReport) GetOrderTypeOk() (*OrdType, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *OrderExecutionReport) SetOrderType(v OrdType)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *OrderExecutionReport) GetTimeInForce() TimeInForce`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *OrderExecutionReport) GetTimeInForceOk() (*TimeInForce, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *OrderExecutionReport) SetTimeInForce(v TimeInForce)`

SetTimeInForce sets TimeInForce field to given value.


### GetExpireTime

`func (o *OrderExecutionReport) GetExpireTime() string`

GetExpireTime returns the ExpireTime field if non-nil, zero value otherwise.

### GetExpireTimeOk

`func (o *OrderExecutionReport) GetExpireTimeOk() (*string, bool)`

GetExpireTimeOk returns a tuple with the ExpireTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpireTime

`func (o *OrderExecutionReport) SetExpireTime(v string)`

SetExpireTime sets ExpireTime field to given value.

### HasExpireTime

`func (o *OrderExecutionReport) HasExpireTime() bool`

HasExpireTime returns a boolean if a field has been set.

### GetExecInst

`func (o *OrderExecutionReport) GetExecInst() []string`

GetExecInst returns the ExecInst field if non-nil, zero value otherwise.

### GetExecInstOk

`func (o *OrderExecutionReport) GetExecInstOk() (*[]string, bool)`

GetExecInstOk returns a tuple with the ExecInst field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecInst

`func (o *OrderExecutionReport) SetExecInst(v []string)`

SetExecInst sets ExecInst field to given value.

### HasExecInst

`func (o *OrderExecutionReport) HasExecInst() bool`

HasExecInst returns a boolean if a field has been set.

### GetClientOrderIdFormatExchange

`func (o *OrderExecutionReport) GetClientOrderIdFormatExchange() string`

GetClientOrderIdFormatExchange returns the ClientOrderIdFormatExchange field if non-nil, zero value otherwise.

### GetClientOrderIdFormatExchangeOk

`func (o *OrderExecutionReport) GetClientOrderIdFormatExchangeOk() (*string, bool)`

GetClientOrderIdFormatExchangeOk returns a tuple with the ClientOrderIdFormatExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderIdFormatExchange

`func (o *OrderExecutionReport) SetClientOrderIdFormatExchange(v string)`

SetClientOrderIdFormatExchange sets ClientOrderIdFormatExchange field to given value.


### GetExchangeOrderId

`func (o *OrderExecutionReport) GetExchangeOrderId() string`

GetExchangeOrderId returns the ExchangeOrderId field if non-nil, zero value otherwise.

### GetExchangeOrderIdOk

`func (o *OrderExecutionReport) GetExchangeOrderIdOk() (*string, bool)`

GetExchangeOrderIdOk returns a tuple with the ExchangeOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeOrderId

`func (o *OrderExecutionReport) SetExchangeOrderId(v string)`

SetExchangeOrderId sets ExchangeOrderId field to given value.

### HasExchangeOrderId

`func (o *OrderExecutionReport) HasExchangeOrderId() bool`

HasExchangeOrderId returns a boolean if a field has been set.

### GetAmountOpen

`func (o *OrderExecutionReport) GetAmountOpen() float32`

GetAmountOpen returns the AmountOpen field if non-nil, zero value otherwise.

### GetAmountOpenOk

`func (o *OrderExecutionReport) GetAmountOpenOk() (*float32, bool)`

GetAmountOpenOk returns a tuple with the AmountOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountOpen

`func (o *OrderExecutionReport) SetAmountOpen(v float32)`

SetAmountOpen sets AmountOpen field to given value.


### GetAmountFilled

`func (o *OrderExecutionReport) GetAmountFilled() float32`

GetAmountFilled returns the AmountFilled field if non-nil, zero value otherwise.

### GetAmountFilledOk

`func (o *OrderExecutionReport) GetAmountFilledOk() (*float32, bool)`

GetAmountFilledOk returns a tuple with the AmountFilled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountFilled

`func (o *OrderExecutionReport) SetAmountFilled(v float32)`

SetAmountFilled sets AmountFilled field to given value.


### GetAvgPx

`func (o *OrderExecutionReport) GetAvgPx() float32`

GetAvgPx returns the AvgPx field if non-nil, zero value otherwise.

### GetAvgPxOk

`func (o *OrderExecutionReport) GetAvgPxOk() (*float32, bool)`

GetAvgPxOk returns a tuple with the AvgPx field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgPx

`func (o *OrderExecutionReport) SetAvgPx(v float32)`

SetAvgPx sets AvgPx field to given value.

### HasAvgPx

`func (o *OrderExecutionReport) HasAvgPx() bool`

HasAvgPx returns a boolean if a field has been set.

### GetStatus

`func (o *OrderExecutionReport) GetStatus() OrdStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *OrderExecutionReport) GetStatusOk() (*OrdStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *OrderExecutionReport) SetStatus(v OrdStatus)`

SetStatus sets Status field to given value.


### GetStatusHistory

`func (o *OrderExecutionReport) GetStatusHistory() [][]string`

GetStatusHistory returns the StatusHistory field if non-nil, zero value otherwise.

### GetStatusHistoryOk

`func (o *OrderExecutionReport) GetStatusHistoryOk() (*[][]string, bool)`

GetStatusHistoryOk returns a tuple with the StatusHistory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusHistory

`func (o *OrderExecutionReport) SetStatusHistory(v [][]string)`

SetStatusHistory sets StatusHistory field to given value.

### HasStatusHistory

`func (o *OrderExecutionReport) HasStatusHistory() bool`

HasStatusHistory returns a boolean if a field has been set.

### GetErrorMessage

`func (o *OrderExecutionReport) GetErrorMessage() string`

GetErrorMessage returns the ErrorMessage field if non-nil, zero value otherwise.

### GetErrorMessageOk

`func (o *OrderExecutionReport) GetErrorMessageOk() (*string, bool)`

GetErrorMessageOk returns a tuple with the ErrorMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessage

`func (o *OrderExecutionReport) SetErrorMessage(v string)`

SetErrorMessage sets ErrorMessage field to given value.

### HasErrorMessage

`func (o *OrderExecutionReport) HasErrorMessage() bool`

HasErrorMessage returns a boolean if a field has been set.

### GetFills

`func (o *OrderExecutionReport) GetFills() []Fills`

GetFills returns the Fills field if non-nil, zero value otherwise.

### GetFillsOk

`func (o *OrderExecutionReport) GetFillsOk() (*[]Fills, bool)`

GetFillsOk returns a tuple with the Fills field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFills

`func (o *OrderExecutionReport) SetFills(v []Fills)`

SetFills sets Fills field to given value.

### HasFills

`func (o *OrderExecutionReport) HasFills() bool`

HasFills returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


