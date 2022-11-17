# UniswapV2PairDayDataDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** |  | [optional] 
**Date** | **Int32** | Unix timestamp for start of day. | [optional] 
**PairAddress** | **String** | Address for pair contract. | [optional] 
**Token0** | **String** | Reference to token0. | [optional] 
**Token1** | **String** | Reference to token1. | [optional] 
**Reserve0** | **String** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**Reserve1** | **String** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**TotalSupply** | **String** | Total supply of liquidity token distributed to LPs. | [optional] 
**ReserveUsd** | **String** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**DailyVolumeToken0** | **String** | Total amount of token0 swapped throughout day. | [optional] 
**DailyVolumeToken1** | **String** | Total amount of token1 swapped throughout day. | [optional] 
**DailyVolumeUsd** | **String** | Total volume within pair throughout day. | [optional] 
**DailyTxns** | **String** | Amount of transactions on pair throughout day. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapV2PairDayDataDTO = Initialize-PSOpenAPIToolsUniswapV2PairDayDataDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Date null `
 -PairAddress null `
 -Token0 null `
 -Token1 null `
 -Reserve0 null `
 -Reserve1 null `
 -TotalSupply null `
 -ReserveUsd null `
 -DailyVolumeToken0 null `
 -DailyVolumeToken1 null `
 -DailyVolumeUsd null `
 -DailyTxns null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$UniswapV2PairDayDataDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

