# DexWithdrawDTO

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
**CreateEpoch** | Pointer to **NullableString** |  | [optional] 
**CreateBatchId** | Pointer to **NullableString** |  | [optional] 
**TxHash** | Pointer to **NullableString** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewDexWithdrawDTO

`func NewDexWithdrawDTO() *DexWithdrawDTO`

NewDexWithdrawDTO instantiates a new DexWithdrawDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDexWithdrawDTOWithDefaults

`func NewDexWithdrawDTOWithDefaults() *DexWithdrawDTO`

NewDexWithdrawDTOWithDefaults instantiates a new DexWithdrawDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *DexWithdrawDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *DexWithdrawDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *DexWithdrawDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *DexWithdrawDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *DexWithdrawDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *DexWithdrawDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *DexWithdrawDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *DexWithdrawDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *DexWithdrawDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *DexWithdrawDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *DexWithdrawDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *DexWithdrawDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *DexWithdrawDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DexWithdrawDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DexWithdrawDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DexWithdrawDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *DexWithdrawDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *DexWithdrawDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetUser

`func (o *DexWithdrawDTO) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *DexWithdrawDTO) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *DexWithdrawDTO) SetUser(v string)`

SetUser sets User field to given value.

### HasUser

`func (o *DexWithdrawDTO) HasUser() bool`

HasUser returns a boolean if a field has been set.

### SetUserNil

`func (o *DexWithdrawDTO) SetUserNil(b bool)`

 SetUserNil sets the value for User to be an explicit nil

### UnsetUser
`func (o *DexWithdrawDTO) UnsetUser()`

UnsetUser ensures that no value is present for User, not even an explicit nil
### GetTokenAddress

`func (o *DexWithdrawDTO) GetTokenAddress() string`

GetTokenAddress returns the TokenAddress field if non-nil, zero value otherwise.

### GetTokenAddressOk

`func (o *DexWithdrawDTO) GetTokenAddressOk() (*string, bool)`

GetTokenAddressOk returns a tuple with the TokenAddress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenAddress

`func (o *DexWithdrawDTO) SetTokenAddress(v string)`

SetTokenAddress sets TokenAddress field to given value.

### HasTokenAddress

`func (o *DexWithdrawDTO) HasTokenAddress() bool`

HasTokenAddress returns a boolean if a field has been set.

### SetTokenAddressNil

`func (o *DexWithdrawDTO) SetTokenAddressNil(b bool)`

 SetTokenAddressNil sets the value for TokenAddress to be an explicit nil

### UnsetTokenAddress
`func (o *DexWithdrawDTO) UnsetTokenAddress()`

UnsetTokenAddress ensures that no value is present for TokenAddress, not even an explicit nil
### GetAmount

`func (o *DexWithdrawDTO) GetAmount() string`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *DexWithdrawDTO) GetAmountOk() (*string, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *DexWithdrawDTO) SetAmount(v string)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *DexWithdrawDTO) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### SetAmountNil

`func (o *DexWithdrawDTO) SetAmountNil(b bool)`

 SetAmountNil sets the value for Amount to be an explicit nil

### UnsetAmount
`func (o *DexWithdrawDTO) UnsetAmount()`

UnsetAmount ensures that no value is present for Amount, not even an explicit nil
### GetCreateEpoch

`func (o *DexWithdrawDTO) GetCreateEpoch() string`

GetCreateEpoch returns the CreateEpoch field if non-nil, zero value otherwise.

### GetCreateEpochOk

`func (o *DexWithdrawDTO) GetCreateEpochOk() (*string, bool)`

GetCreateEpochOk returns a tuple with the CreateEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreateEpoch

`func (o *DexWithdrawDTO) SetCreateEpoch(v string)`

SetCreateEpoch sets CreateEpoch field to given value.

### HasCreateEpoch

`func (o *DexWithdrawDTO) HasCreateEpoch() bool`

HasCreateEpoch returns a boolean if a field has been set.

### SetCreateEpochNil

`func (o *DexWithdrawDTO) SetCreateEpochNil(b bool)`

 SetCreateEpochNil sets the value for CreateEpoch to be an explicit nil

### UnsetCreateEpoch
`func (o *DexWithdrawDTO) UnsetCreateEpoch()`

UnsetCreateEpoch ensures that no value is present for CreateEpoch, not even an explicit nil
### GetCreateBatchId

`func (o *DexWithdrawDTO) GetCreateBatchId() string`

GetCreateBatchId returns the CreateBatchId field if non-nil, zero value otherwise.

### GetCreateBatchIdOk

`func (o *DexWithdrawDTO) GetCreateBatchIdOk() (*string, bool)`

GetCreateBatchIdOk returns a tuple with the CreateBatchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreateBatchId

`func (o *DexWithdrawDTO) SetCreateBatchId(v string)`

SetCreateBatchId sets CreateBatchId field to given value.

### HasCreateBatchId

`func (o *DexWithdrawDTO) HasCreateBatchId() bool`

HasCreateBatchId returns a boolean if a field has been set.

### SetCreateBatchIdNil

`func (o *DexWithdrawDTO) SetCreateBatchIdNil(b bool)`

 SetCreateBatchIdNil sets the value for CreateBatchId to be an explicit nil

### UnsetCreateBatchId
`func (o *DexWithdrawDTO) UnsetCreateBatchId()`

UnsetCreateBatchId ensures that no value is present for CreateBatchId, not even an explicit nil
### GetTxHash

`func (o *DexWithdrawDTO) GetTxHash() string`

GetTxHash returns the TxHash field if non-nil, zero value otherwise.

### GetTxHashOk

`func (o *DexWithdrawDTO) GetTxHashOk() (*string, bool)`

GetTxHashOk returns a tuple with the TxHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxHash

`func (o *DexWithdrawDTO) SetTxHash(v string)`

SetTxHash sets TxHash field to given value.

### HasTxHash

`func (o *DexWithdrawDTO) HasTxHash() bool`

HasTxHash returns a boolean if a field has been set.

### SetTxHashNil

`func (o *DexWithdrawDTO) SetTxHashNil(b bool)`

 SetTxHashNil sets the value for TxHash to be an explicit nil

### UnsetTxHash
`func (o *DexWithdrawDTO) UnsetTxHash()`

UnsetTxHash ensures that no value is present for TxHash, not even an explicit nil
### GetVid

`func (o *DexWithdrawDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *DexWithdrawDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *DexWithdrawDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *DexWithdrawDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


