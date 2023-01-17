# DexDepositDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (transaction hash)-(token id). | [optional] 
**User** | Pointer to **NullableString** | User address. | [optional] 
**TokenAddress** | Pointer to **NullableString** | Token address. | [optional] 
**Amount** | Pointer to **NullableString** | Amount of deposit. | [optional] 
**BatchId** | Pointer to **NullableString** | Identifier (numerical). | [optional] 
**CreateEpoch** | Pointer to **NullableString** | Create epoch. | [optional] 
**TxHash** | Pointer to **NullableString** | Transaction hash. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewDexDepositDTO

`func NewDexDepositDTO() *DexDepositDTO`

NewDexDepositDTO instantiates a new DexDepositDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDexDepositDTOWithDefaults

`func NewDexDepositDTOWithDefaults() *DexDepositDTO`

NewDexDepositDTOWithDefaults instantiates a new DexDepositDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *DexDepositDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *DexDepositDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *DexDepositDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *DexDepositDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *DexDepositDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *DexDepositDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *DexDepositDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *DexDepositDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *DexDepositDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *DexDepositDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *DexDepositDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *DexDepositDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *DexDepositDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DexDepositDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DexDepositDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DexDepositDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *DexDepositDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *DexDepositDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetUser

`func (o *DexDepositDTO) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *DexDepositDTO) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *DexDepositDTO) SetUser(v string)`

SetUser sets User field to given value.

### HasUser

`func (o *DexDepositDTO) HasUser() bool`

HasUser returns a boolean if a field has been set.

### SetUserNil

`func (o *DexDepositDTO) SetUserNil(b bool)`

 SetUserNil sets the value for User to be an explicit nil

### UnsetUser
`func (o *DexDepositDTO) UnsetUser()`

UnsetUser ensures that no value is present for User, not even an explicit nil
### GetTokenAddress

`func (o *DexDepositDTO) GetTokenAddress() string`

GetTokenAddress returns the TokenAddress field if non-nil, zero value otherwise.

### GetTokenAddressOk

`func (o *DexDepositDTO) GetTokenAddressOk() (*string, bool)`

GetTokenAddressOk returns a tuple with the TokenAddress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenAddress

`func (o *DexDepositDTO) SetTokenAddress(v string)`

SetTokenAddress sets TokenAddress field to given value.

### HasTokenAddress

`func (o *DexDepositDTO) HasTokenAddress() bool`

HasTokenAddress returns a boolean if a field has been set.

### SetTokenAddressNil

`func (o *DexDepositDTO) SetTokenAddressNil(b bool)`

 SetTokenAddressNil sets the value for TokenAddress to be an explicit nil

### UnsetTokenAddress
`func (o *DexDepositDTO) UnsetTokenAddress()`

UnsetTokenAddress ensures that no value is present for TokenAddress, not even an explicit nil
### GetAmount

`func (o *DexDepositDTO) GetAmount() string`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *DexDepositDTO) GetAmountOk() (*string, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *DexDepositDTO) SetAmount(v string)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *DexDepositDTO) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### SetAmountNil

`func (o *DexDepositDTO) SetAmountNil(b bool)`

 SetAmountNil sets the value for Amount to be an explicit nil

### UnsetAmount
`func (o *DexDepositDTO) UnsetAmount()`

UnsetAmount ensures that no value is present for Amount, not even an explicit nil
### GetBatchId

`func (o *DexDepositDTO) GetBatchId() string`

GetBatchId returns the BatchId field if non-nil, zero value otherwise.

### GetBatchIdOk

`func (o *DexDepositDTO) GetBatchIdOk() (*string, bool)`

GetBatchIdOk returns a tuple with the BatchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBatchId

`func (o *DexDepositDTO) SetBatchId(v string)`

SetBatchId sets BatchId field to given value.

### HasBatchId

`func (o *DexDepositDTO) HasBatchId() bool`

HasBatchId returns a boolean if a field has been set.

### SetBatchIdNil

`func (o *DexDepositDTO) SetBatchIdNil(b bool)`

 SetBatchIdNil sets the value for BatchId to be an explicit nil

### UnsetBatchId
`func (o *DexDepositDTO) UnsetBatchId()`

UnsetBatchId ensures that no value is present for BatchId, not even an explicit nil
### GetCreateEpoch

`func (o *DexDepositDTO) GetCreateEpoch() string`

GetCreateEpoch returns the CreateEpoch field if non-nil, zero value otherwise.

### GetCreateEpochOk

`func (o *DexDepositDTO) GetCreateEpochOk() (*string, bool)`

GetCreateEpochOk returns a tuple with the CreateEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreateEpoch

`func (o *DexDepositDTO) SetCreateEpoch(v string)`

SetCreateEpoch sets CreateEpoch field to given value.

### HasCreateEpoch

`func (o *DexDepositDTO) HasCreateEpoch() bool`

HasCreateEpoch returns a boolean if a field has been set.

### SetCreateEpochNil

`func (o *DexDepositDTO) SetCreateEpochNil(b bool)`

 SetCreateEpochNil sets the value for CreateEpoch to be an explicit nil

### UnsetCreateEpoch
`func (o *DexDepositDTO) UnsetCreateEpoch()`

UnsetCreateEpoch ensures that no value is present for CreateEpoch, not even an explicit nil
### GetTxHash

`func (o *DexDepositDTO) GetTxHash() string`

GetTxHash returns the TxHash field if non-nil, zero value otherwise.

### GetTxHashOk

`func (o *DexDepositDTO) GetTxHashOk() (*string, bool)`

GetTxHashOk returns a tuple with the TxHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxHash

`func (o *DexDepositDTO) SetTxHash(v string)`

SetTxHash sets TxHash field to given value.

### HasTxHash

`func (o *DexDepositDTO) HasTxHash() bool`

HasTxHash returns a boolean if a field has been set.

### SetTxHashNil

`func (o *DexDepositDTO) SetTxHashNil(b bool)`

 SetTxHashNil sets the value for TxHash to be an explicit nil

### UnsetTxHash
`func (o *DexDepositDTO) UnsetTxHash()`

UnsetTxHash ensures that no value is present for TxHash, not even an explicit nil
### GetVid

`func (o *DexDepositDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *DexDepositDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *DexDepositDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *DexDepositDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


