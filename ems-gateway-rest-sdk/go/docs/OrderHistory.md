# OrderHistory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Apikey** | Pointer to **string** | Apikey | [optional] 
**ExchangeId** | Pointer to **string** | Exchange id | [optional] 
**ClientOrderId** | Pointer to **string** | Client order id | [optional] 
**SymbolIdExchange** | Pointer to **string** | Symbol id exchange | [optional] 
**SymbolIdCoinapi** | Pointer to **string** | Symbol id in coinapi | [optional] 
**AmountOrder** | Pointer to **float32** | Amount | [optional] 
**Price** | Pointer to **float32** | Price | [optional] 
**Side** | Pointer to **float32** | 1-buy, 2-sell | [optional] 
**OrderType** | Pointer to **string** | Order type | [optional] 
**TimeInForce** | Pointer to **string** | Time in force | [optional] 
**ExpireTime** | Pointer to **string** | Expire time | [optional] 
**ExecInst** | Pointer to **[]string** | Exec inst | [optional] 
**ClientOrderIdFormatExchange** | Pointer to **string** | Client order id format | [optional] 
**ExchangeOrderId** | Pointer to **string** | Exchange order id | [optional] 
**AmountOpen** | Pointer to **float32** | Amount open | [optional] 
**AmountFilled** | Pointer to **float32** | Amount filled | [optional] 
**AvgPx** | Pointer to **float32** | Average price | [optional] 
**Status** | Pointer to **string** | Status | [optional] 
**StatusHistoryStatus** | Pointer to **[]string** | History status | [optional] 
**StatusHistoryTime** | Pointer to **[]string** | History status time | [optional] 
**ErrorMessageResult** | Pointer to **string** | Error message | [optional] 
**ErrorMessageReason** | Pointer to **string** | Error message reason | [optional] 
**ErrorMessageMessage** | Pointer to **string** | Error message | [optional] 
**FillsTime** | Pointer to **[]string** | Fills time | [optional] 
**FillsPrice** | Pointer to **[]float32** | Fills price | [optional] 
**FillsAmount** | Pointer to **[]float32** | Fills amount | [optional] 
**CreatedTime** | Pointer to **string** | Created time | [optional] 

## Methods

### NewOrderHistory

`func NewOrderHistory() *OrderHistory`

NewOrderHistory instantiates a new OrderHistory object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrderHistoryWithDefaults

`func NewOrderHistoryWithDefaults() *OrderHistory`

NewOrderHistoryWithDefaults instantiates a new OrderHistory object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApikey

`func (o *OrderHistory) GetApikey() string`

GetApikey returns the Apikey field if non-nil, zero value otherwise.

### GetApikeyOk

`func (o *OrderHistory) GetApikeyOk() (*string, bool)`

GetApikeyOk returns a tuple with the Apikey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApikey

`func (o *OrderHistory) SetApikey(v string)`

SetApikey sets Apikey field to given value.

### HasApikey

`func (o *OrderHistory) HasApikey() bool`

HasApikey returns a boolean if a field has been set.

### GetExchangeId

`func (o *OrderHistory) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *OrderHistory) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *OrderHistory) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *OrderHistory) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### GetClientOrderId

`func (o *OrderHistory) GetClientOrderId() string`

GetClientOrderId returns the ClientOrderId field if non-nil, zero value otherwise.

### GetClientOrderIdOk

`func (o *OrderHistory) GetClientOrderIdOk() (*string, bool)`

GetClientOrderIdOk returns a tuple with the ClientOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderId

`func (o *OrderHistory) SetClientOrderId(v string)`

SetClientOrderId sets ClientOrderId field to given value.

### HasClientOrderId

`func (o *OrderHistory) HasClientOrderId() bool`

HasClientOrderId returns a boolean if a field has been set.

### GetSymbolIdExchange

`func (o *OrderHistory) GetSymbolIdExchange() string`

GetSymbolIdExchange returns the SymbolIdExchange field if non-nil, zero value otherwise.

### GetSymbolIdExchangeOk

`func (o *OrderHistory) GetSymbolIdExchangeOk() (*string, bool)`

GetSymbolIdExchangeOk returns a tuple with the SymbolIdExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdExchange

`func (o *OrderHistory) SetSymbolIdExchange(v string)`

SetSymbolIdExchange sets SymbolIdExchange field to given value.

### HasSymbolIdExchange

`func (o *OrderHistory) HasSymbolIdExchange() bool`

HasSymbolIdExchange returns a boolean if a field has been set.

### GetSymbolIdCoinapi

`func (o *OrderHistory) GetSymbolIdCoinapi() string`

GetSymbolIdCoinapi returns the SymbolIdCoinapi field if non-nil, zero value otherwise.

### GetSymbolIdCoinapiOk

`func (o *OrderHistory) GetSymbolIdCoinapiOk() (*string, bool)`

GetSymbolIdCoinapiOk returns a tuple with the SymbolIdCoinapi field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolIdCoinapi

`func (o *OrderHistory) SetSymbolIdCoinapi(v string)`

SetSymbolIdCoinapi sets SymbolIdCoinapi field to given value.

### HasSymbolIdCoinapi

`func (o *OrderHistory) HasSymbolIdCoinapi() bool`

HasSymbolIdCoinapi returns a boolean if a field has been set.

### GetAmountOrder

`func (o *OrderHistory) GetAmountOrder() float32`

GetAmountOrder returns the AmountOrder field if non-nil, zero value otherwise.

### GetAmountOrderOk

`func (o *OrderHistory) GetAmountOrderOk() (*float32, bool)`

GetAmountOrderOk returns a tuple with the AmountOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountOrder

`func (o *OrderHistory) SetAmountOrder(v float32)`

SetAmountOrder sets AmountOrder field to given value.

### HasAmountOrder

`func (o *OrderHistory) HasAmountOrder() bool`

HasAmountOrder returns a boolean if a field has been set.

### GetPrice

`func (o *OrderHistory) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *OrderHistory) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *OrderHistory) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *OrderHistory) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetSide

`func (o *OrderHistory) GetSide() float32`

GetSide returns the Side field if non-nil, zero value otherwise.

### GetSideOk

`func (o *OrderHistory) GetSideOk() (*float32, bool)`

GetSideOk returns a tuple with the Side field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSide

`func (o *OrderHistory) SetSide(v float32)`

SetSide sets Side field to given value.

### HasSide

`func (o *OrderHistory) HasSide() bool`

HasSide returns a boolean if a field has been set.

### GetOrderType

`func (o *OrderHistory) GetOrderType() string`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *OrderHistory) GetOrderTypeOk() (*string, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *OrderHistory) SetOrderType(v string)`

SetOrderType sets OrderType field to given value.

### HasOrderType

`func (o *OrderHistory) HasOrderType() bool`

HasOrderType returns a boolean if a field has been set.

### GetTimeInForce

`func (o *OrderHistory) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *OrderHistory) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *OrderHistory) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.

### HasTimeInForce

`func (o *OrderHistory) HasTimeInForce() bool`

HasTimeInForce returns a boolean if a field has been set.

### GetExpireTime

`func (o *OrderHistory) GetExpireTime() string`

GetExpireTime returns the ExpireTime field if non-nil, zero value otherwise.

### GetExpireTimeOk

`func (o *OrderHistory) GetExpireTimeOk() (*string, bool)`

GetExpireTimeOk returns a tuple with the ExpireTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpireTime

`func (o *OrderHistory) SetExpireTime(v string)`

SetExpireTime sets ExpireTime field to given value.

### HasExpireTime

`func (o *OrderHistory) HasExpireTime() bool`

HasExpireTime returns a boolean if a field has been set.

### GetExecInst

`func (o *OrderHistory) GetExecInst() []string`

GetExecInst returns the ExecInst field if non-nil, zero value otherwise.

### GetExecInstOk

`func (o *OrderHistory) GetExecInstOk() (*[]string, bool)`

GetExecInstOk returns a tuple with the ExecInst field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecInst

`func (o *OrderHistory) SetExecInst(v []string)`

SetExecInst sets ExecInst field to given value.

### HasExecInst

`func (o *OrderHistory) HasExecInst() bool`

HasExecInst returns a boolean if a field has been set.

### GetClientOrderIdFormatExchange

`func (o *OrderHistory) GetClientOrderIdFormatExchange() string`

GetClientOrderIdFormatExchange returns the ClientOrderIdFormatExchange field if non-nil, zero value otherwise.

### GetClientOrderIdFormatExchangeOk

`func (o *OrderHistory) GetClientOrderIdFormatExchangeOk() (*string, bool)`

GetClientOrderIdFormatExchangeOk returns a tuple with the ClientOrderIdFormatExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderIdFormatExchange

`func (o *OrderHistory) SetClientOrderIdFormatExchange(v string)`

SetClientOrderIdFormatExchange sets ClientOrderIdFormatExchange field to given value.

### HasClientOrderIdFormatExchange

`func (o *OrderHistory) HasClientOrderIdFormatExchange() bool`

HasClientOrderIdFormatExchange returns a boolean if a field has been set.

### GetExchangeOrderId

`func (o *OrderHistory) GetExchangeOrderId() string`

GetExchangeOrderId returns the ExchangeOrderId field if non-nil, zero value otherwise.

### GetExchangeOrderIdOk

`func (o *OrderHistory) GetExchangeOrderIdOk() (*string, bool)`

GetExchangeOrderIdOk returns a tuple with the ExchangeOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeOrderId

`func (o *OrderHistory) SetExchangeOrderId(v string)`

SetExchangeOrderId sets ExchangeOrderId field to given value.

### HasExchangeOrderId

`func (o *OrderHistory) HasExchangeOrderId() bool`

HasExchangeOrderId returns a boolean if a field has been set.

### GetAmountOpen

`func (o *OrderHistory) GetAmountOpen() float32`

GetAmountOpen returns the AmountOpen field if non-nil, zero value otherwise.

### GetAmountOpenOk

`func (o *OrderHistory) GetAmountOpenOk() (*float32, bool)`

GetAmountOpenOk returns a tuple with the AmountOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountOpen

`func (o *OrderHistory) SetAmountOpen(v float32)`

SetAmountOpen sets AmountOpen field to given value.

### HasAmountOpen

`func (o *OrderHistory) HasAmountOpen() bool`

HasAmountOpen returns a boolean if a field has been set.

### GetAmountFilled

`func (o *OrderHistory) GetAmountFilled() float32`

GetAmountFilled returns the AmountFilled field if non-nil, zero value otherwise.

### GetAmountFilledOk

`func (o *OrderHistory) GetAmountFilledOk() (*float32, bool)`

GetAmountFilledOk returns a tuple with the AmountFilled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountFilled

`func (o *OrderHistory) SetAmountFilled(v float32)`

SetAmountFilled sets AmountFilled field to given value.

### HasAmountFilled

`func (o *OrderHistory) HasAmountFilled() bool`

HasAmountFilled returns a boolean if a field has been set.

### GetAvgPx

`func (o *OrderHistory) GetAvgPx() float32`

GetAvgPx returns the AvgPx field if non-nil, zero value otherwise.

### GetAvgPxOk

`func (o *OrderHistory) GetAvgPxOk() (*float32, bool)`

GetAvgPxOk returns a tuple with the AvgPx field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgPx

`func (o *OrderHistory) SetAvgPx(v float32)`

SetAvgPx sets AvgPx field to given value.

### HasAvgPx

`func (o *OrderHistory) HasAvgPx() bool`

HasAvgPx returns a boolean if a field has been set.

### GetStatus

`func (o *OrderHistory) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *OrderHistory) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *OrderHistory) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *OrderHistory) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetStatusHistoryStatus

`func (o *OrderHistory) GetStatusHistoryStatus() []string`

GetStatusHistoryStatus returns the StatusHistoryStatus field if non-nil, zero value otherwise.

### GetStatusHistoryStatusOk

`func (o *OrderHistory) GetStatusHistoryStatusOk() (*[]string, bool)`

GetStatusHistoryStatusOk returns a tuple with the StatusHistoryStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusHistoryStatus

`func (o *OrderHistory) SetStatusHistoryStatus(v []string)`

SetStatusHistoryStatus sets StatusHistoryStatus field to given value.

### HasStatusHistoryStatus

`func (o *OrderHistory) HasStatusHistoryStatus() bool`

HasStatusHistoryStatus returns a boolean if a field has been set.

### GetStatusHistoryTime

`func (o *OrderHistory) GetStatusHistoryTime() []string`

GetStatusHistoryTime returns the StatusHistoryTime field if non-nil, zero value otherwise.

### GetStatusHistoryTimeOk

`func (o *OrderHistory) GetStatusHistoryTimeOk() (*[]string, bool)`

GetStatusHistoryTimeOk returns a tuple with the StatusHistoryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusHistoryTime

`func (o *OrderHistory) SetStatusHistoryTime(v []string)`

SetStatusHistoryTime sets StatusHistoryTime field to given value.

### HasStatusHistoryTime

`func (o *OrderHistory) HasStatusHistoryTime() bool`

HasStatusHistoryTime returns a boolean if a field has been set.

### GetErrorMessageResult

`func (o *OrderHistory) GetErrorMessageResult() string`

GetErrorMessageResult returns the ErrorMessageResult field if non-nil, zero value otherwise.

### GetErrorMessageResultOk

`func (o *OrderHistory) GetErrorMessageResultOk() (*string, bool)`

GetErrorMessageResultOk returns a tuple with the ErrorMessageResult field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessageResult

`func (o *OrderHistory) SetErrorMessageResult(v string)`

SetErrorMessageResult sets ErrorMessageResult field to given value.

### HasErrorMessageResult

`func (o *OrderHistory) HasErrorMessageResult() bool`

HasErrorMessageResult returns a boolean if a field has been set.

### GetErrorMessageReason

`func (o *OrderHistory) GetErrorMessageReason() string`

GetErrorMessageReason returns the ErrorMessageReason field if non-nil, zero value otherwise.

### GetErrorMessageReasonOk

`func (o *OrderHistory) GetErrorMessageReasonOk() (*string, bool)`

GetErrorMessageReasonOk returns a tuple with the ErrorMessageReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessageReason

`func (o *OrderHistory) SetErrorMessageReason(v string)`

SetErrorMessageReason sets ErrorMessageReason field to given value.

### HasErrorMessageReason

`func (o *OrderHistory) HasErrorMessageReason() bool`

HasErrorMessageReason returns a boolean if a field has been set.

### GetErrorMessageMessage

`func (o *OrderHistory) GetErrorMessageMessage() string`

GetErrorMessageMessage returns the ErrorMessageMessage field if non-nil, zero value otherwise.

### GetErrorMessageMessageOk

`func (o *OrderHistory) GetErrorMessageMessageOk() (*string, bool)`

GetErrorMessageMessageOk returns a tuple with the ErrorMessageMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessageMessage

`func (o *OrderHistory) SetErrorMessageMessage(v string)`

SetErrorMessageMessage sets ErrorMessageMessage field to given value.

### HasErrorMessageMessage

`func (o *OrderHistory) HasErrorMessageMessage() bool`

HasErrorMessageMessage returns a boolean if a field has been set.

### GetFillsTime

`func (o *OrderHistory) GetFillsTime() []string`

GetFillsTime returns the FillsTime field if non-nil, zero value otherwise.

### GetFillsTimeOk

`func (o *OrderHistory) GetFillsTimeOk() (*[]string, bool)`

GetFillsTimeOk returns a tuple with the FillsTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFillsTime

`func (o *OrderHistory) SetFillsTime(v []string)`

SetFillsTime sets FillsTime field to given value.

### HasFillsTime

`func (o *OrderHistory) HasFillsTime() bool`

HasFillsTime returns a boolean if a field has been set.

### GetFillsPrice

`func (o *OrderHistory) GetFillsPrice() []float32`

GetFillsPrice returns the FillsPrice field if non-nil, zero value otherwise.

### GetFillsPriceOk

`func (o *OrderHistory) GetFillsPriceOk() (*[]float32, bool)`

GetFillsPriceOk returns a tuple with the FillsPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFillsPrice

`func (o *OrderHistory) SetFillsPrice(v []float32)`

SetFillsPrice sets FillsPrice field to given value.

### HasFillsPrice

`func (o *OrderHistory) HasFillsPrice() bool`

HasFillsPrice returns a boolean if a field has been set.

### GetFillsAmount

`func (o *OrderHistory) GetFillsAmount() []float32`

GetFillsAmount returns the FillsAmount field if non-nil, zero value otherwise.

### GetFillsAmountOk

`func (o *OrderHistory) GetFillsAmountOk() (*[]float32, bool)`

GetFillsAmountOk returns a tuple with the FillsAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFillsAmount

`func (o *OrderHistory) SetFillsAmount(v []float32)`

SetFillsAmount sets FillsAmount field to given value.

### HasFillsAmount

`func (o *OrderHistory) HasFillsAmount() bool`

HasFillsAmount returns a boolean if a field has been set.

### GetCreatedTime

`func (o *OrderHistory) GetCreatedTime() string`

GetCreatedTime returns the CreatedTime field if non-nil, zero value otherwise.

### GetCreatedTimeOk

`func (o *OrderHistory) GetCreatedTimeOk() (*string, bool)`

GetCreatedTimeOk returns a tuple with the CreatedTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedTime

`func (o *OrderHistory) SetCreatedTime(v string)`

SetCreatedTime sets CreatedTime field to given value.

### HasCreatedTime

`func (o *OrderHistory) HasCreatedTime() bool`

HasCreatedTime returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


