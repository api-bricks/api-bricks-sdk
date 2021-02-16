# Position

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | Pointer to **string** | Exchange identifier used to identify the routing destination. | [optional] 
**Data** | Pointer to [**[]PositionData**](PositionData.md) |  | [optional] 

## Methods

### NewPosition

`func NewPosition() *Position`

NewPosition instantiates a new Position object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPositionWithDefaults

`func NewPositionWithDefaults() *Position`

NewPositionWithDefaults instantiates a new Position object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExchangeId

`func (o *Position) GetExchangeId() string`

GetExchangeId returns the ExchangeId field if non-nil, zero value otherwise.

### GetExchangeIdOk

`func (o *Position) GetExchangeIdOk() (*string, bool)`

GetExchangeIdOk returns a tuple with the ExchangeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeId

`func (o *Position) SetExchangeId(v string)`

SetExchangeId sets ExchangeId field to given value.

### HasExchangeId

`func (o *Position) HasExchangeId() bool`

HasExchangeId returns a boolean if a field has been set.

### GetData

`func (o *Position) GetData() []PositionData`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *Position) GetDataOk() (*[]PositionData, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *Position) SetData(v []PositionData)`

SetData sets Data field to given value.

### HasData

`func (o *Position) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


