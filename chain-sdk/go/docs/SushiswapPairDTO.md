# SushiswapPairDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Pair contract address. | [optional] 
**Factory** | Pointer to **NullableString** | Factory contract address. | [optional] 
**Name** | Pointer to **NullableString** | Friendly name, format: (token0 name)-(token1 name) | [optional] 
**Token0** | Pointer to **NullableString** | Reference to token0 as stored in pair contract. | [optional] 
**Token1** | Pointer to **NullableString** | Reference to token0 as stored in pair contract. | [optional] 
**Reserve0** | Pointer to **NullableString** | Reserve of token0. | [optional] 
**Reserve1** | Pointer to **NullableString** | Reserve of token1. | [optional] 
**TotalSupply** | Pointer to **NullableString** | Total supply of liquidity token distributed to LPs. | [optional] 
**ReserveEth** | Pointer to **NullableString** | Total liquidity in pair stored as an amount of ETH. | [optional] 
**ReserveUsd** | Pointer to **NullableString** | Total liquidity amount in pair stored as an amount of USD. | [optional] 
**TrackedReserveEth** | Pointer to **NullableString** | Total liquidity with only tracked amount. | [optional] 
**Token0Price** | Pointer to **NullableString** | Token0 per token1. | [optional] 
**Token1Price** | Pointer to **NullableString** | Token1 per token0. | [optional] 
**VolumeToken0** | Pointer to **NullableString** | Amount of token0 swapped on this pair. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | Amount of token1 swapped on this pair. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] 
**UntrackedVolumeUsd** | Pointer to **NullableString** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] 
**TxCount** | Pointer to **NullableString** | All time amount of transactions on this pair. | [optional] 
**LiquidityProviderCount** | Pointer to **NullableString** | Total number of LPs. | [optional] 
**Timestamp** | Pointer to **NullableString** | Timestamp. | [optional] 
**Block** | Pointer to **NullableString** | Block number in which pair information was created in. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 
**EvaluatedAsk** | Pointer to **float64** |  | [optional] [readonly] 

## Methods

### NewSushiswapPairDTO

`func NewSushiswapPairDTO() *SushiswapPairDTO`

NewSushiswapPairDTO instantiates a new SushiswapPairDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSushiswapPairDTOWithDefaults

`func NewSushiswapPairDTOWithDefaults() *SushiswapPairDTO`

NewSushiswapPairDTOWithDefaults instantiates a new SushiswapPairDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *SushiswapPairDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *SushiswapPairDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *SushiswapPairDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *SushiswapPairDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *SushiswapPairDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *SushiswapPairDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *SushiswapPairDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *SushiswapPairDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *SushiswapPairDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *SushiswapPairDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *SushiswapPairDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *SushiswapPairDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *SushiswapPairDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SushiswapPairDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SushiswapPairDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SushiswapPairDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *SushiswapPairDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *SushiswapPairDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetFactory

`func (o *SushiswapPairDTO) GetFactory() string`

GetFactory returns the Factory field if non-nil, zero value otherwise.

### GetFactoryOk

`func (o *SushiswapPairDTO) GetFactoryOk() (*string, bool)`

GetFactoryOk returns a tuple with the Factory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFactory

`func (o *SushiswapPairDTO) SetFactory(v string)`

SetFactory sets Factory field to given value.

### HasFactory

`func (o *SushiswapPairDTO) HasFactory() bool`

HasFactory returns a boolean if a field has been set.

### SetFactoryNil

`func (o *SushiswapPairDTO) SetFactoryNil(b bool)`

 SetFactoryNil sets the value for Factory to be an explicit nil

### UnsetFactory
`func (o *SushiswapPairDTO) UnsetFactory()`

UnsetFactory ensures that no value is present for Factory, not even an explicit nil
### GetName

`func (o *SushiswapPairDTO) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SushiswapPairDTO) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SushiswapPairDTO) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SushiswapPairDTO) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *SushiswapPairDTO) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *SushiswapPairDTO) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetToken0

`func (o *SushiswapPairDTO) GetToken0() string`

GetToken0 returns the Token0 field if non-nil, zero value otherwise.

### GetToken0Ok

`func (o *SushiswapPairDTO) GetToken0Ok() (*string, bool)`

GetToken0Ok returns a tuple with the Token0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0

`func (o *SushiswapPairDTO) SetToken0(v string)`

SetToken0 sets Token0 field to given value.

### HasToken0

`func (o *SushiswapPairDTO) HasToken0() bool`

HasToken0 returns a boolean if a field has been set.

### SetToken0Nil

`func (o *SushiswapPairDTO) SetToken0Nil(b bool)`

 SetToken0Nil sets the value for Token0 to be an explicit nil

### UnsetToken0
`func (o *SushiswapPairDTO) UnsetToken0()`

UnsetToken0 ensures that no value is present for Token0, not even an explicit nil
### GetToken1

`func (o *SushiswapPairDTO) GetToken1() string`

GetToken1 returns the Token1 field if non-nil, zero value otherwise.

### GetToken1Ok

`func (o *SushiswapPairDTO) GetToken1Ok() (*string, bool)`

GetToken1Ok returns a tuple with the Token1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1

`func (o *SushiswapPairDTO) SetToken1(v string)`

SetToken1 sets Token1 field to given value.

### HasToken1

`func (o *SushiswapPairDTO) HasToken1() bool`

HasToken1 returns a boolean if a field has been set.

### SetToken1Nil

`func (o *SushiswapPairDTO) SetToken1Nil(b bool)`

 SetToken1Nil sets the value for Token1 to be an explicit nil

### UnsetToken1
`func (o *SushiswapPairDTO) UnsetToken1()`

UnsetToken1 ensures that no value is present for Token1, not even an explicit nil
### GetReserve0

`func (o *SushiswapPairDTO) GetReserve0() string`

GetReserve0 returns the Reserve0 field if non-nil, zero value otherwise.

### GetReserve0Ok

`func (o *SushiswapPairDTO) GetReserve0Ok() (*string, bool)`

GetReserve0Ok returns a tuple with the Reserve0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve0

`func (o *SushiswapPairDTO) SetReserve0(v string)`

SetReserve0 sets Reserve0 field to given value.

### HasReserve0

`func (o *SushiswapPairDTO) HasReserve0() bool`

HasReserve0 returns a boolean if a field has been set.

### SetReserve0Nil

`func (o *SushiswapPairDTO) SetReserve0Nil(b bool)`

 SetReserve0Nil sets the value for Reserve0 to be an explicit nil

### UnsetReserve0
`func (o *SushiswapPairDTO) UnsetReserve0()`

UnsetReserve0 ensures that no value is present for Reserve0, not even an explicit nil
### GetReserve1

`func (o *SushiswapPairDTO) GetReserve1() string`

GetReserve1 returns the Reserve1 field if non-nil, zero value otherwise.

### GetReserve1Ok

`func (o *SushiswapPairDTO) GetReserve1Ok() (*string, bool)`

GetReserve1Ok returns a tuple with the Reserve1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserve1

`func (o *SushiswapPairDTO) SetReserve1(v string)`

SetReserve1 sets Reserve1 field to given value.

### HasReserve1

`func (o *SushiswapPairDTO) HasReserve1() bool`

HasReserve1 returns a boolean if a field has been set.

### SetReserve1Nil

`func (o *SushiswapPairDTO) SetReserve1Nil(b bool)`

 SetReserve1Nil sets the value for Reserve1 to be an explicit nil

### UnsetReserve1
`func (o *SushiswapPairDTO) UnsetReserve1()`

UnsetReserve1 ensures that no value is present for Reserve1, not even an explicit nil
### GetTotalSupply

`func (o *SushiswapPairDTO) GetTotalSupply() string`

GetTotalSupply returns the TotalSupply field if non-nil, zero value otherwise.

### GetTotalSupplyOk

`func (o *SushiswapPairDTO) GetTotalSupplyOk() (*string, bool)`

GetTotalSupplyOk returns a tuple with the TotalSupply field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalSupply

`func (o *SushiswapPairDTO) SetTotalSupply(v string)`

SetTotalSupply sets TotalSupply field to given value.

### HasTotalSupply

`func (o *SushiswapPairDTO) HasTotalSupply() bool`

HasTotalSupply returns a boolean if a field has been set.

### SetTotalSupplyNil

`func (o *SushiswapPairDTO) SetTotalSupplyNil(b bool)`

 SetTotalSupplyNil sets the value for TotalSupply to be an explicit nil

### UnsetTotalSupply
`func (o *SushiswapPairDTO) UnsetTotalSupply()`

UnsetTotalSupply ensures that no value is present for TotalSupply, not even an explicit nil
### GetReserveEth

`func (o *SushiswapPairDTO) GetReserveEth() string`

GetReserveEth returns the ReserveEth field if non-nil, zero value otherwise.

### GetReserveEthOk

`func (o *SushiswapPairDTO) GetReserveEthOk() (*string, bool)`

GetReserveEthOk returns a tuple with the ReserveEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveEth

`func (o *SushiswapPairDTO) SetReserveEth(v string)`

SetReserveEth sets ReserveEth field to given value.

### HasReserveEth

`func (o *SushiswapPairDTO) HasReserveEth() bool`

HasReserveEth returns a boolean if a field has been set.

### SetReserveEthNil

`func (o *SushiswapPairDTO) SetReserveEthNil(b bool)`

 SetReserveEthNil sets the value for ReserveEth to be an explicit nil

### UnsetReserveEth
`func (o *SushiswapPairDTO) UnsetReserveEth()`

UnsetReserveEth ensures that no value is present for ReserveEth, not even an explicit nil
### GetReserveUsd

`func (o *SushiswapPairDTO) GetReserveUsd() string`

GetReserveUsd returns the ReserveUsd field if non-nil, zero value otherwise.

### GetReserveUsdOk

`func (o *SushiswapPairDTO) GetReserveUsdOk() (*string, bool)`

GetReserveUsdOk returns a tuple with the ReserveUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReserveUsd

`func (o *SushiswapPairDTO) SetReserveUsd(v string)`

SetReserveUsd sets ReserveUsd field to given value.

### HasReserveUsd

`func (o *SushiswapPairDTO) HasReserveUsd() bool`

HasReserveUsd returns a boolean if a field has been set.

### SetReserveUsdNil

`func (o *SushiswapPairDTO) SetReserveUsdNil(b bool)`

 SetReserveUsdNil sets the value for ReserveUsd to be an explicit nil

### UnsetReserveUsd
`func (o *SushiswapPairDTO) UnsetReserveUsd()`

UnsetReserveUsd ensures that no value is present for ReserveUsd, not even an explicit nil
### GetTrackedReserveEth

`func (o *SushiswapPairDTO) GetTrackedReserveEth() string`

GetTrackedReserveEth returns the TrackedReserveEth field if non-nil, zero value otherwise.

### GetTrackedReserveEthOk

`func (o *SushiswapPairDTO) GetTrackedReserveEthOk() (*string, bool)`

GetTrackedReserveEthOk returns a tuple with the TrackedReserveEth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrackedReserveEth

`func (o *SushiswapPairDTO) SetTrackedReserveEth(v string)`

SetTrackedReserveEth sets TrackedReserveEth field to given value.

### HasTrackedReserveEth

`func (o *SushiswapPairDTO) HasTrackedReserveEth() bool`

HasTrackedReserveEth returns a boolean if a field has been set.

### SetTrackedReserveEthNil

`func (o *SushiswapPairDTO) SetTrackedReserveEthNil(b bool)`

 SetTrackedReserveEthNil sets the value for TrackedReserveEth to be an explicit nil

### UnsetTrackedReserveEth
`func (o *SushiswapPairDTO) UnsetTrackedReserveEth()`

UnsetTrackedReserveEth ensures that no value is present for TrackedReserveEth, not even an explicit nil
### GetToken0Price

`func (o *SushiswapPairDTO) GetToken0Price() string`

GetToken0Price returns the Token0Price field if non-nil, zero value otherwise.

### GetToken0PriceOk

`func (o *SushiswapPairDTO) GetToken0PriceOk() (*string, bool)`

GetToken0PriceOk returns a tuple with the Token0Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0Price

`func (o *SushiswapPairDTO) SetToken0Price(v string)`

SetToken0Price sets Token0Price field to given value.

### HasToken0Price

`func (o *SushiswapPairDTO) HasToken0Price() bool`

HasToken0Price returns a boolean if a field has been set.

### SetToken0PriceNil

`func (o *SushiswapPairDTO) SetToken0PriceNil(b bool)`

 SetToken0PriceNil sets the value for Token0Price to be an explicit nil

### UnsetToken0Price
`func (o *SushiswapPairDTO) UnsetToken0Price()`

UnsetToken0Price ensures that no value is present for Token0Price, not even an explicit nil
### GetToken1Price

`func (o *SushiswapPairDTO) GetToken1Price() string`

GetToken1Price returns the Token1Price field if non-nil, zero value otherwise.

### GetToken1PriceOk

`func (o *SushiswapPairDTO) GetToken1PriceOk() (*string, bool)`

GetToken1PriceOk returns a tuple with the Token1Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1Price

`func (o *SushiswapPairDTO) SetToken1Price(v string)`

SetToken1Price sets Token1Price field to given value.

### HasToken1Price

`func (o *SushiswapPairDTO) HasToken1Price() bool`

HasToken1Price returns a boolean if a field has been set.

### SetToken1PriceNil

`func (o *SushiswapPairDTO) SetToken1PriceNil(b bool)`

 SetToken1PriceNil sets the value for Token1Price to be an explicit nil

### UnsetToken1Price
`func (o *SushiswapPairDTO) UnsetToken1Price()`

UnsetToken1Price ensures that no value is present for Token1Price, not even an explicit nil
### GetVolumeToken0

`func (o *SushiswapPairDTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *SushiswapPairDTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *SushiswapPairDTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *SushiswapPairDTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *SushiswapPairDTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *SushiswapPairDTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *SushiswapPairDTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *SushiswapPairDTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *SushiswapPairDTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *SushiswapPairDTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *SushiswapPairDTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *SushiswapPairDTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *SushiswapPairDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *SushiswapPairDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *SushiswapPairDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *SushiswapPairDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *SushiswapPairDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *SushiswapPairDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetUntrackedVolumeUsd

`func (o *SushiswapPairDTO) GetUntrackedVolumeUsd() string`

GetUntrackedVolumeUsd returns the UntrackedVolumeUsd field if non-nil, zero value otherwise.

### GetUntrackedVolumeUsdOk

`func (o *SushiswapPairDTO) GetUntrackedVolumeUsdOk() (*string, bool)`

GetUntrackedVolumeUsdOk returns a tuple with the UntrackedVolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUntrackedVolumeUsd

`func (o *SushiswapPairDTO) SetUntrackedVolumeUsd(v string)`

SetUntrackedVolumeUsd sets UntrackedVolumeUsd field to given value.

### HasUntrackedVolumeUsd

`func (o *SushiswapPairDTO) HasUntrackedVolumeUsd() bool`

HasUntrackedVolumeUsd returns a boolean if a field has been set.

### SetUntrackedVolumeUsdNil

`func (o *SushiswapPairDTO) SetUntrackedVolumeUsdNil(b bool)`

 SetUntrackedVolumeUsdNil sets the value for UntrackedVolumeUsd to be an explicit nil

### UnsetUntrackedVolumeUsd
`func (o *SushiswapPairDTO) UnsetUntrackedVolumeUsd()`

UnsetUntrackedVolumeUsd ensures that no value is present for UntrackedVolumeUsd, not even an explicit nil
### GetTxCount

`func (o *SushiswapPairDTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *SushiswapPairDTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *SushiswapPairDTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *SushiswapPairDTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *SushiswapPairDTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *SushiswapPairDTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetLiquidityProviderCount

`func (o *SushiswapPairDTO) GetLiquidityProviderCount() string`

GetLiquidityProviderCount returns the LiquidityProviderCount field if non-nil, zero value otherwise.

### GetLiquidityProviderCountOk

`func (o *SushiswapPairDTO) GetLiquidityProviderCountOk() (*string, bool)`

GetLiquidityProviderCountOk returns a tuple with the LiquidityProviderCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityProviderCount

`func (o *SushiswapPairDTO) SetLiquidityProviderCount(v string)`

SetLiquidityProviderCount sets LiquidityProviderCount field to given value.

### HasLiquidityProviderCount

`func (o *SushiswapPairDTO) HasLiquidityProviderCount() bool`

HasLiquidityProviderCount returns a boolean if a field has been set.

### SetLiquidityProviderCountNil

`func (o *SushiswapPairDTO) SetLiquidityProviderCountNil(b bool)`

 SetLiquidityProviderCountNil sets the value for LiquidityProviderCount to be an explicit nil

### UnsetLiquidityProviderCount
`func (o *SushiswapPairDTO) UnsetLiquidityProviderCount()`

UnsetLiquidityProviderCount ensures that no value is present for LiquidityProviderCount, not even an explicit nil
### GetTimestamp

`func (o *SushiswapPairDTO) GetTimestamp() string`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *SushiswapPairDTO) GetTimestampOk() (*string, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *SushiswapPairDTO) SetTimestamp(v string)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *SushiswapPairDTO) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *SushiswapPairDTO) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *SushiswapPairDTO) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetBlock

`func (o *SushiswapPairDTO) GetBlock() string`

GetBlock returns the Block field if non-nil, zero value otherwise.

### GetBlockOk

`func (o *SushiswapPairDTO) GetBlockOk() (*string, bool)`

GetBlockOk returns a tuple with the Block field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlock

`func (o *SushiswapPairDTO) SetBlock(v string)`

SetBlock sets Block field to given value.

### HasBlock

`func (o *SushiswapPairDTO) HasBlock() bool`

HasBlock returns a boolean if a field has been set.

### SetBlockNil

`func (o *SushiswapPairDTO) SetBlockNil(b bool)`

 SetBlockNil sets the value for Block to be an explicit nil

### UnsetBlock
`func (o *SushiswapPairDTO) UnsetBlock()`

UnsetBlock ensures that no value is present for Block, not even an explicit nil
### GetVid

`func (o *SushiswapPairDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *SushiswapPairDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *SushiswapPairDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *SushiswapPairDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.

### GetEvaluatedAsk

`func (o *SushiswapPairDTO) GetEvaluatedAsk() float64`

GetEvaluatedAsk returns the EvaluatedAsk field if non-nil, zero value otherwise.

### GetEvaluatedAskOk

`func (o *SushiswapPairDTO) GetEvaluatedAskOk() (*float64, bool)`

GetEvaluatedAskOk returns a tuple with the EvaluatedAsk field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluatedAsk

`func (o *SushiswapPairDTO) SetEvaluatedAsk(v float64)`

SetEvaluatedAsk sets EvaluatedAsk field to given value.

### HasEvaluatedAsk

`func (o *SushiswapPairDTO) HasEvaluatedAsk() bool`

HasEvaluatedAsk returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


