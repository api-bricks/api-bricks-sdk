# UniswapV3TickDayDataDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] 
**Date** | **Int32** | Timestamp rounded to current day by dividing by 86400. | [optional] 
**Pool** | **String** | Pointer to pool. | [optional] 
**Tick** | **String** | Pointer to tick. | [optional] 
**LiquidityGross** | **String** | Total liquidity pool has as tick lower or upper at end of period. | [optional] 
**LiquidityNet** | **String** | How much liquidity changes when tick crossed at end of period. | [optional] 
**VolumeToken0** | **String** | Hourly volume of token0 with this tick in range. | [optional] 
**VolumeToken1** | **String** | Hourly volume of token1 with this tick in range. | [optional] 
**VolumeUsd** | **String** | Hourly volume in derived USD with this tick in range. | [optional] 
**FeesUsd** | **String** | Fees in USD. | [optional] 
**FeeGrowthOutside0x128** | **String** | Variable needed for fee computation. | [optional] 
**FeeGrowthOutside1x128** | **String** | Variable needed for fee computation. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapV3TickDayDataDTO = Initialize-PSOpenAPIToolsUniswapV3TickDayDataDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Date null `
 -Pool null `
 -Tick null `
 -LiquidityGross null `
 -LiquidityNet null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -FeesUsd null `
 -FeeGrowthOutside0x128 null `
 -FeeGrowthOutside1x128 null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$UniswapV3TickDayDataDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

