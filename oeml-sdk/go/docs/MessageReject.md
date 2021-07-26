# MessageReject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** | Message type, constant. | [optional] 
**RejectReason** | Pointer to [**RejectReason**](RejectReason.md) |  | [optional] 
**ExchangeId** | Pointer to **string** | If the message related to exchange, then the identifier of the exchange will be provided. | [optional] 
**Message** | Pointer to **string** | Message text. | [optional] 
**RejectedMessage** | Pointer to **string** | Value of rejected request, if available. | [optional] 

## Methods

### NewMessageReject

`func NewMessageReject() *MessageReject`

NewMessageReject instantiates a new MessageReject object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMessageRejectWithDefaults

`func NewMessageRejectWithDefaults() *MessageReject`

NewMessageRejectWithDefaults instantiates a new MessageReject object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *MessageReject) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *MessageReject) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *MessageReject) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *MessageReject) HasType() bool`

HasType returns a boolean if a field has been set.

### GetRejectReason

`func (o *MessageReject) GetRejectReason() RejectReason`

GetRejectReason returns the RejectReason field if non-nil, zero value otherwise.

### GetRejectReasonOk

`func (o *MessageReject) GetRejectReasonOk() (*RejectReason, bool)`

GetRejectReasonOk returns a tuple with the RejectReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRejectReason

`func (o *MessageReject) SetRejectReason(v RejectReason)`

SetRejectReason sets RejectReason field to given value.

### HasRejectReason

`func (o *MessageReject) HasRejectReason() bool`

HasRejectReason returns a boolean if a field has been set.

### GetExchangeId

`func (o *MessageReject) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *MessageReject) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *MessageReject) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *MessageReject) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### GetMessage

`func (o *MessageReject) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *MessageReject) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *MessageReject) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *MessageReject) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetRejectedMessage

`func (o *MessageReject) GetRejectedMessage() string`

GetRejectedMessage returns the RejectedMessage field if non-nil, zero value otherwise.

### GetRejectedMessageOk

`func (o *MessageReject) GetRejectedMessageOk() (*string, bool)`

GetRejectedMessageOk returns a tuple with the RejectedMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRejectedMessage

`func (o *MessageReject) SetRejectedMessage(v string)`

SetRejectedMessage sets RejectedMessage field to given value.

### HasRejectedMessage

`func (o *MessageReject) HasRejectedMessage() bool`

HasRejectedMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


