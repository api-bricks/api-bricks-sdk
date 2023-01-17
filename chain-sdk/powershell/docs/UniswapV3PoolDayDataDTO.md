# UniswapV3PoolDayDataDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (pool address)-(day id). | [optional] 
**Date** | **Int32** | Timestamp rounded to current day by dividing by 86400 | [optional] 
**Pool** | **String** | Pointer to pool. | [optional] 
**Liquidity** | **String** | In range liquidity at end of period. | [optional] 
**SqrtPrice** | **String** | Current price tracker at end of period. | [optional] 
**Token0Price** | **String** | Price of token0 - derived from sqrtPrice. | [optional] 
**Token1Price** | **String** | Price of token1 - derived from sqrtPrice. | [optional] 
**Tick** | **String** | Current tick at end of period. | [optional] 
**FeeGrowthGlobal0x128** | **String** | Tracker for global fee growth. | [optional] 
**FeeGrowthGlobal1x128** | **String** | Tracker for global fee growth. | [optional] 
**TvlUsd** | **String** | Total value locked derived in USD at end of period. | [optional] 
**VolumeToken0** | **String** | Volume in token0. | [optional] 
**VolumeToken1** | **String** | Volume in token1. | [optional] 
**VolumeUsd** | **String** | Volume in USD. | [optional] 
**FeesUsd** | **String** | Fees in USD. | [optional] 
**TxCount** | **String** | Number of transactions during period. | [optional] 
**Open** | **String** | Opening price of token0. | [optional] 
**High** | **String** | High price of token0. | [optional] 
**Low** | **String** | Low price of token0. | [optional] 
**Close** | **String** | Close price of token0. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapV3PoolDayDataDTO = Initialize-PSOpenAPIToolsUniswapV3PoolDayDataDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Date null `
 -Pool null `
 -Liquidity null `
 -SqrtPrice null `
 -Token0Price null `
 -Token1Price null `
 -Tick null `
 -FeeGrowthGlobal0x128 null `
 -FeeGrowthGlobal1x128 null `
 -TvlUsd null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -FeesUsd null `
 -TxCount null `
 -Open null `
 -High null `
 -Low null `
 -Close null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$UniswapV3PoolDayDataDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

