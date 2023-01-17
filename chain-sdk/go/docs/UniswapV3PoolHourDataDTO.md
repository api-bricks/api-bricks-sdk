# UniswapV3PoolHourDataDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | Pointer to **time.Time** |  | [optional] 
**RecvTime** | Pointer to **time.Time** |  | [optional] 
**BlockNumber** | Pointer to **int64** | Number of block in which entity was recorded. | [optional] 
**Id** | Pointer to **NullableString** | Identifier, format: (pool address)-(day id) | [optional] 
**PeriodStartUnix** | Pointer to **int32** | Unix timestamp for start of hour. | [optional] 
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

### NewUniswapV3PoolHourDataDTO

`func NewUniswapV3PoolHourDataDTO() *UniswapV3PoolHourDataDTO`

NewUniswapV3PoolHourDataDTO instantiates a new UniswapV3PoolHourDataDTO object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniswapV3PoolHourDataDTOWithDefaults

`func NewUniswapV3PoolHourDataDTOWithDefaults() *UniswapV3PoolHourDataDTO`

NewUniswapV3PoolHourDataDTOWithDefaults instantiates a new UniswapV3PoolHourDataDTO object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEntryTime

`func (o *UniswapV3PoolHourDataDTO) GetEntryTime() time.Time`

GetEntryTime returns the EntryTime field if non-nil, zero value otherwise.

### GetEntryTimeOk

`func (o *UniswapV3PoolHourDataDTO) GetEntryTimeOk() (*time.Time, bool)`

GetEntryTimeOk returns a tuple with the EntryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEntryTime

`func (o *UniswapV3PoolHourDataDTO) SetEntryTime(v time.Time)`

SetEntryTime sets EntryTime field to given value.

### HasEntryTime

`func (o *UniswapV3PoolHourDataDTO) HasEntryTime() bool`

HasEntryTime returns a boolean if a field has been set.

### GetRecvTime

`func (o *UniswapV3PoolHourDataDTO) GetRecvTime() time.Time`

GetRecvTime returns the RecvTime field if non-nil, zero value otherwise.

### GetRecvTimeOk

`func (o *UniswapV3PoolHourDataDTO) GetRecvTimeOk() (*time.Time, bool)`

GetRecvTimeOk returns a tuple with the RecvTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecvTime

`func (o *UniswapV3PoolHourDataDTO) SetRecvTime(v time.Time)`

SetRecvTime sets RecvTime field to given value.

### HasRecvTime

`func (o *UniswapV3PoolHourDataDTO) HasRecvTime() bool`

HasRecvTime returns a boolean if a field has been set.

### GetBlockNumber

`func (o *UniswapV3PoolHourDataDTO) GetBlockNumber() int64`

GetBlockNumber returns the BlockNumber field if non-nil, zero value otherwise.

### GetBlockNumberOk

`func (o *UniswapV3PoolHourDataDTO) GetBlockNumberOk() (*int64, bool)`

GetBlockNumberOk returns a tuple with the BlockNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockNumber

`func (o *UniswapV3PoolHourDataDTO) SetBlockNumber(v int64)`

SetBlockNumber sets BlockNumber field to given value.

### HasBlockNumber

`func (o *UniswapV3PoolHourDataDTO) HasBlockNumber() bool`

HasBlockNumber returns a boolean if a field has been set.

### GetId

`func (o *UniswapV3PoolHourDataDTO) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniswapV3PoolHourDataDTO) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniswapV3PoolHourDataDTO) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UniswapV3PoolHourDataDTO) HasId() bool`

HasId returns a boolean if a field has been set.

### SetIdNil

`func (o *UniswapV3PoolHourDataDTO) SetIdNil(b bool)`

 SetIdNil sets the value for Id to be an explicit nil

### UnsetId
`func (o *UniswapV3PoolHourDataDTO) UnsetId()`

UnsetId ensures that no value is present for Id, not even an explicit nil
### GetPeriodStartUnix

`func (o *UniswapV3PoolHourDataDTO) GetPeriodStartUnix() int32`

GetPeriodStartUnix returns the PeriodStartUnix field if non-nil, zero value otherwise.

### GetPeriodStartUnixOk

`func (o *UniswapV3PoolHourDataDTO) GetPeriodStartUnixOk() (*int32, bool)`

GetPeriodStartUnixOk returns a tuple with the PeriodStartUnix field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodStartUnix

`func (o *UniswapV3PoolHourDataDTO) SetPeriodStartUnix(v int32)`

SetPeriodStartUnix sets PeriodStartUnix field to given value.

### HasPeriodStartUnix

`func (o *UniswapV3PoolHourDataDTO) HasPeriodStartUnix() bool`

HasPeriodStartUnix returns a boolean if a field has been set.

### GetPool

`func (o *UniswapV3PoolHourDataDTO) GetPool() string`

GetPool returns the Pool field if non-nil, zero value otherwise.

### GetPoolOk

`func (o *UniswapV3PoolHourDataDTO) GetPoolOk() (*string, bool)`

GetPoolOk returns a tuple with the Pool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPool

`func (o *UniswapV3PoolHourDataDTO) SetPool(v string)`

SetPool sets Pool field to given value.

### HasPool

`func (o *UniswapV3PoolHourDataDTO) HasPool() bool`

HasPool returns a boolean if a field has been set.

### SetPoolNil

`func (o *UniswapV3PoolHourDataDTO) SetPoolNil(b bool)`

 SetPoolNil sets the value for Pool to be an explicit nil

### UnsetPool
`func (o *UniswapV3PoolHourDataDTO) UnsetPool()`

UnsetPool ensures that no value is present for Pool, not even an explicit nil
### GetLiquidity

`func (o *UniswapV3PoolHourDataDTO) GetLiquidity() string`

GetLiquidity returns the Liquidity field if non-nil, zero value otherwise.

### GetLiquidityOk

`func (o *UniswapV3PoolHourDataDTO) GetLiquidityOk() (*string, bool)`

GetLiquidityOk returns a tuple with the Liquidity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLiquidity

`func (o *UniswapV3PoolHourDataDTO) SetLiquidity(v string)`

SetLiquidity sets Liquidity field to given value.

### HasLiquidity

`func (o *UniswapV3PoolHourDataDTO) HasLiquidity() bool`

HasLiquidity returns a boolean if a field has been set.

### SetLiquidityNil

`func (o *UniswapV3PoolHourDataDTO) SetLiquidityNil(b bool)`

 SetLiquidityNil sets the value for Liquidity to be an explicit nil

### UnsetLiquidity
`func (o *UniswapV3PoolHourDataDTO) UnsetLiquidity()`

UnsetLiquidity ensures that no value is present for Liquidity, not even an explicit nil
### GetSqrtPrice

`func (o *UniswapV3PoolHourDataDTO) GetSqrtPrice() string`

GetSqrtPrice returns the SqrtPrice field if non-nil, zero value otherwise.

### GetSqrtPriceOk

`func (o *UniswapV3PoolHourDataDTO) GetSqrtPriceOk() (*string, bool)`

GetSqrtPriceOk returns a tuple with the SqrtPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSqrtPrice

`func (o *UniswapV3PoolHourDataDTO) SetSqrtPrice(v string)`

SetSqrtPrice sets SqrtPrice field to given value.

### HasSqrtPrice

`func (o *UniswapV3PoolHourDataDTO) HasSqrtPrice() bool`

HasSqrtPrice returns a boolean if a field has been set.

### SetSqrtPriceNil

`func (o *UniswapV3PoolHourDataDTO) SetSqrtPriceNil(b bool)`

 SetSqrtPriceNil sets the value for SqrtPrice to be an explicit nil

### UnsetSqrtPrice
`func (o *UniswapV3PoolHourDataDTO) UnsetSqrtPrice()`

UnsetSqrtPrice ensures that no value is present for SqrtPrice, not even an explicit nil
### GetToken0Price

`func (o *UniswapV3PoolHourDataDTO) GetToken0Price() string`

GetToken0Price returns the Token0Price field if non-nil, zero value otherwise.

### GetToken0PriceOk

`func (o *UniswapV3PoolHourDataDTO) GetToken0PriceOk() (*string, bool)`

GetToken0PriceOk returns a tuple with the Token0Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken0Price

`func (o *UniswapV3PoolHourDataDTO) SetToken0Price(v string)`

SetToken0Price sets Token0Price field to given value.

### HasToken0Price

`func (o *UniswapV3PoolHourDataDTO) HasToken0Price() bool`

HasToken0Price returns a boolean if a field has been set.

### SetToken0PriceNil

`func (o *UniswapV3PoolHourDataDTO) SetToken0PriceNil(b bool)`

 SetToken0PriceNil sets the value for Token0Price to be an explicit nil

### UnsetToken0Price
`func (o *UniswapV3PoolHourDataDTO) UnsetToken0Price()`

UnsetToken0Price ensures that no value is present for Token0Price, not even an explicit nil
### GetToken1Price

`func (o *UniswapV3PoolHourDataDTO) GetToken1Price() string`

GetToken1Price returns the Token1Price field if non-nil, zero value otherwise.

### GetToken1PriceOk

`func (o *UniswapV3PoolHourDataDTO) GetToken1PriceOk() (*string, bool)`

GetToken1PriceOk returns a tuple with the Token1Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken1Price

`func (o *UniswapV3PoolHourDataDTO) SetToken1Price(v string)`

SetToken1Price sets Token1Price field to given value.

### HasToken1Price

`func (o *UniswapV3PoolHourDataDTO) HasToken1Price() bool`

HasToken1Price returns a boolean if a field has been set.

### SetToken1PriceNil

`func (o *UniswapV3PoolHourDataDTO) SetToken1PriceNil(b bool)`

 SetToken1PriceNil sets the value for Token1Price to be an explicit nil

### UnsetToken1Price
`func (o *UniswapV3PoolHourDataDTO) UnsetToken1Price()`

UnsetToken1Price ensures that no value is present for Token1Price, not even an explicit nil
### GetTick

`func (o *UniswapV3PoolHourDataDTO) GetTick() string`

GetTick returns the Tick field if non-nil, zero value otherwise.

### GetTickOk

`func (o *UniswapV3PoolHourDataDTO) GetTickOk() (*string, bool)`

GetTickOk returns a tuple with the Tick field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTick

`func (o *UniswapV3PoolHourDataDTO) SetTick(v string)`

SetTick sets Tick field to given value.

### HasTick

`func (o *UniswapV3PoolHourDataDTO) HasTick() bool`

HasTick returns a boolean if a field has been set.

### SetTickNil

`func (o *UniswapV3PoolHourDataDTO) SetTickNil(b bool)`

 SetTickNil sets the value for Tick to be an explicit nil

### UnsetTick
`func (o *UniswapV3PoolHourDataDTO) UnsetTick()`

UnsetTick ensures that no value is present for Tick, not even an explicit nil
### GetFeeGrowthGlobal0x128

`func (o *UniswapV3PoolHourDataDTO) GetFeeGrowthGlobal0x128() string`

GetFeeGrowthGlobal0x128 returns the FeeGrowthGlobal0x128 field if non-nil, zero value otherwise.

### GetFeeGrowthGlobal0x128Ok

`func (o *UniswapV3PoolHourDataDTO) GetFeeGrowthGlobal0x128Ok() (*string, bool)`

GetFeeGrowthGlobal0x128Ok returns a tuple with the FeeGrowthGlobal0x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthGlobal0x128

`func (o *UniswapV3PoolHourDataDTO) SetFeeGrowthGlobal0x128(v string)`

SetFeeGrowthGlobal0x128 sets FeeGrowthGlobal0x128 field to given value.

### HasFeeGrowthGlobal0x128

`func (o *UniswapV3PoolHourDataDTO) HasFeeGrowthGlobal0x128() bool`

HasFeeGrowthGlobal0x128 returns a boolean if a field has been set.

### SetFeeGrowthGlobal0x128Nil

`func (o *UniswapV3PoolHourDataDTO) SetFeeGrowthGlobal0x128Nil(b bool)`

 SetFeeGrowthGlobal0x128Nil sets the value for FeeGrowthGlobal0x128 to be an explicit nil

### UnsetFeeGrowthGlobal0x128
`func (o *UniswapV3PoolHourDataDTO) UnsetFeeGrowthGlobal0x128()`

UnsetFeeGrowthGlobal0x128 ensures that no value is present for FeeGrowthGlobal0x128, not even an explicit nil
### GetFeeGrowthGlobal1x128

`func (o *UniswapV3PoolHourDataDTO) GetFeeGrowthGlobal1x128() string`

GetFeeGrowthGlobal1x128 returns the FeeGrowthGlobal1x128 field if non-nil, zero value otherwise.

### GetFeeGrowthGlobal1x128Ok

`func (o *UniswapV3PoolHourDataDTO) GetFeeGrowthGlobal1x128Ok() (*string, bool)`

GetFeeGrowthGlobal1x128Ok returns a tuple with the FeeGrowthGlobal1x128 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeeGrowthGlobal1x128

`func (o *UniswapV3PoolHourDataDTO) SetFeeGrowthGlobal1x128(v string)`

SetFeeGrowthGlobal1x128 sets FeeGrowthGlobal1x128 field to given value.

### HasFeeGrowthGlobal1x128

`func (o *UniswapV3PoolHourDataDTO) HasFeeGrowthGlobal1x128() bool`

HasFeeGrowthGlobal1x128 returns a boolean if a field has been set.

### SetFeeGrowthGlobal1x128Nil

`func (o *UniswapV3PoolHourDataDTO) SetFeeGrowthGlobal1x128Nil(b bool)`

 SetFeeGrowthGlobal1x128Nil sets the value for FeeGrowthGlobal1x128 to be an explicit nil

### UnsetFeeGrowthGlobal1x128
`func (o *UniswapV3PoolHourDataDTO) UnsetFeeGrowthGlobal1x128()`

UnsetFeeGrowthGlobal1x128 ensures that no value is present for FeeGrowthGlobal1x128, not even an explicit nil
### GetTvlUsd

`func (o *UniswapV3PoolHourDataDTO) GetTvlUsd() string`

GetTvlUsd returns the TvlUsd field if non-nil, zero value otherwise.

### GetTvlUsdOk

`func (o *UniswapV3PoolHourDataDTO) GetTvlUsdOk() (*string, bool)`

GetTvlUsdOk returns a tuple with the TvlUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTvlUsd

`func (o *UniswapV3PoolHourDataDTO) SetTvlUsd(v string)`

SetTvlUsd sets TvlUsd field to given value.

### HasTvlUsd

`func (o *UniswapV3PoolHourDataDTO) HasTvlUsd() bool`

HasTvlUsd returns a boolean if a field has been set.

### SetTvlUsdNil

`func (o *UniswapV3PoolHourDataDTO) SetTvlUsdNil(b bool)`

 SetTvlUsdNil sets the value for TvlUsd to be an explicit nil

### UnsetTvlUsd
`func (o *UniswapV3PoolHourDataDTO) UnsetTvlUsd()`

UnsetTvlUsd ensures that no value is present for TvlUsd, not even an explicit nil
### GetVolumeToken0

`func (o *UniswapV3PoolHourDataDTO) GetVolumeToken0() string`

GetVolumeToken0 returns the VolumeToken0 field if non-nil, zero value otherwise.

### GetVolumeToken0Ok

`func (o *UniswapV3PoolHourDataDTO) GetVolumeToken0Ok() (*string, bool)`

GetVolumeToken0Ok returns a tuple with the VolumeToken0 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken0

`func (o *UniswapV3PoolHourDataDTO) SetVolumeToken0(v string)`

SetVolumeToken0 sets VolumeToken0 field to given value.

### HasVolumeToken0

`func (o *UniswapV3PoolHourDataDTO) HasVolumeToken0() bool`

HasVolumeToken0 returns a boolean if a field has been set.

### SetVolumeToken0Nil

`func (o *UniswapV3PoolHourDataDTO) SetVolumeToken0Nil(b bool)`

 SetVolumeToken0Nil sets the value for VolumeToken0 to be an explicit nil

### UnsetVolumeToken0
`func (o *UniswapV3PoolHourDataDTO) UnsetVolumeToken0()`

UnsetVolumeToken0 ensures that no value is present for VolumeToken0, not even an explicit nil
### GetVolumeToken1

`func (o *UniswapV3PoolHourDataDTO) GetVolumeToken1() string`

GetVolumeToken1 returns the VolumeToken1 field if non-nil, zero value otherwise.

### GetVolumeToken1Ok

`func (o *UniswapV3PoolHourDataDTO) GetVolumeToken1Ok() (*string, bool)`

GetVolumeToken1Ok returns a tuple with the VolumeToken1 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeToken1

`func (o *UniswapV3PoolHourDataDTO) SetVolumeToken1(v string)`

SetVolumeToken1 sets VolumeToken1 field to given value.

### HasVolumeToken1

`func (o *UniswapV3PoolHourDataDTO) HasVolumeToken1() bool`

HasVolumeToken1 returns a boolean if a field has been set.

### SetVolumeToken1Nil

`func (o *UniswapV3PoolHourDataDTO) SetVolumeToken1Nil(b bool)`

 SetVolumeToken1Nil sets the value for VolumeToken1 to be an explicit nil

### UnsetVolumeToken1
`func (o *UniswapV3PoolHourDataDTO) UnsetVolumeToken1()`

UnsetVolumeToken1 ensures that no value is present for VolumeToken1, not even an explicit nil
### GetVolumeUsd

`func (o *UniswapV3PoolHourDataDTO) GetVolumeUsd() string`

GetVolumeUsd returns the VolumeUsd field if non-nil, zero value otherwise.

### GetVolumeUsdOk

`func (o *UniswapV3PoolHourDataDTO) GetVolumeUsdOk() (*string, bool)`

GetVolumeUsdOk returns a tuple with the VolumeUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolumeUsd

`func (o *UniswapV3PoolHourDataDTO) SetVolumeUsd(v string)`

SetVolumeUsd sets VolumeUsd field to given value.

### HasVolumeUsd

`func (o *UniswapV3PoolHourDataDTO) HasVolumeUsd() bool`

HasVolumeUsd returns a boolean if a field has been set.

### SetVolumeUsdNil

`func (o *UniswapV3PoolHourDataDTO) SetVolumeUsdNil(b bool)`

 SetVolumeUsdNil sets the value for VolumeUsd to be an explicit nil

### UnsetVolumeUsd
`func (o *UniswapV3PoolHourDataDTO) UnsetVolumeUsd()`

UnsetVolumeUsd ensures that no value is present for VolumeUsd, not even an explicit nil
### GetFeesUsd

`func (o *UniswapV3PoolHourDataDTO) GetFeesUsd() string`

GetFeesUsd returns the FeesUsd field if non-nil, zero value otherwise.

### GetFeesUsdOk

`func (o *UniswapV3PoolHourDataDTO) GetFeesUsdOk() (*string, bool)`

GetFeesUsdOk returns a tuple with the FeesUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeesUsd

`func (o *UniswapV3PoolHourDataDTO) SetFeesUsd(v string)`

SetFeesUsd sets FeesUsd field to given value.

### HasFeesUsd

`func (o *UniswapV3PoolHourDataDTO) HasFeesUsd() bool`

HasFeesUsd returns a boolean if a field has been set.

### SetFeesUsdNil

`func (o *UniswapV3PoolHourDataDTO) SetFeesUsdNil(b bool)`

 SetFeesUsdNil sets the value for FeesUsd to be an explicit nil

### UnsetFeesUsd
`func (o *UniswapV3PoolHourDataDTO) UnsetFeesUsd()`

UnsetFeesUsd ensures that no value is present for FeesUsd, not even an explicit nil
### GetTxCount

`func (o *UniswapV3PoolHourDataDTO) GetTxCount() string`

GetTxCount returns the TxCount field if non-nil, zero value otherwise.

### GetTxCountOk

`func (o *UniswapV3PoolHourDataDTO) GetTxCountOk() (*string, bool)`

GetTxCountOk returns a tuple with the TxCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTxCount

`func (o *UniswapV3PoolHourDataDTO) SetTxCount(v string)`

SetTxCount sets TxCount field to given value.

### HasTxCount

`func (o *UniswapV3PoolHourDataDTO) HasTxCount() bool`

HasTxCount returns a boolean if a field has been set.

### SetTxCountNil

`func (o *UniswapV3PoolHourDataDTO) SetTxCountNil(b bool)`

 SetTxCountNil sets the value for TxCount to be an explicit nil

### UnsetTxCount
`func (o *UniswapV3PoolHourDataDTO) UnsetTxCount()`

UnsetTxCount ensures that no value is present for TxCount, not even an explicit nil
### GetOpen

`func (o *UniswapV3PoolHourDataDTO) GetOpen() string`

GetOpen returns the Open field if non-nil, zero value otherwise.

### GetOpenOk

`func (o *UniswapV3PoolHourDataDTO) GetOpenOk() (*string, bool)`

GetOpenOk returns a tuple with the Open field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpen

`func (o *UniswapV3PoolHourDataDTO) SetOpen(v string)`

SetOpen sets Open field to given value.

### HasOpen

`func (o *UniswapV3PoolHourDataDTO) HasOpen() bool`

HasOpen returns a boolean if a field has been set.

### SetOpenNil

`func (o *UniswapV3PoolHourDataDTO) SetOpenNil(b bool)`

 SetOpenNil sets the value for Open to be an explicit nil

### UnsetOpen
`func (o *UniswapV3PoolHourDataDTO) UnsetOpen()`

UnsetOpen ensures that no value is present for Open, not even an explicit nil
### GetHigh

`func (o *UniswapV3PoolHourDataDTO) GetHigh() string`

GetHigh returns the High field if non-nil, zero value otherwise.

### GetHighOk

`func (o *UniswapV3PoolHourDataDTO) GetHighOk() (*string, bool)`

GetHighOk returns a tuple with the High field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHigh

`func (o *UniswapV3PoolHourDataDTO) SetHigh(v string)`

SetHigh sets High field to given value.

### HasHigh

`func (o *UniswapV3PoolHourDataDTO) HasHigh() bool`

HasHigh returns a boolean if a field has been set.

### SetHighNil

`func (o *UniswapV3PoolHourDataDTO) SetHighNil(b bool)`

 SetHighNil sets the value for High to be an explicit nil

### UnsetHigh
`func (o *UniswapV3PoolHourDataDTO) UnsetHigh()`

UnsetHigh ensures that no value is present for High, not even an explicit nil
### GetLow

`func (o *UniswapV3PoolHourDataDTO) GetLow() string`

GetLow returns the Low field if non-nil, zero value otherwise.

### GetLowOk

`func (o *UniswapV3PoolHourDataDTO) GetLowOk() (*string, bool)`

GetLowOk returns a tuple with the Low field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLow

`func (o *UniswapV3PoolHourDataDTO) SetLow(v string)`

SetLow sets Low field to given value.

### HasLow

`func (o *UniswapV3PoolHourDataDTO) HasLow() bool`

HasLow returns a boolean if a field has been set.

### SetLowNil

`func (o *UniswapV3PoolHourDataDTO) SetLowNil(b bool)`

 SetLowNil sets the value for Low to be an explicit nil

### UnsetLow
`func (o *UniswapV3PoolHourDataDTO) UnsetLow()`

UnsetLow ensures that no value is present for Low, not even an explicit nil
### GetClose

`func (o *UniswapV3PoolHourDataDTO) GetClose() string`

GetClose returns the Close field if non-nil, zero value otherwise.

### GetCloseOk

`func (o *UniswapV3PoolHourDataDTO) GetCloseOk() (*string, bool)`

GetCloseOk returns a tuple with the Close field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClose

`func (o *UniswapV3PoolHourDataDTO) SetClose(v string)`

SetClose sets Close field to given value.

### HasClose

`func (o *UniswapV3PoolHourDataDTO) HasClose() bool`

HasClose returns a boolean if a field has been set.

### SetCloseNil

`func (o *UniswapV3PoolHourDataDTO) SetCloseNil(b bool)`

 SetCloseNil sets the value for Close to be an explicit nil

### UnsetClose
`func (o *UniswapV3PoolHourDataDTO) UnsetClose()`

UnsetClose ensures that no value is present for Close, not even an explicit nil
### GetVid

`func (o *UniswapV3PoolHourDataDTO) GetVid() int64`

GetVid returns the Vid field if non-nil, zero value otherwise.

### GetVidOk

`func (o *UniswapV3PoolHourDataDTO) GetVidOk() (*int64, bool)`

GetVidOk returns a tuple with the Vid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVid

`func (o *UniswapV3PoolHourDataDTO) SetVid(v int64)`

SetVid sets Vid field to given value.

### HasVid

`func (o *UniswapV3PoolHourDataDTO) HasVid() bool`

HasVid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


