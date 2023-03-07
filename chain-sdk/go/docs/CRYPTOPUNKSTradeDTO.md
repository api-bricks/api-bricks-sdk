# CRYPTOPUNKSTradeDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **NullableString** |  | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**BlockRange** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**TransactionHash** | Pointer to **NullableString** |  | [optional] 
**LogIndex** | Pointer to **int32** |  | [optional] 
**Timestamp** | Pointer to **NullableString** |  | [optional] 
**IsBundle** | Pointer to **bool** |  | [optional] 
**Collection** | Pointer to **NullableString** |  | [optional] 
**TokenId** | Pointer to **NullableString** |  | [optional] 
**Amount** | Pointer to **NullableString** |  | [optional] 
**PriceEth** | Pointer to **NullableString** |  | [optional] 
**Buyer** | Pointer to **NullableString** |  | [optional] 
**Seller** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewCRYPTOPUNKSTradeDTO

`func NewCRYPTOPUNKSTradeDTO() *CRYPTOPUNKSTradeDTO`

NewCRYPTOPUNKSTradeDTO instantiates a new CRYPTOPUNKSTradeDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCRYPTOPUNKSTradeDTOWithDefaults

`func NewCRYPTOPUNKSTradeDTOWithDefaults() *CRYPTOPUNKSTradeDTO`

NewCRYPTOPUNKSTradeDTOWithDefaults instantiates a new CRYPTOPUNKSTradeDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *CRYPTOPUNKSTradeDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *CRYPTOPUNKSTradeDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *CRYPTOPUNKSTradeDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *CRYPTOPUNKSTradeDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *CRYPTOPUNKSTradeDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *CRYPTOPUNKSTradeDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *CRYPTOPUNKSTradeDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *CRYPTOPUNKSTradeDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *CRYPTOPUNKSTradeDTO) GetBlockNumber() string`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *CRYPTOPUNKSTradeDTO) GetBlockNumberOk() (*string, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *CRYPTOPUNKSTradeDTO) SetBlockNumber(v string)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *CRYPTOPUNKSTradeDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### SetBlockNumberNil

`func (o *CRYPTOPUNKSTradeDTO) SetBlockNumberNil(b bool)`

 SetBlockNumberNil sets the value for BlockNumber to be an explicit nil

### UnsetBlockNumber
`func (o *CRYPTOPUNKSTradeDTO) UnsetBlockNumber()`

UnsetBlockNumber ensures that no value is present for BlockNumber, not even an explicit nil
### GetVid

`func (o *CRYPTOPUNKSTradeDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *CRYPTOPUNKSTradeDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *CRYPTOPUNKSTradeDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *CRYPTOPUNKSTradeDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetBlockRange

`func (o *CRYPTOPUNKSTradeDTO) GetBlockRange() string`

GetBlockRange returns the BlockRange field if non-nil, zero value otherwise.

### GetBlockRangeOk

`func (o *CRYPTOPUNKSTradeDTO) GetBlockRangeOk() (*string, bool)`

GetBlockRangeOk returns a tuple with the BlockRange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockRange

`func (o *CRYPTOPUNKSTradeDTO) SetBlockRange(v string)`

SetBlockRange sets BlockRange field to given value.

### HasBlockRange

`func (o *CRYPTOPUNKSTradeDTO) HasBlockRange() bool`

HasBlockRange returns a boolean if a field has been set.

### SetBlockRangeNil

`func (o *CRYPTOPUNKSTradeDTO) SetBlockRangeNil(b bool)`

 SetBlockRangeNil sets the value for BlockRange to be an explicit nil

### UnsetBlockRange
`func (o *CRYPTOPUNKSTradeDTO) UnsetBlockRange()`

UnsetBlockRange ensures that no value is present for BlockRange, not even an explicit nil
### GetId

`func (o *CRYPTOPUNKSTradeDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CRYPTOPUNKSTradeDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CRYPTOPUNKSTradeDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CRYPTOPUNKSTradeDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *CRYPTOPUNKSTradeDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *CRYPTOPUNKSTradeDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetTransactionHash

`func (o *CRYPTOPUNKSTradeDTO) GetTransactionHash() string`

GetTransactionHash returns the TransactionHash field if non-nil, zero value otherwise.

### GetTransactionHashOk

`func (o *CRYPTOPUNKSTradeDTO) GetTransactionHashOk() (*string, bool)`

GetTransactionHashOk returns a tuple with the TransactionHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransactionHash

`func (o *CRYPTOPUNKSTradeDTO) SetTransactionHash(v string)`

SetTransactionHash sets TransactionHash field to given value.

### HasTransactionHash

`func (o *CRYPTOPUNKSTradeDTO) HasTransactionHash() bool`

HasTransactionHash returns a boolean if a field has been set.

### SetTransactionHashNil

`func (o *CRYPTOPUNKSTradeDTO) SetTransactionHashNil(b bool)`

 SetTransactionHashNil sets the value for TransactionHash to be an explicit nil

### UnsetTransactionHash
`func (o *CRYPTOPUNKSTradeDTO) UnsetTransactionHash()`

UnsetTransactionHash ensures that no value is present for TransactionHash, not even an explicit nil
### GetLogIndex

`func (o *CRYPTOPUNKSTradeDTO) GetLogIndex() int32`

GetLogIndex returns the LogIndex field if non-nil, zero value otherwise.

### GetLogIndexOk

`func (o *CRYPTOPUNKSTradeDTO) GetLogIndexOk() (*int32, bool)`

GetLogIndexOk returns a tuple with the LogIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogIndex

`func (o *CRYPTOPUNKSTradeDTO) SetLogIndex(v int32)`

SetLogIndex sets LogIndex field to given value.

### HasLogIndex

`func (o *CRYPTOPUNKSTradeDTO) HasLogIndex() bool`

HasLogIndex returns a boolean if a field has been set.

### GetTimestamp

`func (o *CRYPTOPUNKSTradeDTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *CRYPTOPUNKSTradeDTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *CRYPTOPUNKSTradeDTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *CRYPTOPUNKSTradeDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *CRYPTOPUNKSTradeDTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *CRYPTOPUNKSTradeDTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetIsBundle

`func (o *CRYPTOPUNKSTradeDTO) GetIsBundle() bool`

GetIsBundle returns the IsBundle field if non-nil, zero value otherwise.

### GetIsBundleOk

`func (o *CRYPTOPUNKSTradeDTO) GetIsBundleOk() (*bool, bool)`

GetIsBundleOk returns a tuple with the IsBundle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsBundle

`func (o *CRYPTOPUNKSTradeDTO) SetIsBundle(v bool)`

SetIsBundle sets IsBundle field to given value.

### HasIsBundle

`func (o *CRYPTOPUNKSTradeDTO) HasIsBundle() bool`

HasIsBundle returns a boolean if a field has been set.

### GetCollection

`func (o *CRYPTOPUNKSTradeDTO) GetCollection() string`

GetCollection returns the Collection field if non-nil, zero value otherwise.

### GetCollectionOk

`func (o *CRYPTOPUNKSTradeDTO) GetCollectionOk() (*string, bool)`

GetCollectionOk returns a tuple with the Collection field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollection

`func (o *CRYPTOPUNKSTradeDTO) SetCollection(v string)`

SetCollection sets Collection field to given value.

### HasCollection

`func (o *CRYPTOPUNKSTradeDTO) HasCollection() bool`

HasCollection returns a boolean if a field has been set.

### SetCollectionNil

`func (o *CRYPTOPUNKSTradeDTO) SetCollectionNil(b bool)`

 SetCollectionNil sets the value for Collection to be an explicit nil

### UnsetCollection
`func (o *CRYPTOPUNKSTradeDTO) UnsetCollection()`

UnsetCollection ensures that no value is present for Collection, not even an explicit nil
### GetTokenId

`func (o *CRYPTOPUNKSTradeDTO) GetTokenId() string`

GetTokenId returns the TokenId field if non-nil, zero value otherwise.

### GetTokenIdOk

`func (o *CRYPTOPUNKSTradeDTO) GetTokenIdOk() (*string, bool)`

GetTokenIdOk returns a tuple with the TokenId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenId

`func (o *CRYPTOPUNKSTradeDTO) SetTokenId(v string)`

SetTokenId sets TokenId field to given value.

### HasTokenId

`func (o *CRYPTOPUNKSTradeDTO) HasTokenId() bool`

HasTokenId returns a boolean if a field has been set.

### SetTokenIdNil

`func (o *CRYPTOPUNKSTradeDTO) SetTokenIdNil(b bool)`

 SetTokenIdNil sets the value for TokenId to be an explicit nil

### UnsetTokenId
`func (o *CRYPTOPUNKSTradeDTO) UnsetTokenId()`

UnsetTokenId ensures that no value is present for TokenId, not even an explicit nil
### GetAmount

`func (o *CRYPTOPUNKSTradeDTO) GetAmount() string`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *CRYPTOPUNKSTradeDTO) GetAmountOk() (*string, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *CRYPTOPUNKSTradeDTO) SetAmount(v string)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *CRYPTOPUNKSTradeDTO) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### SetAmountNil

`func (o *CRYPTOPUNKSTradeDTO) SetAmountNil(b bool)`

 SetAmountNil sets the value for Amount to be an explicit nil

### UnsetAmount
`func (o *CRYPTOPUNKSTradeDTO) UnsetAmount()`

UnsetAmount ensures that no value is present for Amount, not even an explicit nil
### GetPriceEth

`func (o *CRYPTOPUNKSTradeDTO) GetPriceEth() string`

GetPriceEth returns the PriceEth field if non-nil, zero value otherwise.

### GetPriceEthOk

`func (o *CRYPTOPUNKSTradeDTO) GetPriceEthOk() (*string, bool)`

GetPriceEthOk returns a tuple with the PriceEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceEth

`func (o *CRYPTOPUNKSTradeDTO) SetPriceEth(v string)`

SetPriceEth sets PriceEth field to given value.

### HasPriceEth

`func (o *CRYPTOPUNKSTradeDTO) HasPriceEth() bool`

HasPriceEth returns a boolean if a field has been set.

### SetPriceEthNil

`func (o *CRYPTOPUNKSTradeDTO) SetPriceEthNil(b bool)`

 SetPriceEthNil sets the value for PriceEth to be an explicit nil

### UnsetPriceEth
`func (o *CRYPTOPUNKSTradeDTO) UnsetPriceEth()`

UnsetPriceEth ensures that no value is present for PriceEth, not even an explicit nil
### GetBuyer

`func (o *CRYPTOPUNKSTradeDTO) GetBuyer() string`

GetBuyer returns the Buyer field if non-nil, zero value otherwise.

### GetBuyerOk

`func (o *CRYPTOPUNKSTradeDTO) GetBuyerOk() (*string, bool)`

GetBuyerOk returns a tuple with the Buyer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyer

`func (o *CRYPTOPUNKSTradeDTO) SetBuyer(v string)`

SetBuyer sets Buyer field to given value.

### HasBuyer

`func (o *CRYPTOPUNKSTradeDTO) HasBuyer() bool`

HasBuyer returns a boolean if a field has been set.

### SetBuyerNil

`func (o *CRYPTOPUNKSTradeDTO) SetBuyerNil(b bool)`

 SetBuyerNil sets the value for Buyer to be an explicit nil

### UnsetBuyer
`func (o *CRYPTOPUNKSTradeDTO) UnsetBuyer()`

UnsetBuyer ensures that no value is present for Buyer, not even an explicit nil
### GetSeller

`func (o *CRYPTOPUNKSTradeDTO) GetSeller() string`

GetSeller returns the Seller field if non-nil, zero value otherwise.

### GetSellerOk

`func (o *CRYPTOPUNKSTradeDTO) GetSellerOk() (*string, bool)`

GetSellerOk returns a tuple with the Seller field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSeller

`func (o *CRYPTOPUNKSTradeDTO) SetSeller(v string)`

SetSeller sets Seller field to given value.

### HasSeller

`func (o *CRYPTOPUNKSTradeDTO) HasSeller() bool`

HasSeller returns a boolean if a field has been set.

### SetSellerNil

`func (o *CRYPTOPUNKSTradeDTO) SetSellerNil(b bool)`

 SetSellerNil sets the value for Seller to be an explicit nil

### UnsetSeller
`func (o *CRYPTOPUNKSTradeDTO) UnsetSeller()`

UnsetSeller ensures that no value is present for Seller, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


