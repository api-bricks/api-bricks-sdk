# CurveUnderlyingCoinDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Equals to: (pool_id)-(coin_index). | [optional] 
**Index** | Pointer to **int32** | Coin index. | [optional] 
**Pool** | Pointer to **NullableString** |  | [optional] 
**Token** | Pointer to **NullableString** |  | [optional] 
**Coin** | Pointer to **NullableString** |  | [optional] 
**Balance** | Pointer to **NullableString** |  | [optional] 
**Updated** | Pointer to **NullableString** |  | [optional] 
**UpdatedAtBlock** | Pointer to **NullableString** |  | [optional] 
**UpdatedAtTransaction** | Pointer to **NullableString** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewCurveUnderlyingCoinDTO

`func NewCurveUnderlyingCoinDTO() *CurveUnderlyingCoinDTO`

NewCurveUnderlyingCoinDTO instantiates a new CurveUnderlyingCoinDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCurveUnderlyingCoinDTOWithDefaults

`func NewCurveUnderlyingCoinDTOWithDefaults() *CurveUnderlyingCoinDTO`

NewCurveUnderlyingCoinDTOWithDefaults instantiates a new CurveUnderlyingCoinDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *CurveUnderlyingCoinDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *CurveUnderlyingCoinDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *CurveUnderlyingCoinDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *CurveUnderlyingCoinDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *CurveUnderlyingCoinDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *CurveUnderlyingCoinDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *CurveUnderlyingCoinDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *CurveUnderlyingCoinDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *CurveUnderlyingCoinDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *CurveUnderlyingCoinDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *CurveUnderlyingCoinDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *CurveUnderlyingCoinDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *CurveUnderlyingCoinDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CurveUnderlyingCoinDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CurveUnderlyingCoinDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CurveUnderlyingCoinDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *CurveUnderlyingCoinDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *CurveUnderlyingCoinDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetIndex

`func (o *CurveUnderlyingCoinDTO) GetIndex() int32`

GetIndex returns the Index field if non-nil, zero value otherwise.

### GetIndexOk

`func (o *CurveUnderlyingCoinDTO) GetIndexOk() (*int32, bool)`

GetIndexOk returns a tuple with the Index field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndex

`func (o *CurveUnderlyingCoinDTO) SetIndex(v int32)`

SetIndex sets Index field to given value.

### HasIndex

`func (o *CurveUnderlyingCoinDTO) HasIndex() bool`

HasIndex returns a boolean if a field has been set.

### GetPool

`func (o *CurveUnderlyingCoinDTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *CurveUnderlyingCoinDTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *CurveUnderlyingCoinDTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *CurveUnderlyingCoinDTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *CurveUnderlyingCoinDTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *CurveUnderlyingCoinDTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetToken

`func (o *CurveUnderlyingCoinDTO) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *CurveUnderlyingCoinDTO) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *CurveUnderlyingCoinDTO) SetToken(v string)`

SetToken sets Token field to given value.

### HasToken

`func (o *CurveUnderlyingCoinDTO) HasToken() bool`

HasToken returns a boolean if a field has been set.

### SetTokenNil

`func (o *CurveUnderlyingCoinDTO) SetTokenNil(b bool)`

 SetTokenNil sets the value for Token to be an explicit nil

### UnsetToken
`func (o *CurveUnderlyingCoinDTO) UnsetToken()`

UnsetToken ensures that no value is present for Token, not even an explicit nil
### GetCoin

`func (o *CurveUnderlyingCoinDTO) GetCoin() string`

GetCoin returns the Coin field if non-nil, zero value otherwise.

### GetCoinOk

`func (o *CurveUnderlyingCoinDTO) GetCoinOk() (*string, bool)`

GetCoinOk returns a tuple with the Coin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoin

`func (o *CurveUnderlyingCoinDTO) SetCoin(v string)`

SetCoin sets Coin field to given value.

### HasCoin

`func (o *CurveUnderlyingCoinDTO) HasCoin() bool`

HasCoin returns a boolean if a field has been set.

### SetCoinNil

`func (o *CurveUnderlyingCoinDTO) SetCoinNil(b bool)`

 SetCoinNil sets the value for Coin to be an explicit nil

### UnsetCoin
`func (o *CurveUnderlyingCoinDTO) UnsetCoin()`

UnsetCoin ensures that no value is present for Coin, not even an explicit nil
### GetBalance

`func (o *CurveUnderlyingCoinDTO) GetBalance() string`

GetBalance returns the Balance field if non-nil, zero value otherwise.

### GetBalanceOk

`func (o *CurveUnderlyingCoinDTO) GetBalanceOk() (*string, bool)`

GetBalanceOk returns a tuple with the Balance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalance

`func (o *CurveUnderlyingCoinDTO) SetBalance(v string)`

SetBalance sets Balance field to given value.

### HasBalance

`func (o *CurveUnderlyingCoinDTO) HasBalance() bool`

HasBalance returns a boolean if a field has been set.

### SetBalanceNil

`func (o *CurveUnderlyingCoinDTO) SetBalanceNil(b bool)`

 SetBalanceNil sets the value for Balance to be an explicit nil

### UnsetBalance
`func (o *CurveUnderlyingCoinDTO) UnsetBalance()`

UnsetBalance ensures that no value is present for Balance, not even an explicit nil
### GetUpdated

`func (o *CurveUnderlyingCoinDTO) GetUpdated() string`

GetUpdated returns the Updated field if non-nil, zero value otherwise.

### GetUpdatedOk

`func (o *CurveUnderlyingCoinDTO) GetUpdatedOk() (*string, bool)`

GetUpdatedOk returns a tuple with the Updated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdated

`func (o *CurveUnderlyingCoinDTO) SetUpdated(v string)`

SetUpdated sets Updated field to given value.

### HasUpdated

`func (o *CurveUnderlyingCoinDTO) HasUpdated() bool`

HasUpdated returns a boolean if a field has been set.

### SetUpdatedNil

`func (o *CurveUnderlyingCoinDTO) SetUpdatedNil(b bool)`

 SetUpdatedNil sets the value for Updated to be an explicit nil

### UnsetUpdated
`func (o *CurveUnderlyingCoinDTO) UnsetUpdated()`

UnsetUpdated ensures that no value is present for Updated, not even an explicit nil
### GetUpdatedAtBlock

`func (o *CurveUnderlyingCoinDTO) GetUpdatedAtBlock() string`

GetUpdatedAtBlock returns the UpdatedAtBlock field if non-nil, zero value otherwise.

### GetUpdatedAtBlockOk

`func (o *CurveUnderlyingCoinDTO) GetUpdatedAtBlockOk() (*string, bool)`

GetUpdatedAtBlockOk returns a tuple with the UpdatedAtBlock field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAtBlock

`func (o *CurveUnderlyingCoinDTO) SetUpdatedAtBlock(v string)`

SetUpdatedAtBlock sets UpdatedAtBlock field to given value.

### HasUpdatedAtBlock

`func (o *CurveUnderlyingCoinDTO) HasUpdatedAtBlock() bool`

HasUpdatedAtBlock returns a boolean if a field has been set.

### SetUpdatedAtBlockNil

`func (o *CurveUnderlyingCoinDTO) SetUpdatedAtBlockNil(b bool)`

 SetUpdatedAtBlockNil sets the value for UpdatedAtBlock to be an explicit nil

### UnsetUpdatedAtBlock
`func (o *CurveUnderlyingCoinDTO) UnsetUpdatedAtBlock()`

UnsetUpdatedAtBlock ensures that no value is present for UpdatedAtBlock, not even an explicit nil
### GetUpdatedAtTransaction

`func (o *CurveUnderlyingCoinDTO) GetUpdatedAtTransaction() string`

GetUpdatedAtTransaction returns the UpdatedAtTransaction field if non-nil, zero value otherwise.

### GetUpdatedAtTransactionOk

`func (o *CurveUnderlyingCoinDTO) GetUpdatedAtTransactionOk() (*string, bool)`

GetUpdatedAtTransactionOk returns a tuple with the UpdatedAtTransaction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAtTransaction

`func (o *CurveUnderlyingCoinDTO) SetUpdatedAtTransaction(v string)`

SetUpdatedAtTransaction sets UpdatedAtTransaction field to given value.

### HasUpdatedAtTransaction

`func (o *CurveUnderlyingCoinDTO) HasUpdatedAtTransaction() bool`

HasUpdatedAtTransaction returns a boolean if a field has been set.

### SetUpdatedAtTransactionNil

`func (o *CurveUnderlyingCoinDTO) SetUpdatedAtTransactionNil(b bool)`

 SetUpdatedAtTransactionNil sets the value for UpdatedAtTransaction to be an explicit nil

### UnsetUpdatedAtTransaction
`func (o *CurveUnderlyingCoinDTO) UnsetUpdatedAtTransaction()`

UnsetUpdatedAtTransaction ensures that no value is present for UpdatedAtTransaction, not even an explicit nil
### GetVid

`func (o *CurveUnderlyingCoinDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *CurveUnderlyingCoinDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *CurveUnderlyingCoinDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *CurveUnderlyingCoinDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


