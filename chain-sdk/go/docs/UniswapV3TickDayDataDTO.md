# UniswapV3TickDayDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
**Date** | Pointer to **int32** | Timestamp rounded to current day by dividing by 86400. | [optional] 
**Pool** | Pointer to **NullableString** | Pointer to pool. | [optional] 
**Tick** | Pointer to **NullableString** | Pointer to tick. | [optional] 
**LiquidityGross** | Pointer to **NullableString** | Total liquidity pool has as tick lower or upper at end of period. | [optional] 
**LiquidityNet** | Pointer to **NullableString** | How much liquidity changes when tick crossed at end of period. | [optional] 
**VolumeToken0** | Pointer to **NullableString** | Hourly volume of token0 with this tick in range. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | Hourly volume of token1 with this tick in range. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Hourly volume in derived USD with this tick in range. | [optional] 
**FeesUsd** | Pointer to **NullableString** | Fees in USD. | [optional] 
**FeeGrowthOutside0x128** | Pointer to **NullableString** | Variable needed for fee computation. | [optional] 
**FeeGrowthOutside1x128** | Pointer to **NullableString** | Variable needed for fee computation. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV3TickDayDataDTO

`func NewUniswapV3TickDayDataDTO() *UniswapV3TickDayDataDTO`

NewUniswapV3TickDayDataDTO instantiates a new UniswapV3TickDayDataDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV3TickDayDataDTOWithDefaults

`func NewUniswapV3TickDayDataDTOWithDefaults() *UniswapV3TickDayDataDTO`

NewUniswapV3TickDayDataDTOWithDefaults instantiates a new UniswapV3TickDayDataDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV3TickDayDataDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV3TickDayDataDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV3TickDayDataDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV3TickDayDataDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV3TickDayDataDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV3TickDayDataDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV3TickDayDataDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV3TickDayDataDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV3TickDayDataDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV3TickDayDataDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV3TickDayDataDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV3TickDayDataDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV3TickDayDataDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV3TickDayDataDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV3TickDayDataDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV3TickDayDataDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV3TickDayDataDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV3TickDayDataDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetDate

`func (o *UniswapV3TickDayDataDTO) GetDate() int32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *UniswapV3TickDayDataDTO) GetDateOk() (*int32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *UniswapV3TickDayDataDTO) SetDate(v int32)`

SetDate sets Date field to given value.

### HasDate

`func (o *UniswapV3TickDayDataDTO) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetPool

`func (o *UniswapV3TickDayDataDTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *UniswapV3TickDayDataDTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *UniswapV3TickDayDataDTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *UniswapV3TickDayDataDTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *UniswapV3TickDayDataDTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *UniswapV3TickDayDataDTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetTick

`func (o *UniswapV3TickDayDataDTO) GetTick() string`

GetTick returns the Tick field if non-nil, zero value otherwise.

### GetTickOk

`func (o *UniswapV3TickDayDataDTO) GetTickOk() (*string, bool)`

GetTickOk returns a tuple with the Tick field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTick

`func (o *UniswapV3TickDayDataDTO) SetTick(v string)`

SetTick sets Tick field to given value.

### HasTick

`func (o *UniswapV3TickDayDataDTO) HasTick() bool`

HasTick returns a boolean if a field has been set.

### SetTickNil

`func (o *UniswapV3TickDayDataDTO) SetTickNil(b bool)`

 SetTickNil sets the value for Tick to be an explicit nil

### UnsetTick
`func (o *UniswapV3TickDayDataDTO) UnsetTick()`

UnsetTick ensures that no value is present for Tick, not even an explicit nil
### GetLiquidityGross

`func (o *UniswapV3TickDayDataDTO) GetLiquidityGross() string`

GetLiquidityGross returns the LiquidityGross field if non-nil, zero value otherwise.

### GetLiquidityGrossOk

`func (o *UniswapV3TickDayDataDTO) GetLiquidityGrossOk() (*string, bool)`

GetLiquidityGrossOk returns a tuple with the LiquidityGross field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityGross

`func (o *UniswapV3TickDayDataDTO) SetLiquidityGross(v string)`

SetLiquidityGross sets LiquidityGross field to given value.

### HasLiquidityGross

`func (o *UniswapV3TickDayDataDTO) HasLiquidityGross() bool`

HasLiquidityGross returns a boolean if a field has been set.

### SetLiquidityGrossNil

`func (o *UniswapV3TickDayDataDTO) SetLiquidityGrossNil(b bool)`

 SetLiquidityGrossNil sets the value for LiquidityGross to be an explicit nil

### UnsetLiquidityGross
`func (o *UniswapV3TickDayDataDTO) UnsetLiquidityGross()`

UnsetLiquidityGross ensures that no value is present for LiquidityGross, not even an explicit nil
### GetLiquidityNet

`func (o *UniswapV3TickDayDataDTO) GetLiquidityNet() string`

GetLiquidityNet returns the LiquidityNet field if non-nil, zero value otherwise.

### GetLiquidityNetOk

`func (o *UniswapV3TickDayDataDTO) GetLiquidityNetOk() (*string, bool)`

GetLiquidityNetOk returns a tuple with the LiquidityNet field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidityNet

`func (o *UniswapV3TickDayDataDTO) SetLiquidityNet(v string)`

SetLiquidityNet sets LiquidityNet field to given value.

### HasLiquidityNet

`func (o *UniswapV3TickDayDataDTO) HasLiquidityNet() bool`

HasLiquidityNet returns a boolean if a field has been set.

### SetLiquidityNetNil

`func (o *UniswapV3TickDayDataDTO) SetLiquidityNetNil(b bool)`

 SetLiquidityNetNil sets the value for LiquidityNet to be an explicit nil

### UnsetLiquidityNet
`func (o *UniswapV3TickDayDataDTO) UnsetLiquidityNet()`

UnsetLiquidityNet ensures that no value is present for LiquidityNet, not even an explicit nil
### GetVolumeToken0

`func (o *UniswapV3TickDayDataDTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *UniswapV3TickDayDataDTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *UniswapV3TickDayDataDTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *UniswapV3TickDayDataDTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *UniswapV3TickDayDataDTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *UniswapV3TickDayDataDTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *UniswapV3TickDayDataDTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *UniswapV3TickDayDataDTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *UniswapV3TickDayDataDTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *UniswapV3TickDayDataDTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *UniswapV3TickDayDataDTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *UniswapV3TickDayDataDTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *UniswapV3TickDayDataDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *UniswapV3TickDayDataDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *UniswapV3TickDayDataDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *UniswapV3TickDayDataDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *UniswapV3TickDayDataDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *UniswapV3TickDayDataDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetFeesUsd

`func (o *UniswapV3TickDayDataDTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *UniswapV3TickDayDataDTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *UniswapV3TickDayDataDTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *UniswapV3TickDayDataDTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *UniswapV3TickDayDataDTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *UniswapV3TickDayDataDTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetFeeGrowthOutside0x128

`func (o *UniswapV3TickDayDataDTO) GetFeeGrowthOutside0x128() string`

GetFeeGrowthOutside0x128 returns the FeeGrowthOutside0x128 field if non-nil, zero value otherwise.

### GetFeeGrowthOutside0x128Ok

`func (o *UniswapV3TickDayDataDTO) GetFeeGrowthOutside0x128Ok() (*string, bool)`

GetFeeGrowthOutside0x128Ok returns a tuple with the FeeGrowthOutside0x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthOutside0x128

`func (o *UniswapV3TickDayDataDTO) SetFeeGrowthOutside0x128(v string)`

SetFeeGrowthOutside0x128 sets FeeGrowthOutside0x128 field to given value.

### HasFeeGrowthOutside0x128

`func (o *UniswapV3TickDayDataDTO) HasFeeGrowthOutside0x128() bool`

HasFeeGrowthOutside0x128 returns a boolean if a field has been set.

### SetFeeGrowthOutside0x128Nil

`func (o *UniswapV3TickDayDataDTO) SetFeeGrowthOutside0x128Nil(b bool)`

 SetFeeGrowthOutside0x128Nil sets the value for FeeGrowthOutside0x128 to be an explicit nil

### UnsetFeeGrowthOutside0x128
`func (o *UniswapV3TickDayDataDTO) UnsetFeeGrowthOutside0x128()`

UnsetFeeGrowthOutside0x128 ensures that no value is present for FeeGrowthOutside0x128, not even an explicit nil
### GetFeeGrowthOutside1x128

`func (o *UniswapV3TickDayDataDTO) GetFeeGrowthOutside1x128() string`

GetFeeGrowthOutside1x128 returns the FeeGrowthOutside1x128 field if non-nil, zero value otherwise.

### GetFeeGrowthOutside1x128Ok

`func (o *UniswapV3TickDayDataDTO) GetFeeGrowthOutside1x128Ok() (*string, bool)`

GetFeeGrowthOutside1x128Ok returns a tuple with the FeeGrowthOutside1x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthOutside1x128

`func (o *UniswapV3TickDayDataDTO) SetFeeGrowthOutside1x128(v string)`

SetFeeGrowthOutside1x128 sets FeeGrowthOutside1x128 field to given value.

### HasFeeGrowthOutside1x128

`func (o *UniswapV3TickDayDataDTO) HasFeeGrowthOutside1x128() bool`

HasFeeGrowthOutside1x128 returns a boolean if a field has been set.

### SetFeeGrowthOutside1x128Nil

`func (o *UniswapV3TickDayDataDTO) SetFeeGrowthOutside1x128Nil(b bool)`

 SetFeeGrowthOutside1x128Nil sets the value for FeeGrowthOutside1x128 to be an explicit nil

### UnsetFeeGrowthOutside1x128
`func (o *UniswapV3TickDayDataDTO) UnsetFeeGrowthOutside1x128()`

UnsetFeeGrowthOutside1x128 ensures that no value is present for FeeGrowthOutside1x128, not even an explicit nil
### GetVid

`func (o *UniswapV3TickDayDataDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV3TickDayDataDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV3TickDayDataDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV3TickDayDataDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


