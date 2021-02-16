# Message

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** | Type of message. | [optional] 
**Severity** | Pointer to [**Severity**](Severity.md) |  | [optional] 
**ExchangeId** | Pointer to **string** | If the message related to exchange, then the identifier of the exchange will be provided. | [optional] 
**Message** | Pointer to **string** | Message text. | [optional] 

## Methods

### NewMessage

`func NewMessage() *Message`

NewMessage instantiates a new Message object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMessageWithDefaults

`func NewMessageWithDefaults() *Message`

NewMessageWithDefaults instantiates a new Message object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Message) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Message) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Message) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Message) HasType() bool`

HasType returns a boolean if a field has been set.

### GetSeverity

`func (o *Message) GetSeverity() Severity`

GetSeverity returns the Severity field if non-nil, zero value otherwise.

### GetSeverityOk

`func (o *Message) GetSeverityOk() (*Severity, bool)`

GetSeverityOk returns a tuple with the Severity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSeverity

`func (o *Message) SetSeverity(v Severity)`

SetSeverity sets Severity field to given value.

### HasSeverity

`func (o *Message) HasSeverity() bool`

HasSeverity returns a boolean if a field has been set.

### GetExchangeId

`func (o *Message) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *Message) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *Message) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *Message) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### GetMessage

`func (o *Message) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *Message) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *Message) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *Message) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


