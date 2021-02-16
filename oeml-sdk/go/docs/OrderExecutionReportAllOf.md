# OrderExecutionReportAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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

### NewOrderExecutionReportAllOf

`func NewOrderExecutionReportAllOf(clientOrderIdFormatExchange string, amountOpen float32, amountFilled float32, status OrdStatus, ) *OrderExecutionReportAllOf`

NewOrderExecutionReportAllOf instantiates a new OrderExecutionReportAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrderExecutionReportAllOfWithDefaults

`func NewOrderExecutionReportAllOfWithDefaults() *OrderExecutionReportAllOf`

NewOrderExecutionReportAllOfWithDefaults instantiates a new OrderExecutionReportAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClientOrderIdFormatExchange

`func (o *OrderExecutionReportAllOf) GetClientOrderIdFormatExchange() string`

GetClientOrderIdFormatExchange returns the ClientOrderIdFormatExchange field if non-nil, zero value otherwise.

### GetClientOrderIdFormatExchangeOk

`func (o *OrderExecutionReportAllOf) GetClientOrderIdFormatExchangeOk() (*string, bool)`

GetClientOrderIdFormatExchangeOk returns a tuple with the ClientOrderIdFormatExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderIdFormatExchange

`func (o *OrderExecutionReportAllOf) SetClientOrderIdFormatExchange(v string)`

SetClientOrderIdFormatExchange sets ClientOrderIdFormatExchange field to given value.


### GetExchangeOrderId

`func (o *OrderExecutionReportAllOf) GetExchangeOrderId() string`

GetExchangeOrderId returns the ExchangeOrderId field if non-nil, zero value otherwise.

### GetExchangeOrderIdOk

`func (o *OrderExecutionReportAllOf) GetExchangeOrderIdOk() (*string, bool)`

GetExchangeOrderIdOk returns a tuple with the ExchangeOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeOrderId

`func (o *OrderExecutionReportAllOf) SetExchangeOrderId(v string)`

SetExchangeOrderId sets ExchangeOrderId field to given value.

### HasExchangeOrderId

`func (o *OrderExecutionReportAllOf) HasExchangeOrderId() bool`

HasExchangeOrderId returns a boolean if a field has been set.

### GetAmountOpen

`func (o *OrderExecutionReportAllOf) GetAmountOpen() float32`

GetAmountOpen returns the AmountOpen field if non-nil, zero value otherwise.

### GetAmountOpenOk

`func (o *OrderExecutionReportAllOf) GetAmountOpenOk() (*float32, bool)`

GetAmountOpenOk returns a tuple with the AmountOpen field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountOpen

`func (o *OrderExecutionReportAllOf) SetAmountOpen(v float32)`

SetAmountOpen sets AmountOpen field to given value.


### GetAmountFilled

`func (o *OrderExecutionReportAllOf) GetAmountFilled() float32`

GetAmountFilled returns the AmountFilled field if non-nil, zero value otherwise.

### GetAmountFilledOk

`func (o *OrderExecutionReportAllOf) GetAmountFilledOk() (*float32, bool)`

GetAmountFilledOk returns a tuple with the AmountFilled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmountFilled

`func (o *OrderExecutionReportAllOf) SetAmountFilled(v float32)`

SetAmountFilled sets AmountFilled field to given value.


### GetAvgPx

`func (o *OrderExecutionReportAllOf) GetAvgPx() float32`

GetAvgPx returns the AvgPx field if non-nil, zero value otherwise.

### GetAvgPxOk

`func (o *OrderExecutionReportAllOf) GetAvgPxOk() (*float32, bool)`

GetAvgPxOk returns a tuple with the AvgPx field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgPx

`func (o *OrderExecutionReportAllOf) SetAvgPx(v float32)`

SetAvgPx sets AvgPx field to given value.

### HasAvgPx

`func (o *OrderExecutionReportAllOf) HasAvgPx() bool`

HasAvgPx returns a boolean if a field has been set.

### GetStatus

`func (o *OrderExecutionReportAllOf) GetStatus() OrdStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *OrderExecutionReportAllOf) GetStatusOk() (*OrdStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *OrderExecutionReportAllOf) SetStatus(v OrdStatus)`

SetStatus sets Status field to given value.


### GetStatusHistory

`func (o *OrderExecutionReportAllOf) GetStatusHistory() [][]string`

GetStatusHistory returns the StatusHistory field if non-nil, zero value otherwise.

### GetStatusHistoryOk

`func (o *OrderExecutionReportAllOf) GetStatusHistoryOk() (*[][]string, bool)`

GetStatusHistoryOk returns a tuple with the StatusHistory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusHistory

`func (o *OrderExecutionReportAllOf) SetStatusHistory(v [][]string)`

SetStatusHistory sets StatusHistory field to given value.

### HasStatusHistory

`func (o *OrderExecutionReportAllOf) HasStatusHistory() bool`

HasStatusHistory returns a boolean if a field has been set.

### GetErrorMessage

`func (o *OrderExecutionReportAllOf) GetErrorMessage() string`

GetErrorMessage returns the ErrorMessage field if non-nil, zero value otherwise.

### GetErrorMessageOk

`func (o *OrderExecutionReportAllOf) GetErrorMessageOk() (*string, bool)`

GetErrorMessageOk returns a tuple with the ErrorMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessage

`func (o *OrderExecutionReportAllOf) SetErrorMessage(v string)`

SetErrorMessage sets ErrorMessage field to given value.

### HasErrorMessage

`func (o *OrderExecutionReportAllOf) HasErrorMessage() bool`

HasErrorMessage returns a boolean if a field has been set.

### GetFills

`func (o *OrderExecutionReportAllOf) GetFills() []Fills`

GetFills returns the Fills field if non-nil, zero value otherwise.

### GetFillsOk

`func (o *OrderExecutionReportAllOf) GetFillsOk() (*[]Fills, bool)`

GetFillsOk returns a tuple with the Fills field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFills

`func (o *OrderExecutionReportAllOf) SetFills(v []Fills)`

SetFills sets Fills field to given value.

### HasFills

`func (o *OrderExecutionReportAllOf) HasFills() bool`

HasFills returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


