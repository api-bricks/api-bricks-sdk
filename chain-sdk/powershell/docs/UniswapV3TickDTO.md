# UniswapV3TickDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | **Int64** |  | [optional] 
**Id** | **String** | Identifier, format: (pool address)#(tick index) | [optional] 
**PoolAddress** | **String** | Pool address. | [optional] 
**TickIdx** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**Pool** | **String** | Pool address. | [optional] 
**LiquidityGross** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**LiquidityNet** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**Price0** | **String** | Calculated price of token0 of tick within this pool - constant. | [optional] 
**Price1** | **String** | Calculated price of token1 of tick within this pool - constant. | [optional] 
**VolumeToken0** | **String** | Lifetime volume of token0 with this tick in range. | [optional] 
**VolumeToken1** | **String** | Lifetime volume of token1 with this tick in range. | [optional] 
**VolumeUsd** | **String** | Lifetime volume in derived USD with this tick in range. | [optional] 
**UntrackedVolumeUsd** | **String** | Lifetime volume in untracked USD with this tick in range. | [optional] 
**FeesUsd** | **String** | Fees in USD. | [optional] 
**CollectedFeesToken0** | **String** | All time collected fees in token0. | [optional] 
**CollectedFeesToken1** | **String** | All time collected fees in token1. | [optional] 
**CollectedFeesUsd** | **String** | All time collected fees in USD. | [optional] 
**CreatedAtTimestamp** | **System.DateTime** | Created time. | [optional] 
**LiquidityProviderCount** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**FeeGrowthOutside0x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**FeeGrowthOutside1x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapV3TickDTO = Initialize-PSOpenAPIToolsUniswapV3TickDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -Id null `
 -PoolAddress null `
 -TickIdx null `
 -Pool null `
 -LiquidityGross null `
 -LiquidityNet null `
 -Price0 null `
 -Price1 null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -FeesUsd null `
 -CollectedFeesToken0 null `
 -CollectedFeesToken1 null `
 -CollectedFeesUsd null `
 -CreatedAtTimestamp null `
 -LiquidityProviderCount null `
 -FeeGrowthOutside0x128 null `
 -FeeGrowthOutside1x128 null
```

- Convert the resource to JSON
```powershell
$UniswapV3TickDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

