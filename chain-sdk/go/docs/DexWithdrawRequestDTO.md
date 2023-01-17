# DexWithdrawRequestDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (transaction hash)-(id). | [optional] 
**User** | Pointer to **NullableString** |  | [optional] 
**TokenAddress** | Pointer to **NullableString** |  | [optional] 
**Amount** | Pointer to **NullableString** |  | [optional] 
**WithdrawableFromBatchId** | Pointer to **NullableString** |  | [optional] 
**CreateEpoch** | Pointer to **NullableString** |  | [optional] 
**CreateBatchId** | Pointer to **NullableString** |  | [optional] 
**TxHash** | Pointer to **NullableString** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewDexWithdrawRequestDTO

`func NewDexWithdrawRequestDTO() *DexWithdrawRequestDTO`

NewDexWithdrawRequestDTO instantiates a new DexWithdrawRequestDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDexWithdrawRequestDTOWithDefaults

`func NewDexWithdrawRequestDTOWithDefaults() *DexWithdrawRequestDTO`

NewDexWithdrawRequestDTOWithDefaults instantiates a new DexWithdrawRequestDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *DexWithdrawRequestDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *DexWithdrawRequestDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *DexWithdrawRequestDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *DexWithdrawRequestDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *DexWithdrawRequestDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *DexWithdrawRequestDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *DexWithdrawRequestDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *DexWithdrawRequestDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *DexWithdrawRequestDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *DexWithdrawRequestDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *DexWithdrawRequestDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *DexWithdrawRequestDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *DexWithdrawRequestDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DexWithdrawRequestDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DexWithdrawRequestDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DexWithdrawRequestDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *DexWithdrawRequestDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *DexWithdrawRequestDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetUser

`func (o *DexWithdrawRequestDTO) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *DexWithdrawRequestDTO) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *DexWithdrawRequestDTO) SetUser(v string)`

SetUser sets User field to given value.

### HasUser

`func (o *DexWithdrawRequestDTO) HasUser() bool`

HasUser returns a boolean if a field has been set.

### SetUserNil

`func (o *DexWithdrawRequestDTO) SetUserNil(b bool)`

 SetUserNil sets the value for User to be an explicit nil

### UnsetUser
`func (o *DexWithdrawRequestDTO) UnsetUser()`

UnsetUser ensures that no value is present for User, not even an explicit nil
### GetTokenAddress

`func (o *DexWithdrawRequestDTO) GetTokenAddress() string`

GetTokenAddress returns the TokenAddress field if non-nil, zero value otherwise.

### GetTokenAddressOk

`func (o *DexWithdrawRequestDTO) GetTokenAddressOk() (*string, bool)`

GetTokenAddressOk returns a tuple with the TokenAddress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenAddress

`func (o *DexWithdrawRequestDTO) SetTokenAddress(v string)`

SetTokenAddress sets TokenAddress field to given value.

### HasTokenAddress

`func (o *DexWithdrawRequestDTO) HasTokenAddress() bool`

HasTokenAddress returns a boolean if a field has been set.

### SetTokenAddressNil

`func (o *DexWithdrawRequestDTO) SetTokenAddressNil(b bool)`

 SetTokenAddressNil sets the value for TokenAddress to be an explicit nil

### UnsetTokenAddress
`func (o *DexWithdrawRequestDTO) UnsetTokenAddress()`

UnsetTokenAddress ensures that no value is present for TokenAddress, not even an explicit nil
### GetAmount

`func (o *DexWithdrawRequestDTO) GetAmount() string`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *DexWithdrawRequestDTO) GetAmountOk() (*string, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *DexWithdrawRequestDTO) SetAmount(v string)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *DexWithdrawRequestDTO) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### SetAmountNil

`func (o *DexWithdrawRequestDTO) SetAmountNil(b bool)`

 SetAmountNil sets the value for Amount to be an explicit nil

### UnsetAmount
`func (o *DexWithdrawRequestDTO) UnsetAmount()`

UnsetAmount ensures that no value is present for Amount, not even an explicit nil
### GetWithdrawableFromBatchId

`func (o *DexWithdrawRequestDTO) GetWithdrawableFromBatchId() string`

GetWithdrawableFromBatchId returns the WithdrawableFromBatchId field if non-nil, zero value otherwise.

### GetWithdrawableFromBatchIdOk

`func (o *DexWithdrawRequestDTO) GetWithdrawableFromBatchIdOk() (*string, bool)`

GetWithdrawableFromBatchIdOk returns a tuple with the WithdrawableFromBatchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWithdrawableFromBatchId

`func (o *DexWithdrawRequestDTO) SetWithdrawableFromBatchId(v string)`

SetWithdrawableFromBatchId sets WithdrawableFromBatchId field to given value.

### HasWithdrawableFromBatchId

`func (o *DexWithdrawRequestDTO) HasWithdrawableFromBatchId() bool`

HasWithdrawableFromBatchId returns a boolean if a field has been set.

### SetWithdrawableFromBatchIdNil

`func (o *DexWithdrawRequestDTO) SetWithdrawableFromBatchIdNil(b bool)`

 SetWithdrawableFromBatchIdNil sets the value for WithdrawableFromBatchId to be an explicit nil

### UnsetWithdrawableFromBatchId
`func (o *DexWithdrawRequestDTO) UnsetWithdrawableFromBatchId()`

UnsetWithdrawableFromBatchId ensures that no value is present for WithdrawableFromBatchId, not even an explicit nil
### GetCreateEpoch

`func (o *DexWithdrawRequestDTO) GetCreateEpoch() string`

GetCreateEpoch returns the CreateEpoch field if non-nil, zero value otherwise.

### GetCreateEpochOk

`func (o *DexWithdrawRequestDTO) GetCreateEpochOk() (*string, bool)`

GetCreateEpochOk returns a tuple with the CreateEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreateEpoch

`func (o *DexWithdrawRequestDTO) SetCreateEpoch(v string)`

SetCreateEpoch sets CreateEpoch field to given value.

### HasCreateEpoch

`func (o *DexWithdrawRequestDTO) HasCreateEpoch() bool`

HasCreateEpoch returns a boolean if a field has been set.

### SetCreateEpochNil

`func (o *DexWithdrawRequestDTO) SetCreateEpochNil(b bool)`

 SetCreateEpochNil sets the value for CreateEpoch to be an explicit nil

### UnsetCreateEpoch
`func (o *DexWithdrawRequestDTO) UnsetCreateEpoch()`

UnsetCreateEpoch ensures that no value is present for CreateEpoch, not even an explicit nil
### GetCreateBatchId

`func (o *DexWithdrawRequestDTO) GetCreateBatchId() string`

GetCreateBatchId returns the CreateBatchId field if non-nil, zero value otherwise.

### GetCreateBatchIdOk

`func (o *DexWithdrawRequestDTO) GetCreateBatchIdOk() (*string, bool)`

GetCreateBatchIdOk returns a tuple with the CreateBatchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreateBatchId

`func (o *DexWithdrawRequestDTO) SetCreateBatchId(v string)`

SetCreateBatchId sets CreateBatchId field to given value.

### HasCreateBatchId

`func (o *DexWithdrawRequestDTO) HasCreateBatchId() bool`

HasCreateBatchId returns a boolean if a field has been set.

### SetCreateBatchIdNil

`func (o *DexWithdrawRequestDTO) SetCreateBatchIdNil(b bool)`

 SetCreateBatchIdNil sets the value for CreateBatchId to be an explicit nil

### UnsetCreateBatchId
`func (o *DexWithdrawRequestDTO) UnsetCreateBatchId()`

UnsetCreateBatchId ensures that no value is present for CreateBatchId, not even an explicit nil
### GetTxHash

`func (o *DexWithdrawRequestDTO) GetTxHash() string`

GetTxHash returns the TxHash field if non-nil, zero value otherwise.

### GetTxHashOk

`func (o *DexWithdrawRequestDTO) GetTxHashOk() (*string, bool)`

GetTxHashOk returns a tuple with the TxHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxHash

`func (o *DexWithdrawRequestDTO) SetTxHash(v string)`

SetTxHash sets TxHash field to given value.

### HasTxHash

`func (o *DexWithdrawRequestDTO) HasTxHash() bool`

HasTxHash returns a boolean if a field has been set.

### SetTxHashNil

`func (o *DexWithdrawRequestDTO) SetTxHashNil(b bool)`

 SetTxHashNil sets the value for TxHash to be an explicit nil

### UnsetTxHash
`func (o *DexWithdrawRequestDTO) UnsetTxHash()`

UnsetTxHash ensures that no value is present for TxHash, not even an explicit nil
### GetVid

`func (o *DexWithdrawRequestDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *DexWithdrawRequestDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *DexWithdrawRequestDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *DexWithdrawRequestDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


