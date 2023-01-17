# DexPriceDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (token id)-(batch id). | [optional] 
**Token** | Pointer to **NullableString** | Token identifier. | [optional] 
**BatchId** | Pointer to **NullableString** | Batch identifier. | [optional] 
**PriceInOwlNumerator** | Pointer to **NullableString** | Price enumerator in OWL (derivative of the GNO token). | [optional] 
**PriceInOwlDenominator** | Pointer to **NullableString** | Price denominator in OWL (derivative of the GNO token). | [optional] 
**Volume** | Pointer to **NullableString** | Volume. | [optional] 
**CreateEpoch** | Pointer to **NullableString** | Create epoch. | [optional] 
**TxHash** | Pointer to **NullableString** | Transaction hash. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewDexPriceDTO

`func NewDexPriceDTO() *DexPriceDTO`

NewDexPriceDTO instantiates a new DexPriceDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDexPriceDTOWithDefaults

`func NewDexPriceDTOWithDefaults() *DexPriceDTO`

NewDexPriceDTOWithDefaults instantiates a new DexPriceDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *DexPriceDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *DexPriceDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *DexPriceDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *DexPriceDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *DexPriceDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *DexPriceDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *DexPriceDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *DexPriceDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *DexPriceDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *DexPriceDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *DexPriceDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *DexPriceDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *DexPriceDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DexPriceDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DexPriceDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DexPriceDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *DexPriceDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *DexPriceDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetToken

`func (o *DexPriceDTO) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *DexPriceDTO) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *DexPriceDTO) SetToken(v string)`

SetToken sets Token field to given value.

### HasToken

`func (o *DexPriceDTO) HasToken() bool`

HasToken returns a boolean if a field has been set.

### SetTokenNil

`func (o *DexPriceDTO) SetTokenNil(b bool)`

 SetTokenNil sets the value for Token to be an explicit nil

### UnsetToken
`func (o *DexPriceDTO) UnsetToken()`

UnsetToken ensures that no value is present for Token, not even an explicit nil
### GetBatchId

`func (o *DexPriceDTO) GetBatchId() string`

GetBatchId returns the BatchId field if non-nil, zero value otherwise.

### GetBatchIdOk

`func (o *DexPriceDTO) GetBatchIdOk() (*string, bool)`

GetBatchIdOk returns a tuple with the BatchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBatchId

`func (o *DexPriceDTO) SetBatchId(v string)`

SetBatchId sets BatchId field to given value.

### HasBatchId

`func (o *DexPriceDTO) HasBatchId() bool`

HasBatchId returns a boolean if a field has been set.

### SetBatchIdNil

`func (o *DexPriceDTO) SetBatchIdNil(b bool)`

 SetBatchIdNil sets the value for BatchId to be an explicit nil

### UnsetBatchId
`func (o *DexPriceDTO) UnsetBatchId()`

UnsetBatchId ensures that no value is present for BatchId, not even an explicit nil
### GetPriceInOwlNumerator

`func (o *DexPriceDTO) GetPriceInOwlNumerator() string`

GetPriceInOwlNumerator returns the PriceInOwlNumerator field if non-nil, zero value otherwise.

### GetPriceInOwlNumeratorOk

`func (o *DexPriceDTO) GetPriceInOwlNumeratorOk() (*string, bool)`

GetPriceInOwlNumeratorOk returns a tuple with the PriceInOwlNumerator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceInOwlNumerator

`func (o *DexPriceDTO) SetPriceInOwlNumerator(v string)`

SetPriceInOwlNumerator sets PriceInOwlNumerator field to given value.

### HasPriceInOwlNumerator

`func (o *DexPriceDTO) HasPriceInOwlNumerator() bool`

HasPriceInOwlNumerator returns a boolean if a field has been set.

### SetPriceInOwlNumeratorNil

`func (o *DexPriceDTO) SetPriceInOwlNumeratorNil(b bool)`

 SetPriceInOwlNumeratorNil sets the value for PriceInOwlNumerator to be an explicit nil

### UnsetPriceInOwlNumerator
`func (o *DexPriceDTO) UnsetPriceInOwlNumerator()`

UnsetPriceInOwlNumerator ensures that no value is present for PriceInOwlNumerator, not even an explicit nil
### GetPriceInOwlDenominator

`func (o *DexPriceDTO) GetPriceInOwlDenominator() string`

GetPriceInOwlDenominator returns the PriceInOwlDenominator field if non-nil, zero value otherwise.

### GetPriceInOwlDenominatorOk

`func (o *DexPriceDTO) GetPriceInOwlDenominatorOk() (*string, bool)`

GetPriceInOwlDenominatorOk returns a tuple with the PriceInOwlDenominator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceInOwlDenominator

`func (o *DexPriceDTO) SetPriceInOwlDenominator(v string)`

SetPriceInOwlDenominator sets PriceInOwlDenominator field to given value.

### HasPriceInOwlDenominator

`func (o *DexPriceDTO) HasPriceInOwlDenominator() bool`

HasPriceInOwlDenominator returns a boolean if a field has been set.

### SetPriceInOwlDenominatorNil

`func (o *DexPriceDTO) SetPriceInOwlDenominatorNil(b bool)`

 SetPriceInOwlDenominatorNil sets the value for PriceInOwlDenominator to be an explicit nil

### UnsetPriceInOwlDenominator
`func (o *DexPriceDTO) UnsetPriceInOwlDenominator()`

UnsetPriceInOwlDenominator ensures that no value is present for PriceInOwlDenominator, not even an explicit nil
### GetVolume

`func (o *DexPriceDTO) GetVolume() string`

GetVolume returns the Volume field if non-nil, zero value otherwise.

### GetVolumeOk

`func (o *DexPriceDTO) GetVolumeOk() (*string, bool)`

GetVolumeOk returns a tuple with the Volume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume

`func (o *DexPriceDTO) SetVolume(v string)`

SetVolume sets Volume field to given value.

### HasVolume

`func (o *DexPriceDTO) HasVolume() bool`

HasVolume returns a boolean if a field has been set.

### SetVolumeNil

`func (o *DexPriceDTO) SetVolumeNil(b bool)`

 SetVolumeNil sets the value for Volume to be an explicit nil

### UnsetVolume
`func (o *DexPriceDTO) UnsetVolume()`

UnsetVolume ensures that no value is present for Volume, not even an explicit nil
### GetCreateEpoch

`func (o *DexPriceDTO) GetCreateEpoch() string`

GetCreateEpoch returns the CreateEpoch field if non-nil, zero value otherwise.

### GetCreateEpochOk

`func (o *DexPriceDTO) GetCreateEpochOk() (*string, bool)`

GetCreateEpochOk returns a tuple with the CreateEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreateEpoch

`func (o *DexPriceDTO) SetCreateEpoch(v string)`

SetCreateEpoch sets CreateEpoch field to given value.

### HasCreateEpoch

`func (o *DexPriceDTO) HasCreateEpoch() bool`

HasCreateEpoch returns a boolean if a field has been set.

### SetCreateEpochNil

`func (o *DexPriceDTO) SetCreateEpochNil(b bool)`

 SetCreateEpochNil sets the value for CreateEpoch to be an explicit nil

### UnsetCreateEpoch
`func (o *DexPriceDTO) UnsetCreateEpoch()`

UnsetCreateEpoch ensures that no value is present for CreateEpoch, not even an explicit nil
### GetTxHash

`func (o *DexPriceDTO) GetTxHash() string`

GetTxHash returns the TxHash field if non-nil, zero value otherwise.

### GetTxHashOk

`func (o *DexPriceDTO) GetTxHashOk() (*string, bool)`

GetTxHashOk returns a tuple with the TxHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxHash

`func (o *DexPriceDTO) SetTxHash(v string)`

SetTxHash sets TxHash field to given value.

### HasTxHash

`func (o *DexPriceDTO) HasTxHash() bool`

HasTxHash returns a boolean if a field has been set.

### SetTxHashNil

`func (o *DexPriceDTO) SetTxHashNil(b bool)`

 SetTxHashNil sets the value for TxHash to be an explicit nil

### UnsetTxHash
`func (o *DexPriceDTO) UnsetTxHash()`

UnsetTxHash ensures that no value is present for TxHash, not even an explicit nil
### GetVid

`func (o *DexPriceDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *DexPriceDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *DexPriceDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *DexPriceDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


