# DexOrderDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (owner address)-(order id) | [optional] 
**Owner** | Pointer to **NullableString** | Reference to owner. | [optional] 
**OrderId** | Pointer to **int32** | Order id. | [optional] 
**FromBatchId** | Pointer to **NullableString** | Batch id from which order became valid. | [optional] 
**FromEpoch** | Pointer to **NullableString** | Start of epoch in which order was placed and became valid. | [optional] 
**UntilBatchId** | Pointer to **NullableString** | Batch id until which trade was still valid. | [optional] 
**UntilEpoch** | Pointer to **NullableString** | End of epoch in which order was placed. | [optional] 
**BuyToken** | Pointer to **NullableString** | Identifier of token that was bought. | [optional] 
**SellToken** | Pointer to **NullableString** | Identifier of token that was sold. | [optional] 
**PriceNumerator** | Pointer to **NullableString** | Price enumerator. | [optional] 
**PriceDenominator** | Pointer to **NullableString** | Price denominator. | [optional] 
**MaxSellAmount** | Pointer to **NullableString** | Maximum sell amount. | [optional] 
**MinReceiveAmount** | Pointer to **NullableString** | Minimum receive amount. | [optional] 
**SoldVolume** | Pointer to **NullableString** | Sold volume. | [optional] 
**BoughtVolume** | Pointer to **NullableString** | Bought volume. | [optional] 
**CreateEpoch** | Pointer to **NullableString** | Epoch in which order was created. | [optional] 
**CancelEpoch** | Pointer to **NullableString** | Epoch in which order was cancelled. | [optional] 
**DeleteEpoch** | Pointer to **NullableString** | Epoch in which order was deleted. | [optional] 
**TxHash** | Pointer to **NullableString** | Transaction hash. | [optional] 
**TxLogIndex** | Pointer to **NullableString** | Event index within transaction. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewDexOrderDTO

`func NewDexOrderDTO() *DexOrderDTO`

NewDexOrderDTO instantiates a new DexOrderDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDexOrderDTOWithDefaults

`func NewDexOrderDTOWithDefaults() *DexOrderDTO`

NewDexOrderDTOWithDefaults instantiates a new DexOrderDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *DexOrderDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *DexOrderDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *DexOrderDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *DexOrderDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *DexOrderDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *DexOrderDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *DexOrderDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *DexOrderDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *DexOrderDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *DexOrderDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *DexOrderDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *DexOrderDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *DexOrderDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DexOrderDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DexOrderDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *DexOrderDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *DexOrderDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *DexOrderDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetOwner

`func (o *DexOrderDTO) GetOwner() string`

GetOwner returns the Owner field if non-nil, zero value otherwise.

### GetOwnerOk

`func (o *DexOrderDTO) GetOwnerOk() (*string, bool)`

GetOwnerOk returns a tuple with the Owner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwner

`func (o *DexOrderDTO) SetOwner(v string)`

SetOwner sets Owner field to given value.

### HasOwner

`func (o *DexOrderDTO) HasOwner() bool`

HasOwner returns a boolean if a field has been set.

### SetOwnerNil

`func (o *DexOrderDTO) SetOwnerNil(b bool)`

 SetOwnerNil sets the value for Owner to be an explicit nil

### UnsetOwner
`func (o *DexOrderDTO) UnsetOwner()`

UnsetOwner ensures that no value is present for Owner, not even an explicit nil
### GetOrderId

`func (o *DexOrderDTO) GetOrderId() int32`

GetOrderId returns the OrderId field if non-nil, zero value otherwise.

### GetOrderIdOk

`func (o *DexOrderDTO) GetOrderIdOk() (*int32, bool)`

GetOrderIdOk returns a tuple with the OrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderId

`func (o *DexOrderDTO) SetOrderId(v int32)`

SetOrderId sets OrderId field to given value.

### HasOrderId

`func (o *DexOrderDTO) HasOrderId() bool`

HasOrderId returns a boolean if a field has been set.

### GetFromBatchId

`func (o *DexOrderDTO) GetFromBatchId() string`

GetFromBatchId returns the FromBatchId field if non-nil, zero value otherwise.

### GetFromBatchIdOk

`func (o *DexOrderDTO) GetFromBatchIdOk() (*string, bool)`

GetFromBatchIdOk returns a tuple with the FromBatchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFromBatchId

`func (o *DexOrderDTO) SetFromBatchId(v string)`

SetFromBatchId sets FromBatchId field to given value.

### HasFromBatchId

`func (o *DexOrderDTO) HasFromBatchId() bool`

HasFromBatchId returns a boolean if a field has been set.

### SetFromBatchIdNil

`func (o *DexOrderDTO) SetFromBatchIdNil(b bool)`

 SetFromBatchIdNil sets the value for FromBatchId to be an explicit nil

### UnsetFromBatchId
`func (o *DexOrderDTO) UnsetFromBatchId()`

UnsetFromBatchId ensures that no value is present for FromBatchId, not even an explicit nil
### GetFromEpoch

`func (o *DexOrderDTO) GetFromEpoch() string`

GetFromEpoch returns the FromEpoch field if non-nil, zero value otherwise.

### GetFromEpochOk

`func (o *DexOrderDTO) GetFromEpochOk() (*string, bool)`

GetFromEpochOk returns a tuple with the FromEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFromEpoch

`func (o *DexOrderDTO) SetFromEpoch(v string)`

SetFromEpoch sets FromEpoch field to given value.

### HasFromEpoch

`func (o *DexOrderDTO) HasFromEpoch() bool`

HasFromEpoch returns a boolean if a field has been set.

### SetFromEpochNil

`func (o *DexOrderDTO) SetFromEpochNil(b bool)`

 SetFromEpochNil sets the value for FromEpoch to be an explicit nil

### UnsetFromEpoch
`func (o *DexOrderDTO) UnsetFromEpoch()`

UnsetFromEpoch ensures that no value is present for FromEpoch, not even an explicit nil
### GetUntilBatchId

`func (o *DexOrderDTO) GetUntilBatchId() string`

GetUntilBatchId returns the UntilBatchId field if non-nil, zero value otherwise.

### GetUntilBatchIdOk

`func (o *DexOrderDTO) GetUntilBatchIdOk() (*string, bool)`

GetUntilBatchIdOk returns a tuple with the UntilBatchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntilBatchId

`func (o *DexOrderDTO) SetUntilBatchId(v string)`

SetUntilBatchId sets UntilBatchId field to given value.

### HasUntilBatchId

`func (o *DexOrderDTO) HasUntilBatchId() bool`

HasUntilBatchId returns a boolean if a field has been set.

### SetUntilBatchIdNil

`func (o *DexOrderDTO) SetUntilBatchIdNil(b bool)`

 SetUntilBatchIdNil sets the value for UntilBatchId to be an explicit nil

### UnsetUntilBatchId
`func (o *DexOrderDTO) UnsetUntilBatchId()`

UnsetUntilBatchId ensures that no value is present for UntilBatchId, not even an explicit nil
### GetUntilEpoch

`func (o *DexOrderDTO) GetUntilEpoch() string`

GetUntilEpoch returns the UntilEpoch field if non-nil, zero value otherwise.

### GetUntilEpochOk

`func (o *DexOrderDTO) GetUntilEpochOk() (*string, bool)`

GetUntilEpochOk returns a tuple with the UntilEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntilEpoch

`func (o *DexOrderDTO) SetUntilEpoch(v string)`

SetUntilEpoch sets UntilEpoch field to given value.

### HasUntilEpoch

`func (o *DexOrderDTO) HasUntilEpoch() bool`

HasUntilEpoch returns a boolean if a field has been set.

### SetUntilEpochNil

`func (o *DexOrderDTO) SetUntilEpochNil(b bool)`

 SetUntilEpochNil sets the value for UntilEpoch to be an explicit nil

### UnsetUntilEpoch
`func (o *DexOrderDTO) UnsetUntilEpoch()`

UnsetUntilEpoch ensures that no value is present for UntilEpoch, not even an explicit nil
### GetBuyToken

`func (o *DexOrderDTO) GetBuyToken() string`

GetBuyToken returns the BuyToken field if non-nil, zero value otherwise.

### GetBuyTokenOk

`func (o *DexOrderDTO) GetBuyTokenOk() (*string, bool)`

GetBuyTokenOk returns a tuple with the BuyToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyToken

`func (o *DexOrderDTO) SetBuyToken(v string)`

SetBuyToken sets BuyToken field to given value.

### HasBuyToken

`func (o *DexOrderDTO) HasBuyToken() bool`

HasBuyToken returns a boolean if a field has been set.

### SetBuyTokenNil

`func (o *DexOrderDTO) SetBuyTokenNil(b bool)`

 SetBuyTokenNil sets the value for BuyToken to be an explicit nil

### UnsetBuyToken
`func (o *DexOrderDTO) UnsetBuyToken()`

UnsetBuyToken ensures that no value is present for BuyToken, not even an explicit nil
### GetSellToken

`func (o *DexOrderDTO) GetSellToken() string`

GetSellToken returns the SellToken field if non-nil, zero value otherwise.

### GetSellTokenOk

`func (o *DexOrderDTO) GetSellTokenOk() (*string, bool)`

GetSellTokenOk returns a tuple with the SellToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSellToken

`func (o *DexOrderDTO) SetSellToken(v string)`

SetSellToken sets SellToken field to given value.

### HasSellToken

`func (o *DexOrderDTO) HasSellToken() bool`

HasSellToken returns a boolean if a field has been set.

### SetSellTokenNil

`func (o *DexOrderDTO) SetSellTokenNil(b bool)`

 SetSellTokenNil sets the value for SellToken to be an explicit nil

### UnsetSellToken
`func (o *DexOrderDTO) UnsetSellToken()`

UnsetSellToken ensures that no value is present for SellToken, not even an explicit nil
### GetPriceNumerator

`func (o *DexOrderDTO) GetPriceNumerator() string`

GetPriceNumerator returns the PriceNumerator field if non-nil, zero value otherwise.

### GetPriceNumeratorOk

`func (o *DexOrderDTO) GetPriceNumeratorOk() (*string, bool)`

GetPriceNumeratorOk returns a tuple with the PriceNumerator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceNumerator

`func (o *DexOrderDTO) SetPriceNumerator(v string)`

SetPriceNumerator sets PriceNumerator field to given value.

### HasPriceNumerator

`func (o *DexOrderDTO) HasPriceNumerator() bool`

HasPriceNumerator returns a boolean if a field has been set.

### SetPriceNumeratorNil

`func (o *DexOrderDTO) SetPriceNumeratorNil(b bool)`

 SetPriceNumeratorNil sets the value for PriceNumerator to be an explicit nil

### UnsetPriceNumerator
`func (o *DexOrderDTO) UnsetPriceNumerator()`

UnsetPriceNumerator ensures that no value is present for PriceNumerator, not even an explicit nil
### GetPriceDenominator

`func (o *DexOrderDTO) GetPriceDenominator() string`

GetPriceDenominator returns the PriceDenominator field if non-nil, zero value otherwise.

### GetPriceDenominatorOk

`func (o *DexOrderDTO) GetPriceDenominatorOk() (*string, bool)`

GetPriceDenominatorOk returns a tuple with the PriceDenominator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceDenominator

`func (o *DexOrderDTO) SetPriceDenominator(v string)`

SetPriceDenominator sets PriceDenominator field to given value.

### HasPriceDenominator

`func (o *DexOrderDTO) HasPriceDenominator() bool`

HasPriceDenominator returns a boolean if a field has been set.

### SetPriceDenominatorNil

`func (o *DexOrderDTO) SetPriceDenominatorNil(b bool)`

 SetPriceDenominatorNil sets the value for PriceDenominator to be an explicit nil

### UnsetPriceDenominator
`func (o *DexOrderDTO) UnsetPriceDenominator()`

UnsetPriceDenominator ensures that no value is present for PriceDenominator, not even an explicit nil
### GetMaxSellAmount

`func (o *DexOrderDTO) GetMaxSellAmount() string`

GetMaxSellAmount returns the MaxSellAmount field if non-nil, zero value otherwise.

### GetMaxSellAmountOk

`func (o *DexOrderDTO) GetMaxSellAmountOk() (*string, bool)`

GetMaxSellAmountOk returns a tuple with the MaxSellAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxSellAmount

`func (o *DexOrderDTO) SetMaxSellAmount(v string)`

SetMaxSellAmount sets MaxSellAmount field to given value.

### HasMaxSellAmount

`func (o *DexOrderDTO) HasMaxSellAmount() bool`

HasMaxSellAmount returns a boolean if a field has been set.

### SetMaxSellAmountNil

`func (o *DexOrderDTO) SetMaxSellAmountNil(b bool)`

 SetMaxSellAmountNil sets the value for MaxSellAmount to be an explicit nil

### UnsetMaxSellAmount
`func (o *DexOrderDTO) UnsetMaxSellAmount()`

UnsetMaxSellAmount ensures that no value is present for MaxSellAmount, not even an explicit nil
### GetMinReceiveAmount

`func (o *DexOrderDTO) GetMinReceiveAmount() string`

GetMinReceiveAmount returns the MinReceiveAmount field if non-nil, zero value otherwise.

### GetMinReceiveAmountOk

`func (o *DexOrderDTO) GetMinReceiveAmountOk() (*string, bool)`

GetMinReceiveAmountOk returns a tuple with the MinReceiveAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinReceiveAmount

`func (o *DexOrderDTO) SetMinReceiveAmount(v string)`

SetMinReceiveAmount sets MinReceiveAmount field to given value.

### HasMinReceiveAmount

`func (o *DexOrderDTO) HasMinReceiveAmount() bool`

HasMinReceiveAmount returns a boolean if a field has been set.

### SetMinReceiveAmountNil

`func (o *DexOrderDTO) SetMinReceiveAmountNil(b bool)`

 SetMinReceiveAmountNil sets the value for MinReceiveAmount to be an explicit nil

### UnsetMinReceiveAmount
`func (o *DexOrderDTO) UnsetMinReceiveAmount()`

UnsetMinReceiveAmount ensures that no value is present for MinReceiveAmount, not even an explicit nil
### GetSoldVolume

`func (o *DexOrderDTO) GetSoldVolume() string`

GetSoldVolume returns the SoldVolume field if non-nil, zero value otherwise.

### GetSoldVolumeOk

`func (o *DexOrderDTO) GetSoldVolumeOk() (*string, bool)`

GetSoldVolumeOk returns a tuple with the SoldVolume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSoldVolume

`func (o *DexOrderDTO) SetSoldVolume(v string)`

SetSoldVolume sets SoldVolume field to given value.

### HasSoldVolume

`func (o *DexOrderDTO) HasSoldVolume() bool`

HasSoldVolume returns a boolean if a field has been set.

### SetSoldVolumeNil

`func (o *DexOrderDTO) SetSoldVolumeNil(b bool)`

 SetSoldVolumeNil sets the value for SoldVolume to be an explicit nil

### UnsetSoldVolume
`func (o *DexOrderDTO) UnsetSoldVolume()`

UnsetSoldVolume ensures that no value is present for SoldVolume, not even an explicit nil
### GetBoughtVolume

`func (o *DexOrderDTO) GetBoughtVolume() string`

GetBoughtVolume returns the BoughtVolume field if non-nil, zero value otherwise.

### GetBoughtVolumeOk

`func (o *DexOrderDTO) GetBoughtVolumeOk() (*string, bool)`

GetBoughtVolumeOk returns a tuple with the BoughtVolume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBoughtVolume

`func (o *DexOrderDTO) SetBoughtVolume(v string)`

SetBoughtVolume sets BoughtVolume field to given value.

### HasBoughtVolume

`func (o *DexOrderDTO) HasBoughtVolume() bool`

HasBoughtVolume returns a boolean if a field has been set.

### SetBoughtVolumeNil

`func (o *DexOrderDTO) SetBoughtVolumeNil(b bool)`

 SetBoughtVolumeNil sets the value for BoughtVolume to be an explicit nil

### UnsetBoughtVolume
`func (o *DexOrderDTO) UnsetBoughtVolume()`

UnsetBoughtVolume ensures that no value is present for BoughtVolume, not even an explicit nil
### GetCreateEpoch

`func (o *DexOrderDTO) GetCreateEpoch() string`

GetCreateEpoch returns the CreateEpoch field if non-nil, zero value otherwise.

### GetCreateEpochOk

`func (o *DexOrderDTO) GetCreateEpochOk() (*string, bool)`

GetCreateEpochOk returns a tuple with the CreateEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreateEpoch

`func (o *DexOrderDTO) SetCreateEpoch(v string)`

SetCreateEpoch sets CreateEpoch field to given value.

### HasCreateEpoch

`func (o *DexOrderDTO) HasCreateEpoch() bool`

HasCreateEpoch returns a boolean if a field has been set.

### SetCreateEpochNil

`func (o *DexOrderDTO) SetCreateEpochNil(b bool)`

 SetCreateEpochNil sets the value for CreateEpoch to be an explicit nil

### UnsetCreateEpoch
`func (o *DexOrderDTO) UnsetCreateEpoch()`

UnsetCreateEpoch ensures that no value is present for CreateEpoch, not even an explicit nil
### GetCancelEpoch

`func (o *DexOrderDTO) GetCancelEpoch() string`

GetCancelEpoch returns the CancelEpoch field if non-nil, zero value otherwise.

### GetCancelEpochOk

`func (o *DexOrderDTO) GetCancelEpochOk() (*string, bool)`

GetCancelEpochOk returns a tuple with the CancelEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCancelEpoch

`func (o *DexOrderDTO) SetCancelEpoch(v string)`

SetCancelEpoch sets CancelEpoch field to given value.

### HasCancelEpoch

`func (o *DexOrderDTO) HasCancelEpoch() bool`

HasCancelEpoch returns a boolean if a field has been set.

### SetCancelEpochNil

`func (o *DexOrderDTO) SetCancelEpochNil(b bool)`

 SetCancelEpochNil sets the value for CancelEpoch to be an explicit nil

### UnsetCancelEpoch
`func (o *DexOrderDTO) UnsetCancelEpoch()`

UnsetCancelEpoch ensures that no value is present for CancelEpoch, not even an explicit nil
### GetDeleteEpoch

`func (o *DexOrderDTO) GetDeleteEpoch() string`

GetDeleteEpoch returns the DeleteEpoch field if non-nil, zero value otherwise.

### GetDeleteEpochOk

`func (o *DexOrderDTO) GetDeleteEpochOk() (*string, bool)`

GetDeleteEpochOk returns a tuple with the DeleteEpoch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleteEpoch

`func (o *DexOrderDTO) SetDeleteEpoch(v string)`

SetDeleteEpoch sets DeleteEpoch field to given value.

### HasDeleteEpoch

`func (o *DexOrderDTO) HasDeleteEpoch() bool`

HasDeleteEpoch returns a boolean if a field has been set.

### SetDeleteEpochNil

`func (o *DexOrderDTO) SetDeleteEpochNil(b bool)`

 SetDeleteEpochNil sets the value for DeleteEpoch to be an explicit nil

### UnsetDeleteEpoch
`func (o *DexOrderDTO) UnsetDeleteEpoch()`

UnsetDeleteEpoch ensures that no value is present for DeleteEpoch, not even an explicit nil
### GetTxHash

`func (o *DexOrderDTO) GetTxHash() string`

GetTxHash returns the TxHash field if non-nil, zero value otherwise.

### GetTxHashOk

`func (o *DexOrderDTO) GetTxHashOk() (*string, bool)`

GetTxHashOk returns a tuple with the TxHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxHash

`func (o *DexOrderDTO) SetTxHash(v string)`

SetTxHash sets TxHash field to given value.

### HasTxHash

`func (o *DexOrderDTO) HasTxHash() bool`

HasTxHash returns a boolean if a field has been set.

### SetTxHashNil

`func (o *DexOrderDTO) SetTxHashNil(b bool)`

 SetTxHashNil sets the value for TxHash to be an explicit nil

### UnsetTxHash
`func (o *DexOrderDTO) UnsetTxHash()`

UnsetTxHash ensures that no value is present for TxHash, not even an explicit nil
### GetTxLogIndex

`func (o *DexOrderDTO) GetTxLogIndex() string`

GetTxLogIndex returns the TxLogIndex field if non-nil, zero value otherwise.

### GetTxLogIndexOk

`func (o *DexOrderDTO) GetTxLogIndexOk() (*string, bool)`

GetTxLogIndexOk returns a tuple with the TxLogIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxLogIndex

`func (o *DexOrderDTO) SetTxLogIndex(v string)`

SetTxLogIndex sets TxLogIndex field to given value.

### HasTxLogIndex

`func (o *DexOrderDTO) HasTxLogIndex() bool`

HasTxLogIndex returns a boolean if a field has been set.

### SetTxLogIndexNil

`func (o *DexOrderDTO) SetTxLogIndexNil(b bool)`

 SetTxLogIndexNil sets the value for TxLogIndex to be an explicit nil

### UnsetTxLogIndex
`func (o *DexOrderDTO) UnsetTxLogIndex()`

UnsetTxLogIndex ensures that no value is present for TxLogIndex, not even an explicit nil
### GetVid

`func (o *DexOrderDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *DexOrderDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *DexOrderDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *DexOrderDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


