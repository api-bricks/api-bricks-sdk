
# CoinAPI.EMS.REST.V1.Model.UniswapV3TickDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Vid** | **long** |  | [optional] 
**Id** | **string** | Identifier, format: (pool address)#(tick index) | [optional] 
**PoolAddress** | **string** | Pool address. | [optional] 
**TickIdx** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**Pool** | **string** | Pool address. | [optional] 
**LiquidityGross** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**LiquidityNet** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**Price0** | **string** | Calculated price of token0 of tick within this pool - constant. | [optional] 
**Price1** | **string** | Calculated price of token1 of tick within this pool - constant. | [optional] 
**VolumeToken0** | **string** | Lifetime volume of token0 with this tick in range. | [optional] 
**VolumeToken1** | **string** | Lifetime volume of token1 with this tick in range. | [optional] 
**VolumeUsd** | **string** | Lifetime volume in derived USD with this tick in range. | [optional] 
**UntrackedVolumeUsd** | **string** | Lifetime volume in untracked USD with this tick in range. | [optional] 
**FeesUsd** | **string** | Fees in USD. | [optional] 
**CollectedFeesToken0** | **string** | All time collected fees in token0. | [optional] 
**CollectedFeesToken1** | **string** | All time collected fees in token1. | [optional] 
**CollectedFeesUsd** | **string** | All time collected fees in USD. | [optional] 
**CreatedAtTimestamp** | **DateTime** | Created time. | [optional] 
**LiquidityProviderCount** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**FeeGrowthOutside0x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**FeeGrowthOutside1x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)

