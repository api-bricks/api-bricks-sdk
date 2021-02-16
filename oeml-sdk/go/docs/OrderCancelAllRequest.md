# OrderCancelAllRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Identifier of the exchange from which active orders should be canceled. | 

## Methods

### NewOrderCancelAllRequest

`func NewOrderCancelAllRequest(exchangeId string, ) *OrderCancelAllRequest`

NewOrderCancelAllRequest instantiates a new OrderCancelAllRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrderCancelAllRequestWithDefaults

`func NewOrderCancelAllRequestWithDefaults() *OrderCancelAllRequest`

NewOrderCancelAllRequestWithDefaults instantiates a new OrderCancelAllRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *OrderCancelAllRequest) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *OrderCancelAllRequest) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *OrderCancelAllRequest) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


