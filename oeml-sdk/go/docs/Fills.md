# Fills

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | Pointer to **string** | Execution time. | [optional] 
**Price** | Pointer to **float32** | Execution price. | [optional] 
**Amount** | Pointer to **float32** | Executed quantity. | [optional] 

## Methods

### NewFills

`func NewFills() *Fills`

NewFills instantiates a new Fills object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFillsWithDefaults

`func NewFillsWithDefaults() *Fills`

NewFillsWithDefaults instantiates a new Fills object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTime

`func (o *Fills) GetTime() string`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *Fills) GetTimeOk() (*string, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *Fills) SetTime(v string)`

SetTime sets Time field to given value.

### HasTime

`func (o *Fills) HasTime() bool`

HasTime returns a boolean if a field has been set.

### GetPrice

`func (o *Fills) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *Fills) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *Fills) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *Fills) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetAmount

`func (o *Fills) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *Fills) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *Fills) SetAmount(v float32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *Fills) HasAmount() bool`

HasAmount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


