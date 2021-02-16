# OrderNewSingleRequest

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

## Methods

### NewOrderNewSingleRequest

`func NewOrderNewSingleRequest(exchangeId string, clientOrderId string, amountOrder float32, price float32, side OrdSide, orderType OrdType, timeInForce TimeInForce, ) *OrderNewSingleRequest`

NewOrderNewSingleRequest instantiates a new OrderNewSingleRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrderNewSingleRequestWithDefaults

`func NewOrderNewSingleRequestWithDefaults() *OrderNewSingleRequest`

NewOrderNewSingleRequestWithDefaults instantiates a new OrderNewSingleRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *OrderNewSingleRequest) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *OrderNewSingleRequest) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *OrderNewSingleRequest) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.


### GetClientOrderId

`func (o *OrderNewSingleRequest) GetClientOrderId() string`

GetClientOrderId returns the ClientOrderId field if non-nil, zero value otherwise.

### GetClientOrderIdOk

`func (o *OrderNewSingleRequest) GetClientOrderIdOk() (*string, bool)`

GetClientOrderIdOk returns a tuple with the ClientOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderId

`func (o *OrderNewSingleRequest) SetClientOrderId(v string)`

SetClientOrderId sets ClientOrderId field to given value.


### GetSymbolIdExchange

`func (o *OrderNewSingleRequest) GetSymbolIdExchange() string`

GetSymbolIdExchange returns the SymbolIdExchange field if non-nil, zero value otherwise.

### GetSymbolIdExchangeOk

`func (o *OrderNewSingleRequest) GetSymbolIdExchangeOk() (*string, bool)`

GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdExchange

`func (o *OrderNewSingleRequest) SetSymbolIdExchange(v string)`

SetSymbolIdExchange sets SymbolIdExchange field to given value.

### HasSymbolIdExchange

`func (o *OrderNewSingleRequest) HasSymbolIdExchange() bool`

HasSymbolIdExchange returns a boolean if a field has been set.

### GetSymbolIdCoinapi

`func (o *OrderNewSingleRequest) GetSymbolIdCoinapi() string`

GetSymbolIdCoinapi returns the SymbolIdCoinapi field if non-nil, zero value otherwise.

### GetSymbolIdCoinapiOk

`func (o *OrderNewSingleRequest) GetSymbolIdCoinapiOk() (*string, bool)`

GetSymbolIdCoinapiOk returns a tuple with the SymbolIdCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdCoinapi

`func (o *OrderNewSingleRequest) SetSymbolIdCoinapi(v string)`

SetSymbolIdCoinapi sets SymbolIdCoinapi field to given value.

### HasSymbolIdCoinapi

`func (o *OrderNewSingleRequest) HasSymbolIdCoinapi() bool`

HasSymbolIdCoinapi returns a boolean if a field has been set.

### GetAmountOrder

`func (o *OrderNewSingleRequest) GetAmountOrder() float32`

GetAmountOrder returns the AmountOrder field if non-nil, zero value otherwise.

### GetAmountOrderOk

`func (o *OrderNewSingleRequest) GetAmountOrderOk() (*float32, bool)`

GetAmountOrderOk returns a tuple with the AmountOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountOrder

`func (o *OrderNewSingleRequest) SetAmountOrder(v float32)`

SetAmountOrder sets AmountOrder field to given value.


### GetPrice

`func (o *OrderNewSingleRequest) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *OrderNewSingleRequest) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *OrderNewSingleRequest) SetPrice(v float32)`

SetPrice sets Price field to given value.


### GetSide

`func (o *OrderNewSingleRequest) GetSide() OrdSide`

GetSide returns the Side field if non-nil, zero value otherwise.

### GetSideOk

`func (o *OrderNewSingleRequest) GetSideOk() (*OrdSide, bool)`

GetSideOk returns a tuple with the Side field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSide

`func (o *OrderNewSingleRequest) SetSide(v OrdSide)`

SetSide sets Side field to given value.


### GetOrderType

`func (o *OrderNewSingleRequest) GetOrderType() OrdType`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *OrderNewSingleRequest) GetOrderTypeOk() (*OrdType, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *OrderNewSingleRequest) SetOrderType(v OrdType)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *OrderNewSingleRequest) GetTimeInForce() TimeInForce`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *OrderNewSingleRequest) GetTimeInForceOk() (*TimeInForce, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *OrderNewSingleRequest) SetTimeInForce(v TimeInForce)`

SetTimeInForce sets TimeInForce field to given value.


### GetExpireTime

`func (o *OrderNewSingleRequest) GetExpireTime() string`

GetExpireTime returns the ExpireTime field if non-nil, zero value otherwise.

### GetExpireTimeOk

`func (o *OrderNewSingleRequest) GetExpireTimeOk() (*string, bool)`

GetExpireTimeOk returns a tuple with the ExpireTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpireTime

`func (o *OrderNewSingleRequest) SetExpireTime(v string)`

SetExpireTime sets ExpireTime field to given value.

### HasExpireTime

`func (o *OrderNewSingleRequest) HasExpireTime() bool`

HasExpireTime returns a boolean if a field has been set.

### GetExecInst

`func (o *OrderNewSingleRequest) GetExecInst() []string`

GetExecInst returns the ExecInst field if non-nil, zero value otherwise.

### GetExecInstOk

`func (o *OrderNewSingleRequest) GetExecInstOk() (*[]string, bool)`

GetExecInstOk returns a tuple with the ExecInst field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecInst

`func (o *OrderNewSingleRequest) SetExecInst(v []string)`

SetExecInst sets ExecInst field to given value.

### HasExecInst

`func (o *OrderNewSingleRequest) HasExecInst() bool`

HasExecInst returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


