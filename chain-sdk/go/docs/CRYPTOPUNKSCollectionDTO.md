# CRYPTOPUNKSCollectionDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**BlockRange** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **NullableString** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Symbol** | Pointer to **NullableString** |  | [optional] 
**TotalSupply** | Pointer to **NullableString** |  | [optional] 
**RoyaltyFee** | Pointer to **NullableString** |  | [optional] 
**CumulativeTradeVolumeEth** | Pointer to **NullableString** |  | [optional] 
**MarketplaceRevenueEth** | Pointer to **NullableString** |  | [optional] 
**CreatorRevenueEth** | Pointer to **NullableString** |  | [optional] 
**TotalRevenueEth** | Pointer to **NullableString** |  | [optional] 
**TradeCount** | Pointer to **int32** |  | [optional] 
**BuyerCount** | Pointer to **int32** |  | [optional] 
**SellerCount** | Pointer to **int32** |  | [optional] 

## Methods

### NewCRYPTOPUNKSCollectionDTO

`func NewCRYPTOPUNKSCollectionDTO() *CRYPTOPUNKSCollectionDTO`

NewCRYPTOPUNKSCollectionDTO instantiates a new CRYPTOPUNKSCollectionDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCRYPTOPUNKSCollectionDTOWithDefaults

`func NewCRYPTOPUNKSCollectionDTOWithDefaults() *CRYPTOPUNKSCollectionDTO`

NewCRYPTOPUNKSCollectionDTOWithDefaults instantiates a new CRYPTOPUNKSCollectionDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *CRYPTOPUNKSCollectionDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *CRYPTOPUNKSCollectionDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *CRYPTOPUNKSCollectionDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *CRYPTOPUNKSCollectionDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *CRYPTOPUNKSCollectionDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *CRYPTOPUNKSCollectionDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *CRYPTOPUNKSCollectionDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *CRYPTOPUNKSCollectionDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *CRYPTOPUNKSCollectionDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *CRYPTOPUNKSCollectionDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *CRYPTOPUNKSCollectionDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *CRYPTOPUNKSCollectionDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *CRYPTOPUNKSCollectionDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *CRYPTOPUNKSCollectionDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *CRYPTOPUNKSCollectionDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *CRYPTOPUNKSCollectionDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetBlockRange

`func (o *CRYPTOPUNKSCollectionDTO) GetBlockRange() string`

GetBlockRange returns the BlockRange field if non-nil, zero value otherwise.

### GetBlockRangeOk

`func (o *CRYPTOPUNKSCollectionDTO) GetBlockRangeOk() (*string, bool)`

GetBlockRangeOk returns a tuple with the BlockRange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockRange

`func (o *CRYPTOPUNKSCollectionDTO) SetBlockRange(v string)`

SetBlockRange sets BlockRange field to given value.

### HasBlockRange

`func (o *CRYPTOPUNKSCollectionDTO) HasBlockRange() bool`

HasBlockRange returns a boolean if a field has been set.

### SetBlockRangeNil

`func (o *CRYPTOPUNKSCollectionDTO) SetBlockRangeNil(b bool)`

 SetBlockRangeNil sets the value for BlockRange to be an explicit nil

### UnsetBlockRange
`func (o *CRYPTOPUNKSCollectionDTO) UnsetBlockRange()`

UnsetBlockRange ensures that no value is present for BlockRange, not even an explicit nil
### GetId

`func (o *CRYPTOPUNKSCollectionDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CRYPTOPUNKSCollectionDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CRYPTOPUNKSCollectionDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CRYPTOPUNKSCollectionDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *CRYPTOPUNKSCollectionDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *CRYPTOPUNKSCollectionDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetName

`func (o *CRYPTOPUNKSCollectionDTO) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CRYPTOPUNKSCollectionDTO) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CRYPTOPUNKSCollectionDTO) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CRYPTOPUNKSCollectionDTO) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *CRYPTOPUNKSCollectionDTO) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *CRYPTOPUNKSCollectionDTO) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetSymbol

`func (o *CRYPTOPUNKSCollectionDTO) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *CRYPTOPUNKSCollectionDTO) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *CRYPTOPUNKSCollectionDTO) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *CRYPTOPUNKSCollectionDTO) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *CRYPTOPUNKSCollectionDTO) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *CRYPTOPUNKSCollectionDTO) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTotalSupply

`func (o *CRYPTOPUNKSCollectionDTO) GetTotalSupply() string`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *CRYPTOPUNKSCollectionDTO) GetTotalSupplyOk() (*string, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *CRYPTOPUNKSCollectionDTO) SetTotalSupply(v string)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *CRYPTOPUNKSCollectionDTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### SetTotalSupplyNil

`func (o *CRYPTOPUNKSCollectionDTO) SetTotalSupplyNil(b bool)`

 SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil

### UnsetTotalSupply
`func (o *CRYPTOPUNKSCollectionDTO) UnsetTotalSupply()`

UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
### GetRoyaltyFee

`func (o *CRYPTOPUNKSCollectionDTO) GetRoyaltyFee() string`

GetRoyaltyFee returns the RoyaltyFee field if non-nil, zero value otherwise.

### GetRoyaltyFeeOk

`func (o *CRYPTOPUNKSCollectionDTO) GetRoyaltyFeeOk() (*string, bool)`

GetRoyaltyFeeOk returns a tuple with the RoyaltyFee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoyaltyFee

`func (o *CRYPTOPUNKSCollectionDTO) SetRoyaltyFee(v string)`

SetRoyaltyFee sets RoyaltyFee field to given value.

### HasRoyaltyFee

`func (o *CRYPTOPUNKSCollectionDTO) HasRoyaltyFee() bool`

HasRoyaltyFee returns a boolean if a field has been set.

### SetRoyaltyFeeNil

`func (o *CRYPTOPUNKSCollectionDTO) SetRoyaltyFeeNil(b bool)`

 SetRoyaltyFeeNil sets the value for RoyaltyFee to be an explicit nil

### UnsetRoyaltyFee
`func (o *CRYPTOPUNKSCollectionDTO) UnsetRoyaltyFee()`

UnsetRoyaltyFee ensures that no value is present for RoyaltyFee, not even an explicit nil
### GetCumulativeTradeVolumeEth

`func (o *CRYPTOPUNKSCollectionDTO) GetCumulativeTradeVolumeEth() string`

GetCumulativeTradeVolumeEth returns the CumulativeTradeVolumeEth field if non-nil, zero value otherwise.

### GetCumulativeTradeVolumeEthOk

`func (o *CRYPTOPUNKSCollectionDTO) GetCumulativeTradeVolumeEthOk() (*string, bool)`

GetCumulativeTradeVolumeEthOk returns a tuple with the CumulativeTradeVolumeEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCumulativeTradeVolumeEth

`func (o *CRYPTOPUNKSCollectionDTO) SetCumulativeTradeVolumeEth(v string)`

SetCumulativeTradeVolumeEth sets CumulativeTradeVolumeEth field to given value.

### HasCumulativeTradeVolumeEth

`func (o *CRYPTOPUNKSCollectionDTO) HasCumulativeTradeVolumeEth() bool`

HasCumulativeTradeVolumeEth returns a boolean if a field has been set.

### SetCumulativeTradeVolumeEthNil

`func (o *CRYPTOPUNKSCollectionDTO) SetCumulativeTradeVolumeEthNil(b bool)`

 SetCumulativeTradeVolumeEthNil sets the value for CumulativeTradeVolumeEth to be an explicit nil

### UnsetCumulativeTradeVolumeEth
`func (o *CRYPTOPUNKSCollectionDTO) UnsetCumulativeTradeVolumeEth()`

UnsetCumulativeTradeVolumeEth ensures that no value is present for CumulativeTradeVolumeEth, not even an explicit nil
### GetMarketplaceRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) GetMarketplaceRevenueEth() string`

GetMarketplaceRevenueEth returns the MarketplaceRevenueEth field if non-nil, zero value otherwise.

### GetMarketplaceRevenueEthOk

`func (o *CRYPTOPUNKSCollectionDTO) GetMarketplaceRevenueEthOk() (*string, bool)`

GetMarketplaceRevenueEthOk returns a tuple with the MarketplaceRevenueEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMarketplaceRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) SetMarketplaceRevenueEth(v string)`

SetMarketplaceRevenueEth sets MarketplaceRevenueEth field to given value.

### HasMarketplaceRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) HasMarketplaceRevenueEth() bool`

HasMarketplaceRevenueEth returns a boolean if a field has been set.

### SetMarketplaceRevenueEthNil

`func (o *CRYPTOPUNKSCollectionDTO) SetMarketplaceRevenueEthNil(b bool)`

 SetMarketplaceRevenueEthNil sets the value for MarketplaceRevenueEth to be an explicit nil

### UnsetMarketplaceRevenueEth
`func (o *CRYPTOPUNKSCollectionDTO) UnsetMarketplaceRevenueEth()`

UnsetMarketplaceRevenueEth ensures that no value is present for MarketplaceRevenueEth, not even an explicit nil
### GetCreatorRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) GetCreatorRevenueEth() string`

GetCreatorRevenueEth returns the CreatorRevenueEth field if non-nil, zero value otherwise.

### GetCreatorRevenueEthOk

`func (o *CRYPTOPUNKSCollectionDTO) GetCreatorRevenueEthOk() (*string, bool)`

GetCreatorRevenueEthOk returns a tuple with the CreatorRevenueEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatorRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) SetCreatorRevenueEth(v string)`

SetCreatorRevenueEth sets CreatorRevenueEth field to given value.

### HasCreatorRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) HasCreatorRevenueEth() bool`

HasCreatorRevenueEth returns a boolean if a field has been set.

### SetCreatorRevenueEthNil

`func (o *CRYPTOPUNKSCollectionDTO) SetCreatorRevenueEthNil(b bool)`

 SetCreatorRevenueEthNil sets the value for CreatorRevenueEth to be an explicit nil

### UnsetCreatorRevenueEth
`func (o *CRYPTOPUNKSCollectionDTO) UnsetCreatorRevenueEth()`

UnsetCreatorRevenueEth ensures that no value is present for CreatorRevenueEth, not even an explicit nil
### GetTotalRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) GetTotalRevenueEth() string`

GetTotalRevenueEth returns the TotalRevenueEth field if non-nil, zero value otherwise.

### GetTotalRevenueEthOk

`func (o *CRYPTOPUNKSCollectionDTO) GetTotalRevenueEthOk() (*string, bool)`

GetTotalRevenueEthOk returns a tuple with the TotalRevenueEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) SetTotalRevenueEth(v string)`

SetTotalRevenueEth sets TotalRevenueEth field to given value.

### HasTotalRevenueEth

`func (o *CRYPTOPUNKSCollectionDTO) HasTotalRevenueEth() bool`

HasTotalRevenueEth returns a boolean if a field has been set.

### SetTotalRevenueEthNil

`func (o *CRYPTOPUNKSCollectionDTO) SetTotalRevenueEthNil(b bool)`

 SetTotalRevenueEthNil sets the value for TotalRevenueEth to be an explicit nil

### UnsetTotalRevenueEth
`func (o *CRYPTOPUNKSCollectionDTO) UnsetTotalRevenueEth()`

UnsetTotalRevenueEth ensures that no value is present for TotalRevenueEth, not even an explicit nil
### GetTradeCount

`func (o *CRYPTOPUNKSCollectionDTO) GetTradeCount() int32`

GetTradeCount returns the TradeCount field if non-nil, zero value otherwise.

### GetTradeCountOk

`func (o *CRYPTOPUNKSCollectionDTO) GetTradeCountOk() (*int32, bool)`

GetTradeCountOk returns a tuple with the TradeCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeCount

`func (o *CRYPTOPUNKSCollectionDTO) SetTradeCount(v int32)`

SetTradeCount sets TradeCount field to given value.

### HasTradeCount

`func (o *CRYPTOPUNKSCollectionDTO) HasTradeCount() bool`

HasTradeCount returns a boolean if a field has been set.

### GetBuyerCount

`func (o *CRYPTOPUNKSCollectionDTO) GetBuyerCount() int32`

GetBuyerCount returns the BuyerCount field if non-nil, zero value otherwise.

### GetBuyerCountOk

`func (o *CRYPTOPUNKSCollectionDTO) GetBuyerCountOk() (*int32, bool)`

GetBuyerCountOk returns a tuple with the BuyerCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyerCount

`func (o *CRYPTOPUNKSCollectionDTO) SetBuyerCount(v int32)`

SetBuyerCount sets BuyerCount field to given value.

### HasBuyerCount

`func (o *CRYPTOPUNKSCollectionDTO) HasBuyerCount() bool`

HasBuyerCount returns a boolean if a field has been set.

### GetSellerCount

`func (o *CRYPTOPUNKSCollectionDTO) GetSellerCount() int32`

GetSellerCount returns the SellerCount field if non-nil, zero value otherwise.

### GetSellerCountOk

`func (o *CRYPTOPUNKSCollectionDTO) GetSellerCountOk() (*int32, bool)`

GetSellerCountOk returns a tuple with the SellerCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSellerCount

`func (o *CRYPTOPUNKSCollectionDTO) SetSellerCount(v int32)`

SetSellerCount sets SellerCount field to given value.

### HasSellerCount

`func (o *CRYPTOPUNKSCollectionDTO) HasSellerCount() bool`

HasSellerCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


