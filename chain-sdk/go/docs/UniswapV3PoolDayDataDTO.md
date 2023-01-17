# UniswapV3PoolDayDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (pool address)-(day id). | [optional] 
**Date** | Pointer to **int32** | Timestamp rounded to current day by dividing by 86400 | [optional] 
**Pool** | Pointer to **NullableString** | Pointer to pool. | [optional] 
**Liquidity** | Pointer to **NullableString** | In range liquidity at end of period. | [optional] 
**SqrtPrice** | Pointer to **NullableString** | Current price tracker at end of period. | [optional] 
**Token0Price** | Pointer to **NullableString** | Price of token0 - derived from sqrtPrice. | [optional] 
**Token1Price** | Pointer to **NullableString** | Price of token1 - derived from sqrtPrice. | [optional] 
**Tick** | Pointer to **NullableString** | Current tick at end of period. | [optional] 
**FeeGrowthGlobal0x128** | Pointer to **NullableString** | Tracker for global fee growth. | [optional] 
**FeeGrowthGlobal1x128** | Pointer to **NullableString** | Tracker for global fee growth. | [optional] 
**TvlUsd** | Pointer to **NullableString** | Total value locked derived in USD at end of period. | [optional] 
**VolumeToken0** | Pointer to **NullableString** | Volume in token0. | [optional] 
**VolumeToken1** | Pointer to **NullableString** | Volume in token1. | [optional] 
**VolumeUsd** | Pointer to **NullableString** | Volume in USD. | [optional] 
**FeesUsd** | Pointer to **NullableString** | Fees in USD. | [optional] 
**TxCount** | Pointer to **NullableString** | Number of transactions during period. | [optional] 
**Open** | Pointer to **NullableString** | Opening price of token0. | [optional] 
**High** | Pointer to **NullableString** | High price of token0. | [optional] 
**Low** | Pointer to **NullableString** | Low price of token0. | [optional] 
**Close** | Pointer to **NullableString** | Close price of token0. | [optional] 
**Vid** | Pointer to **int64** |  | [optional] 

## Methods

### NewUniswapV3PoolDayDataDTO

`func NewUniswapV3PoolDayDataDTO() *UniswapV3PoolDayDataDTO`

NewUniswapV3PoolDayDataDTO instantiates a new UniswapV3PoolDayDataDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV3PoolDayDataDTOWithDefaults

`func NewUniswapV3PoolDayDataDTOWithDefaults() *UniswapV3PoolDayDataDTO`

NewUniswapV3PoolDayDataDTOWithDefaults instantiates a new UniswapV3PoolDayDataDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV3PoolDayDataDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV3PoolDayDataDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV3PoolDayDataDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV3PoolDayDataDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV3PoolDayDataDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV3PoolDayDataDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV3PoolDayDataDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV3PoolDayDataDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV3PoolDayDataDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV3PoolDayDataDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV3PoolDayDataDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV3PoolDayDataDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV3PoolDayDataDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV3PoolDayDataDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV3PoolDayDataDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV3PoolDayDataDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV3PoolDayDataDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV3PoolDayDataDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetDate

`func (o *UniswapV3PoolDayDataDTO) GetDate() int32`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *UniswapV3PoolDayDataDTO) GetDateOk() (*int32, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *UniswapV3PoolDayDataDTO) SetDate(v int32)`

SetDate sets Date field to given value.

### HasDate

`func (o *UniswapV3PoolDayDataDTO) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetPool

`func (o *UniswapV3PoolDayDataDTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *UniswapV3PoolDayDataDTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *UniswapV3PoolDayDataDTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *UniswapV3PoolDayDataDTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *UniswapV3PoolDayDataDTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *UniswapV3PoolDayDataDTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetLiquidity

`func (o *UniswapV3PoolDayDataDTO) GetLiquidity() string`

GetLiquidity returns the Liquidity field if non-nil, zero value otherwise.

### GetLiquidityOk

`func (o *UniswapV3PoolDayDataDTO) GetLiquidityOk() (*string, bool)`

GetLiquidityOk returns a tuple with the Liquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidity

`func (o *UniswapV3PoolDayDataDTO) SetLiquidity(v string)`

SetLiquidity sets Liquidity field to given value.

### HasLiquidity

`func (o *UniswapV3PoolDayDataDTO) HasLiquidity() bool`

HasLiquidity returns a boolean if a field has been set.

### SetLiquidityNil

`func (o *UniswapV3PoolDayDataDTO) SetLiquidityNil(b bool)`

 SetLiquidityNil sets the value for Liquidity to be an explicit nil

### UnsetLiquidity
`func (o *UniswapV3PoolDayDataDTO) UnsetLiquidity()`

UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
### GetSqrtPrice

`func (o *UniswapV3PoolDayDataDTO) GetSqrtPrice() string`

GetSqrtPrice returns the SqrtPrice field if non-nil, zero value otherwise.

### GetSqrtPriceOk

`func (o *UniswapV3PoolDayDataDTO) GetSqrtPriceOk() (*string, bool)`

GetSqrtPriceOk returns a tuple with the SqrtPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSqrtPrice

`func (o *UniswapV3PoolDayDataDTO) SetSqrtPrice(v string)`

SetSqrtPrice sets SqrtPrice field to given value.

### HasSqrtPrice

`func (o *UniswapV3PoolDayDataDTO) HasSqrtPrice() bool`

HasSqrtPrice returns a boolean if a field has been set.

### SetSqrtPriceNil

`func (o *UniswapV3PoolDayDataDTO) SetSqrtPriceNil(b bool)`

 SetSqrtPriceNil sets the value for SqrtPrice to be an explicit nil

### UnsetSqrtPrice
`func (o *UniswapV3PoolDayDataDTO) UnsetSqrtPrice()`

UnsetSqrtPrice ensures that no value is present for SqrtPrice, not even an explicit nil
### GetToken0Price

`func (o *UniswapV3PoolDayDataDTO) GetToken0Price() string`

GetToken0Price returns the Token0Price field if non-nil, zero value otherwise.

### GetToken0PriceOk

`func (o *UniswapV3PoolDayDataDTO) GetToken0PriceOk() (*string, bool)`

GetToken0PriceOk returns a tuple with the Token0Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0Price

`func (o *UniswapV3PoolDayDataDTO) SetToken0Price(v string)`

SetToken0Price sets Token0Price field to given value.

### HasToken0Price

`func (o *UniswapV3PoolDayDataDTO) HasToken0Price() bool`

HasToken0Price returns a boolean if a field has been set.

### SetToken0PriceNil

`func (o *UniswapV3PoolDayDataDTO) SetToken0PriceNil(b bool)`

 SetToken0PriceNil sets the value for Token0Price to be an explicit nil

### UnsetToken0Price
`func (o *UniswapV3PoolDayDataDTO) UnsetToken0Price()`

UnsetToken0Price ensures that no value is present for Token0Price, not even an explicit nil
### GetToken1Price

`func (o *UniswapV3PoolDayDataDTO) GetToken1Price() string`

GetToken1Price returns the Token1Price field if non-nil, zero value otherwise.

### GetToken1PriceOk

`func (o *UniswapV3PoolDayDataDTO) GetToken1PriceOk() (*string, bool)`

GetToken1PriceOk returns a tuple with the Token1Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1Price

`func (o *UniswapV3PoolDayDataDTO) SetToken1Price(v string)`

SetToken1Price sets Token1Price field to given value.

### HasToken1Price

`func (o *UniswapV3PoolDayDataDTO) HasToken1Price() bool`

HasToken1Price returns a boolean if a field has been set.

### SetToken1PriceNil

`func (o *UniswapV3PoolDayDataDTO) SetToken1PriceNil(b bool)`

 SetToken1PriceNil sets the value for Token1Price to be an explicit nil

### UnsetToken1Price
`func (o *UniswapV3PoolDayDataDTO) UnsetToken1Price()`

UnsetToken1Price ensures that no value is present for Token1Price, not even an explicit nil
### GetTick

`func (o *UniswapV3PoolDayDataDTO) GetTick() string`

GetTick returns the Tick field if non-nil, zero value otherwise.

### GetTickOk

`func (o *UniswapV3PoolDayDataDTO) GetTickOk() (*string, bool)`

GetTickOk returns a tuple with the Tick field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTick

`func (o *UniswapV3PoolDayDataDTO) SetTick(v string)`

SetTick sets Tick field to given value.

### HasTick

`func (o *UniswapV3PoolDayDataDTO) HasTick() bool`

HasTick returns a boolean if a field has been set.

### SetTickNil

`func (o *UniswapV3PoolDayDataDTO) SetTickNil(b bool)`

 SetTickNil sets the value for Tick to be an explicit nil

### UnsetTick
`func (o *UniswapV3PoolDayDataDTO) UnsetTick()`

UnsetTick ensures that no value is present for Tick, not even an explicit nil
### GetFeeGrowthGlobal0x128

`func (o *UniswapV3PoolDayDataDTO) GetFeeGrowthGlobal0x128() string`

GetFeeGrowthGlobal0x128 returns the FeeGrowthGlobal0x128 field if non-nil, zero value otherwise.

### GetFeeGrowthGlobal0x128Ok

`func (o *UniswapV3PoolDayDataDTO) GetFeeGrowthGlobal0x128Ok() (*string, bool)`

GetFeeGrowthGlobal0x128Ok returns a tuple with the FeeGrowthGlobal0x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthGlobal0x128

`func (o *UniswapV3PoolDayDataDTO) SetFeeGrowthGlobal0x128(v string)`

SetFeeGrowthGlobal0x128 sets FeeGrowthGlobal0x128 field to given value.

### HasFeeGrowthGlobal0x128

`func (o *UniswapV3PoolDayDataDTO) HasFeeGrowthGlobal0x128() bool`

HasFeeGrowthGlobal0x128 returns a boolean if a field has been set.

### SetFeeGrowthGlobal0x128Nil

`func (o *UniswapV3PoolDayDataDTO) SetFeeGrowthGlobal0x128Nil(b bool)`

 SetFeeGrowthGlobal0x128Nil sets the value for FeeGrowthGlobal0x128 to be an explicit nil

### UnsetFeeGrowthGlobal0x128
`func (o *UniswapV3PoolDayDataDTO) UnsetFeeGrowthGlobal0x128()`

UnsetFeeGrowthGlobal0x128 ensures that no value is present for FeeGrowthGlobal0x128, not even an explicit nil
### GetFeeGrowthGlobal1x128

`func (o *UniswapV3PoolDayDataDTO) GetFeeGrowthGlobal1x128() string`

GetFeeGrowthGlobal1x128 returns the FeeGrowthGlobal1x128 field if non-nil, zero value otherwise.

### GetFeeGrowthGlobal1x128Ok

`func (o *UniswapV3PoolDayDataDTO) GetFeeGrowthGlobal1x128Ok() (*string, bool)`

GetFeeGrowthGlobal1x128Ok returns a tuple with the FeeGrowthGlobal1x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthGlobal1x128

`func (o *UniswapV3PoolDayDataDTO) SetFeeGrowthGlobal1x128(v string)`

SetFeeGrowthGlobal1x128 sets FeeGrowthGlobal1x128 field to given value.

### HasFeeGrowthGlobal1x128

`func (o *UniswapV3PoolDayDataDTO) HasFeeGrowthGlobal1x128() bool`

HasFeeGrowthGlobal1x128 returns a boolean if a field has been set.

### SetFeeGrowthGlobal1x128Nil

`func (o *UniswapV3PoolDayDataDTO) SetFeeGrowthGlobal1x128Nil(b bool)`

 SetFeeGrowthGlobal1x128Nil sets the value for FeeGrowthGlobal1x128 to be an explicit nil

### UnsetFeeGrowthGlobal1x128
`func (o *UniswapV3PoolDayDataDTO) UnsetFeeGrowthGlobal1x128()`

UnsetFeeGrowthGlobal1x128 ensures that no value is present for FeeGrowthGlobal1x128, not even an explicit nil
### GetTvlUsd

`func (o *UniswapV3PoolDayDataDTO) GetTvlUsd() string`

GetTvlUsd returns the TvlUsd field if non-nil, zero value otherwise.

### GetTvlUsdOk

`func (o *UniswapV3PoolDayDataDTO) GetTvlUsdOk() (*string, bool)`

GetTvlUsdOk returns a tuple with the TvlUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTvlUsd

`func (o *UniswapV3PoolDayDataDTO) SetTvlUsd(v string)`

SetTvlUsd sets TvlUsd field to given value.

### HasTvlUsd

`func (o *UniswapV3PoolDayDataDTO) HasTvlUsd() bool`

HasTvlUsd returns a boolean if a field has been set.

### SetTvlUsdNil

`func (o *UniswapV3PoolDayDataDTO) SetTvlUsdNil(b bool)`

 SetTvlUsdNil sets the value for TvlUsd to be an explicit nil

### UnsetTvlUsd
`func (o *UniswapV3PoolDayDataDTO) UnsetTvlUsd()`

UnsetTvlUsd ensures that no value is present for TvlUsd, not even an explicit nil
### GetVolumeToken0

`func (o *UniswapV3PoolDayDataDTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *UniswapV3PoolDayDataDTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *UniswapV3PoolDayDataDTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *UniswapV3PoolDayDataDTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *UniswapV3PoolDayDataDTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *UniswapV3PoolDayDataDTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *UniswapV3PoolDayDataDTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *UniswapV3PoolDayDataDTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *UniswapV3PoolDayDataDTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *UniswapV3PoolDayDataDTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *UniswapV3PoolDayDataDTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *UniswapV3PoolDayDataDTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *UniswapV3PoolDayDataDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *UniswapV3PoolDayDataDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *UniswapV3PoolDayDataDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *UniswapV3PoolDayDataDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *UniswapV3PoolDayDataDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *UniswapV3PoolDayDataDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetFeesUsd

`func (o *UniswapV3PoolDayDataDTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *UniswapV3PoolDayDataDTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *UniswapV3PoolDayDataDTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *UniswapV3PoolDayDataDTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *UniswapV3PoolDayDataDTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *UniswapV3PoolDayDataDTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetTxCount

`func (o *UniswapV3PoolDayDataDTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *UniswapV3PoolDayDataDTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *UniswapV3PoolDayDataDTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *UniswapV3PoolDayDataDTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *UniswapV3PoolDayDataDTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *UniswapV3PoolDayDataDTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetOpen

`func (o *UniswapV3PoolDayDataDTO) GetOpen() string`

GetOpen returns the Open field if non-nil, zero value otherwise.

### GetOpenOk

`func (o *UniswapV3PoolDayDataDTO) GetOpenOk() (*string, bool)`

GetOpenOk returns a tuple with the Open field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpen

`func (o *UniswapV3PoolDayDataDTO) SetOpen(v string)`

SetOpen sets Open field to given value.

### HasOpen

`func (o *UniswapV3PoolDayDataDTO) HasOpen() bool`

HasOpen returns a boolean if a field has been set.

### SetOpenNil

`func (o *UniswapV3PoolDayDataDTO) SetOpenNil(b bool)`

 SetOpenNil sets the value for Open to be an explicit nil

### UnsetOpen
`func (o *UniswapV3PoolDayDataDTO) UnsetOpen()`

UnsetOpen ensures that no value is present for Open, not even an explicit nil
### GetHigh

`func (o *UniswapV3PoolDayDataDTO) GetHigh() string`

GetHigh returns the High field if non-nil, zero value otherwise.

### GetHighOk

`func (o *UniswapV3PoolDayDataDTO) GetHighOk() (*string, bool)`

GetHighOk returns a tuple with the High field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHigh

`func (o *UniswapV3PoolDayDataDTO) SetHigh(v string)`

SetHigh sets High field to given value.

### HasHigh

`func (o *UniswapV3PoolDayDataDTO) HasHigh() bool`

HasHigh returns a boolean if a field has been set.

### SetHighNil

`func (o *UniswapV3PoolDayDataDTO) SetHighNil(b bool)`

 SetHighNil sets the value for High to be an explicit nil

### UnsetHigh
`func (o *UniswapV3PoolDayDataDTO) UnsetHigh()`

UnsetHigh ensures that no value is present for High, not even an explicit nil
### GetLow

`func (o *UniswapV3PoolDayDataDTO) GetLow() string`

GetLow returns the Low field if non-nil, zero value otherwise.

### GetLowOk

`func (o *UniswapV3PoolDayDataDTO) GetLowOk() (*string, bool)`

GetLowOk returns a tuple with the Low field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLow

`func (o *UniswapV3PoolDayDataDTO) SetLow(v string)`

SetLow sets Low field to given value.

### HasLow

`func (o *UniswapV3PoolDayDataDTO) HasLow() bool`

HasLow returns a boolean if a field has been set.

### SetLowNil

`func (o *UniswapV3PoolDayDataDTO) SetLowNil(b bool)`

 SetLowNil sets the value for Low to be an explicit nil

### UnsetLow
`func (o *UniswapV3PoolDayDataDTO) UnsetLow()`

UnsetLow ensures that no value is present for Low, not even an explicit nil
### GetClose

`func (o *UniswapV3PoolDayDataDTO) GetClose() string`

GetClose returns the Close field if non-nil, zero value otherwise.

### GetCloseOk

`func (o *UniswapV3PoolDayDataDTO) GetCloseOk() (*string, bool)`

GetCloseOk returns a tuple with the Close field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClose

`func (o *UniswapV3PoolDayDataDTO) SetClose(v string)`

SetClose sets Close field to given value.

### HasClose

`func (o *UniswapV3PoolDayDataDTO) HasClose() bool`

HasClose returns a boolean if a field has been set.

### SetCloseNil

`func (o *UniswapV3PoolDayDataDTO) SetCloseNil(b bool)`

 SetCloseNil sets the value for Close to be an explicit nil

### UnsetClose
`func (o *UniswapV3PoolDayDataDTO) UnsetClose()`

UnsetClose ensures that no value is present for Close, not even an explicit nil
### GetVid

`func (o *UniswapV3PoolDayDataDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV3PoolDayDataDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV3PoolDayDataDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV3PoolDayDataDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


