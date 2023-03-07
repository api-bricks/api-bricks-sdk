# CRYPTOPUNKSMarketPlaceDTO

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
**Slug** | Pointer to **NullableString** |  | [optional] 
**SchemaVersion** | Pointer to **NullableString** |  | [optional] 
**SubgraphVersion** | Pointer to **NullableString** |  | [optional] 
**MethodologyVersion** | Pointer to **NullableString** |  | [optional] 
**CollectionCount** | Pointer to **int32** |  | [optional] 
**TradeCount** | Pointer to **int32** |  | [optional] 
**CumulativeTradeVolumeEth** | Pointer to **NullableString** |  | [optional] 
**MarketplaceRevenueEth** | Pointer to **NullableString** |  | [optional] 
**CreatorRevenueEth** | Pointer to **NullableString** |  | [optional] 
**TotalRevenueEth** | Pointer to **NullableString** |  | [optional] 
**CumulativeUniqueTraders** | Pointer to **int32** |  | [optional] 

## Methods

### NewCRYPTOPUNKSMarketPlaceDTO

`func NewCRYPTOPUNKSMarketPlaceDTO() *CRYPTOPUNKSMarketPlaceDTO`

NewCRYPTOPUNKSMarketPlaceDTO instantiates a new CRYPTOPUNKSMarketPlaceDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCRYPTOPUNKSMarketPlaceDTOWithDefaults

`func NewCRYPTOPUNKSMarketPlaceDTOWithDefaults() *CRYPTOPUNKSMarketPlaceDTO`

NewCRYPTOPUNKSMarketPlaceDTOWithDefaults instantiates a new CRYPTOPUNKSMarketPlaceDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetVid

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetBlockRange

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetBlockRange() string`

GetBlockRange returns the BlockRange field if non-nil, zero value otherwise.

### GetBlockRangeOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetBlockRangeOk() (*string, bool)`

GetBlockRangeOk returns a tuple with the BlockRange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockRange

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetBlockRange(v string)`

SetBlockRange sets BlockRange field to given value.

### HasBlockRange

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasBlockRange() bool`

HasBlockRange returns a boolean if a field has been set.

### SetBlockRangeNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetBlockRangeNil(b bool)`

 SetBlockRangeNil sets the value for BlockRange to be an explicit nil

### UnsetBlockRange
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetBlockRange()`

UnsetBlockRange ensures that no value is present for BlockRange, not even an explicit nil
### GetId

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetName

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetSlug

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### SetSlugNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetSlugNil(b bool)`

 SetSlugNil sets the value for Slug to be an explicit nil

### UnsetSlug
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetSlug()`

UnsetSlug ensures that no value is present for Slug, not even an explicit nil
### GetSchemaVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetSchemaVersion() string`

GetSchemaVersion returns the SchemaVersion field if non-nil, zero value otherwise.

### GetSchemaVersionOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetSchemaVersionOk() (*string, bool)`

GetSchemaVersionOk returns a tuple with the SchemaVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSchemaVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetSchemaVersion(v string)`

SetSchemaVersion sets SchemaVersion field to given value.

### HasSchemaVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasSchemaVersion() bool`

HasSchemaVersion returns a boolean if a field has been set.

### SetSchemaVersionNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetSchemaVersionNil(b bool)`

 SetSchemaVersionNil sets the value for SchemaVersion to be an explicit nil

### UnsetSchemaVersion
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetSchemaVersion()`

UnsetSchemaVersion ensures that no value is present for SchemaVersion, not even an explicit nil
### GetSubgraphVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetSubgraphVersion() string`

GetSubgraphVersion returns the SubgraphVersion field if non-nil, zero value otherwise.

### GetSubgraphVersionOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetSubgraphVersionOk() (*string, bool)`

GetSubgraphVersionOk returns a tuple with the SubgraphVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubgraphVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetSubgraphVersion(v string)`

SetSubgraphVersion sets SubgraphVersion field to given value.

### HasSubgraphVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasSubgraphVersion() bool`

HasSubgraphVersion returns a boolean if a field has been set.

### SetSubgraphVersionNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetSubgraphVersionNil(b bool)`

 SetSubgraphVersionNil sets the value for SubgraphVersion to be an explicit nil

### UnsetSubgraphVersion
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetSubgraphVersion()`

UnsetSubgraphVersion ensures that no value is present for SubgraphVersion, not even an explicit nil
### GetMethodologyVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetMethodologyVersion() string`

GetMethodologyVersion returns the MethodologyVersion field if non-nil, zero value otherwise.

### GetMethodologyVersionOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetMethodologyVersionOk() (*string, bool)`

GetMethodologyVersionOk returns a tuple with the MethodologyVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMethodologyVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetMethodologyVersion(v string)`

SetMethodologyVersion sets MethodologyVersion field to given value.

### HasMethodologyVersion

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasMethodologyVersion() bool`

HasMethodologyVersion returns a boolean if a field has been set.

### SetMethodologyVersionNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetMethodologyVersionNil(b bool)`

 SetMethodologyVersionNil sets the value for MethodologyVersion to be an explicit nil

### UnsetMethodologyVersion
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetMethodologyVersion()`

UnsetMethodologyVersion ensures that no value is present for MethodologyVersion, not even an explicit nil
### GetCollectionCount

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetCollectionCount() int32`

GetCollectionCount returns the CollectionCount field if non-nil, zero value otherwise.

### GetCollectionCountOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetCollectionCountOk() (*int32, bool)`

GetCollectionCountOk returns a tuple with the CollectionCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollectionCount

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetCollectionCount(v int32)`

SetCollectionCount sets CollectionCount field to given value.

### HasCollectionCount

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasCollectionCount() bool`

HasCollectionCount returns a boolean if a field has been set.

### GetTradeCount

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetTradeCount() int32`

GetTradeCount returns the TradeCount field if non-nil, zero value otherwise.

### GetTradeCountOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetTradeCountOk() (*int32, bool)`

GetTradeCountOk returns a tuple with the TradeCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeCount

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetTradeCount(v int32)`

SetTradeCount sets TradeCount field to given value.

### HasTradeCount

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasTradeCount() bool`

HasTradeCount returns a boolean if a field has been set.

### GetCumulativeTradeVolumeEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetCumulativeTradeVolumeEth() string`

GetCumulativeTradeVolumeEth returns the CumulativeTradeVolumeEth field if non-nil, zero value otherwise.

### GetCumulativeTradeVolumeEthOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetCumulativeTradeVolumeEthOk() (*string, bool)`

GetCumulativeTradeVolumeEthOk returns a tuple with the CumulativeTradeVolumeEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCumulativeTradeVolumeEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetCumulativeTradeVolumeEth(v string)`

SetCumulativeTradeVolumeEth sets CumulativeTradeVolumeEth field to given value.

### HasCumulativeTradeVolumeEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasCumulativeTradeVolumeEth() bool`

HasCumulativeTradeVolumeEth returns a boolean if a field has been set.

### SetCumulativeTradeVolumeEthNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetCumulativeTradeVolumeEthNil(b bool)`

 SetCumulativeTradeVolumeEthNil sets the value for CumulativeTradeVolumeEth to be an explicit nil

### UnsetCumulativeTradeVolumeEth
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetCumulativeTradeVolumeEth()`

UnsetCumulativeTradeVolumeEth ensures that no value is present for CumulativeTradeVolumeEth, not even an explicit nil
### GetMarketplaceRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetMarketplaceRevenueEth() string`

GetMarketplaceRevenueEth returns the MarketplaceRevenueEth field if non-nil, zero value otherwise.

### GetMarketplaceRevenueEthOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetMarketplaceRevenueEthOk() (*string, bool)`

GetMarketplaceRevenueEthOk returns a tuple with the MarketplaceRevenueEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMarketplaceRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetMarketplaceRevenueEth(v string)`

SetMarketplaceRevenueEth sets MarketplaceRevenueEth field to given value.

### HasMarketplaceRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasMarketplaceRevenueEth() bool`

HasMarketplaceRevenueEth returns a boolean if a field has been set.

### SetMarketplaceRevenueEthNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetMarketplaceRevenueEthNil(b bool)`

 SetMarketplaceRevenueEthNil sets the value for MarketplaceRevenueEth to be an explicit nil

### UnsetMarketplaceRevenueEth
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetMarketplaceRevenueEth()`

UnsetMarketplaceRevenueEth ensures that no value is present for MarketplaceRevenueEth, not even an explicit nil
### GetCreatorRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetCreatorRevenueEth() string`

GetCreatorRevenueEth returns the CreatorRevenueEth field if non-nil, zero value otherwise.

### GetCreatorRevenueEthOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetCreatorRevenueEthOk() (*string, bool)`

GetCreatorRevenueEthOk returns a tuple with the CreatorRevenueEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatorRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetCreatorRevenueEth(v string)`

SetCreatorRevenueEth sets CreatorRevenueEth field to given value.

### HasCreatorRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasCreatorRevenueEth() bool`

HasCreatorRevenueEth returns a boolean if a field has been set.

### SetCreatorRevenueEthNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetCreatorRevenueEthNil(b bool)`

 SetCreatorRevenueEthNil sets the value for CreatorRevenueEth to be an explicit nil

### UnsetCreatorRevenueEth
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetCreatorRevenueEth()`

UnsetCreatorRevenueEth ensures that no value is present for CreatorRevenueEth, not even an explicit nil
### GetTotalRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetTotalRevenueEth() string`

GetTotalRevenueEth returns the TotalRevenueEth field if non-nil, zero value otherwise.

### GetTotalRevenueEthOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetTotalRevenueEthOk() (*string, bool)`

GetTotalRevenueEthOk returns a tuple with the TotalRevenueEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetTotalRevenueEth(v string)`

SetTotalRevenueEth sets TotalRevenueEth field to given value.

### HasTotalRevenueEth

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasTotalRevenueEth() bool`

HasTotalRevenueEth returns a boolean if a field has been set.

### SetTotalRevenueEthNil

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetTotalRevenueEthNil(b bool)`

 SetTotalRevenueEthNil sets the value for TotalRevenueEth to be an explicit nil

### UnsetTotalRevenueEth
`func (o *CRYPTOPUNKSMarketPlaceDTO) UnsetTotalRevenueEth()`

UnsetTotalRevenueEth ensures that no value is present for TotalRevenueEth, not even an explicit nil
### GetCumulativeUniqueTraders

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetCumulativeUniqueTraders() int32`

GetCumulativeUniqueTraders returns the CumulativeUniqueTraders field if non-nil, zero value otherwise.

### GetCumulativeUniqueTradersOk

`func (o *CRYPTOPUNKSMarketPlaceDTO) GetCumulativeUniqueTradersOk() (*int32, bool)`

GetCumulativeUniqueTradersOk returns a tuple with the CumulativeUniqueTraders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCumulativeUniqueTraders

`func (o *CRYPTOPUNKSMarketPlaceDTO) SetCumulativeUniqueTraders(v int32)`

SetCumulativeUniqueTraders sets CumulativeUniqueTraders field to given value.

### HasCumulativeUniqueTraders

`func (o *CRYPTOPUNKSMarketPlaceDTO) HasCumulativeUniqueTraders() bool`

HasCumulativeUniqueTraders returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


