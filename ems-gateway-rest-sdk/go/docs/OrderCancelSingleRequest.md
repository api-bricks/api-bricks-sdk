# OrderCancelSingleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **string** | Exchange identifier used to identify the routing destination. | 
**ExchangeOrderId** | Pointer to **string** | Unique identifier of the order assigned by the exchange or executing system. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] 
**ClientOrderId** | Pointer to **string** | The unique identifier of the order assigned by the client. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] 

## Methods

### NewOrderCancelSingleRequest

`func NewOrderCancelSingleRequest(exchangeId string, ) *OrderCancelSingleRequest`

NewOrderCancelSingleRequest instantiates a new OrderCancelSingleRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrderCancelSingleRequestWithDefaults

`func NewOrderCancelSingleRequestWithDefaults() *OrderCancelSingleRequest`

NewOrderCancelSingleRequestWithDefaults instantiates a new OrderCancelSingleRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *OrderCancelSingleRequest) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *OrderCancelSingleRequest) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *OrderCancelSingleRequest) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.


### GetExchangeOrderId

`func (o *OrderCancelSingleRequest) GetExchangeOrderId() string`

GetExchangeOrderId returns the ExchangeOrderId field if non-nil, zero value otherwise.

### GetExchangeOrderIdOk

`func (o *OrderCancelSingleRequest) GetExchangeOrderIdOk() (*string, bool)`

GetExchangeOrderIdOk returns a tuple with the ExchangeOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeOrderId

`func (o *OrderCancelSingleRequest) SetExchangeOrderId(v string)`

SetExchangeOrderId sets ExchangeOrderId field to given value.

### HasExchangeOrderId

`func (o *OrderCancelSingleRequest) HasExchangeOrderId() bool`

HasExchangeOrderId returns a boolean if a field has been set.

### GetClientOrderId

`func (o *OrderCancelSingleRequest) GetClientOrderId() string`

GetClientOrderId returns the ClientOrderId field if non-nil, zero value otherwise.

### GetClientOrderIdOk

`func (o *OrderCancelSingleRequest) GetClientOrderIdOk() (*string, bool)`

GetClientOrderIdOk returns a tuple with the ClientOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderId

`func (o *OrderCancelSingleRequest) SetClientOrderId(v string)`

SetClientOrderId sets ClientOrderId field to given value.

### HasClientOrderId

`func (o *OrderCancelSingleRequest) HasClientOrderId() bool`

HasClientOrderId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


