# CurveCoinDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (pool_id)-(coin_index). | [optional] 
**Index** | Pointer to **int32** | Coin index. | [optional] 
**Pool** | Pointer to **NullableString** |  | [optional] 
**Token** | Pointer to **NullableString** |  | [optional] 
**Underlying** | Pointer to **NullableString** |  | [optional] 
**Balance** | Pointer to **NullableString** |  | [optional] 
**Rate** | Pointer to **NullableString** | Exchange rate between this coin and the associated underlying coin within the pool. | [optional] 
**Updated** | Pointer to **NullableString** |  | [optional] 
**UpdatedAtBlock** | Pointer to **NullableString** |  | [optional] 
**UpdatedAtTransaction** | Pointer to **NullableString** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**BlockRange** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewCurveCoinDTO

`func NewCurveCoinDTO() *CurveCoinDTO`

NewCurveCoinDTO instantiates a new CurveCoinDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCurveCoinDTOWithDefaults

`func NewCurveCoinDTOWithDefaults() *CurveCoinDTO`

NewCurveCoinDTOWithDefaults instantiates a new CurveCoinDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *CurveCoinDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *CurveCoinDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *CurveCoinDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *CurveCoinDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *CurveCoinDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *CurveCoinDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *CurveCoinDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *CurveCoinDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *CurveCoinDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *CurveCoinDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *CurveCoinDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *CurveCoinDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *CurveCoinDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CurveCoinDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CurveCoinDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CurveCoinDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *CurveCoinDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *CurveCoinDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetIndex

`func (o *CurveCoinDTO) GetIndex() int32`

GetIndex returns the Index field if non-nil, zero value otherwise.

### GetIndexOk

`func (o *CurveCoinDTO) GetIndexOk() (*int32, bool)`

GetIndexOk returns a tuple with the Index field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndex

`func (o *CurveCoinDTO) SetIndex(v int32)`

SetIndex sets Index field to given value.

### HasIndex

`func (o *CurveCoinDTO) HasIndex() bool`

HasIndex returns a boolean if a field has been set.

### GetPool

`func (o *CurveCoinDTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *CurveCoinDTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *CurveCoinDTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *CurveCoinDTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *CurveCoinDTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *CurveCoinDTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetToken

`func (o *CurveCoinDTO) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *CurveCoinDTO) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *CurveCoinDTO) SetToken(v string)`

SetToken sets Token field to given value.

### HasToken

`func (o *CurveCoinDTO) HasToken() bool`

HasToken returns a boolean if a field has been set.

### SetTokenNil

`func (o *CurveCoinDTO) SetTokenNil(b bool)`

 SetTokenNil sets the value for Token to be an explicit nil

### UnsetToken
`func (o *CurveCoinDTO) UnsetToken()`

UnsetToken ensures that no value is present for Token, not even an explicit nil
### GetUnderlying

`func (o *CurveCoinDTO) GetUnderlying() string`

GetUnderlying returns the Underlying field if non-nil, zero value otherwise.

### GetUnderlyingOk

`func (o *CurveCoinDTO) GetUnderlyingOk() (*string, bool)`

GetUnderlyingOk returns a tuple with the Underlying field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlying

`func (o *CurveCoinDTO) SetUnderlying(v string)`

SetUnderlying sets Underlying field to given value.

### HasUnderlying

`func (o *CurveCoinDTO) HasUnderlying() bool`

HasUnderlying returns a boolean if a field has been set.

### SetUnderlyingNil

`func (o *CurveCoinDTO) SetUnderlyingNil(b bool)`

 SetUnderlyingNil sets the value for Underlying to be an explicit nil

### UnsetUnderlying
`func (o *CurveCoinDTO) UnsetUnderlying()`

UnsetUnderlying ensures that no value is present for Underlying, not even an explicit nil
### GetBalance

`func (o *CurveCoinDTO) GetBalance() string`

GetBalance returns the Balance field if non-nil, zero value otherwise.

### GetBalanceOk

`func (o *CurveCoinDTO) GetBalanceOk() (*string, bool)`

GetBalanceOk returns a tuple with the Balance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalance

`func (o *CurveCoinDTO) SetBalance(v string)`

SetBalance sets Balance field to given value.

### HasBalance

`func (o *CurveCoinDTO) HasBalance() bool`

HasBalance returns a boolean if a field has been set.

### SetBalanceNil

`func (o *CurveCoinDTO) SetBalanceNil(b bool)`

 SetBalanceNil sets the value for Balance to be an explicit nil

### UnsetBalance
`func (o *CurveCoinDTO) UnsetBalance()`

UnsetBalance ensures that no value is present for Balance, not even an explicit nil
### GetRate

`func (o *CurveCoinDTO) GetRate() string`

GetRate returns the Rate field if non-nil, zero value otherwise.

### GetRateOk

`func (o *CurveCoinDTO) GetRateOk() (*string, bool)`

GetRateOk returns a tuple with the Rate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRate

`func (o *CurveCoinDTO) SetRate(v string)`

SetRate sets Rate field to given value.

### HasRate

`func (o *CurveCoinDTO) HasRate() bool`

HasRate returns a boolean if a field has been set.

### SetRateNil

`func (o *CurveCoinDTO) SetRateNil(b bool)`

 SetRateNil sets the value for Rate to be an explicit nil

### UnsetRate
`func (o *CurveCoinDTO) UnsetRate()`

UnsetRate ensures that no value is present for Rate, not even an explicit nil
### GetUpdated

`func (o *CurveCoinDTO) GetUpdated() string`

GetUpdated returns the Updated field if non-nil, zero value otherwise.

### GetUpdatedOk

`func (o *CurveCoinDTO) GetUpdatedOk() (*string, bool)`

GetUpdatedOk returns a tuple with the Updated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdated

`func (o *CurveCoinDTO) SetUpdated(v string)`

SetUpdated sets Updated field to given value.

### HasUpdated

`func (o *CurveCoinDTO) HasUpdated() bool`

HasUpdated returns a boolean if a field has been set.

### SetUpdatedNil

`func (o *CurveCoinDTO) SetUpdatedNil(b bool)`

 SetUpdatedNil sets the value for Updated to be an explicit nil

### UnsetUpdated
`func (o *CurveCoinDTO) UnsetUpdated()`

UnsetUpdated ensures that no value is present for Updated, not even an explicit nil
### GetUpdatedAtBlock

`func (o *CurveCoinDTO) GetUpdatedAtBlock() string`

GetUpdatedAtBlock returns the UpdatedAtBlock field if non-nil, zero value otherwise.

### GetUpdatedAtBlockOk

`func (o *CurveCoinDTO) GetUpdatedAtBlockOk() (*string, bool)`

GetUpdatedAtBlockOk returns a tuple with the UpdatedAtBlock field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAtBlock

`func (o *CurveCoinDTO) SetUpdatedAtBlock(v string)`

SetUpdatedAtBlock sets UpdatedAtBlock field to given value.

### HasUpdatedAtBlock

`func (o *CurveCoinDTO) HasUpdatedAtBlock() bool`

HasUpdatedAtBlock returns a boolean if a field has been set.

### SetUpdatedAtBlockNil

`func (o *CurveCoinDTO) SetUpdatedAtBlockNil(b bool)`

 SetUpdatedAtBlockNil sets the value for UpdatedAtBlock to be an explicit nil

### UnsetUpdatedAtBlock
`func (o *CurveCoinDTO) UnsetUpdatedAtBlock()`

UnsetUpdatedAtBlock ensures that no value is present for UpdatedAtBlock, not even an explicit nil
### GetUpdatedAtTransaction

`func (o *CurveCoinDTO) GetUpdatedAtTransaction() string`

GetUpdatedAtTransaction returns the UpdatedAtTransaction field if non-nil, zero value otherwise.

### GetUpdatedAtTransactionOk

`func (o *CurveCoinDTO) GetUpdatedAtTransactionOk() (*string, bool)`

GetUpdatedAtTransactionOk returns a tuple with the UpdatedAtTransaction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAtTransaction

`func (o *CurveCoinDTO) SetUpdatedAtTransaction(v string)`

SetUpdatedAtTransaction sets UpdatedAtTransaction field to given value.

### HasUpdatedAtTransaction

`func (o *CurveCoinDTO) HasUpdatedAtTransaction() bool`

HasUpdatedAtTransaction returns a boolean if a field has been set.

### SetUpdatedAtTransactionNil

`func (o *CurveCoinDTO) SetUpdatedAtTransactionNil(b bool)`

 SetUpdatedAtTransactionNil sets the value for UpdatedAtTransaction to be an explicit nil

### UnsetUpdatedAtTransaction
`func (o *CurveCoinDTO) UnsetUpdatedAtTransaction()`

UnsetUpdatedAtTransaction ensures that no value is present for UpdatedAtTransaction, not even an explicit nil
### GetVid

`func (o *CurveCoinDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *CurveCoinDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *CurveCoinDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *CurveCoinDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetBlockRange

`func (o *CurveCoinDTO) GetBlockRange() string`

GetBlockRange returns the BlockRange field if non-nil, zero value otherwise.

### GetBlockRangeOk

`func (o *CurveCoinDTO) GetBlockRangeOk() (*string, bool)`

GetBlockRangeOk returns a tuple with the BlockRange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockRange

`func (o *CurveCoinDTO) SetBlockRange(v string)`

SetBlockRange sets BlockRange field to given value.

### HasBlockRange

`func (o *CurveCoinDTO) HasBlockRange() bool`

HasBlockRange returns a boolean if a field has been set.

### SetBlockRangeNil

`func (o *CurveCoinDTO) SetBlockRangeNil(b bool)`

 SetBlockRangeNil sets the value for BlockRange to be an explicit nil

### UnsetBlockRange
`func (o *CurveCoinDTO) UnsetBlockRange()`

UnsetBlockRange ensures that no value is present for BlockRange, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


