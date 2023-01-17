# SushiswapPairDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Pair contract address. | [optional] 
**Factory** | **String** | Factory contract address. | [optional] 
**Name** | **String** | Friendly name, format: (token0 name)-(token1 name) | [optional] 
**Token0** | **String** | Reference to token0 as stored in pair contract. | [optional] 
**Token1** | **String** | Reference to token0 as stored in pair contract. | [optional] 
**Reserve0** | **String** | Reserve of token0. | [optional] 
**Reserve1** | **String** | Reserve of token1. | [optional] 
**TotalSupply** | **String** | Total supply of liquidity token distributed to LPs. | [optional] 
**ReserveEth** | **String** | Total liquidity in pair stored as an amount of ETH. | [optional] 
**ReserveUsd** | **String** | Total liquidity amount in pair stored as an amount of USD. | [optional] 
**TrackedReserveEth** | **String** | Total liquidity with only tracked amount. | [optional] 
**Token0Price** | **String** | Token0 per token1. | [optional] 
**Token1Price** | **String** | Token1 per token0. | [optional] 
**VolumeToken0** | **String** | Amount of token0 swapped on this pair. | [optional] 
**VolumeToken1** | **String** | Amount of token1 swapped on this pair. | [optional] 
**VolumeUsd** | **String** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] 
**UntrackedVolumeUsd** | **String** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] 
**TxCount** | **String** | All time amount of transactions on this pair. | [optional] 
**LiquidityProviderCount** | **String** | Total number of LPs. | [optional] 
**Timestamp** | **String** | Timestamp. | [optional] 
**Block** | **String** | Block number in which pair information was created in. | [optional] 
**Vid** | **Int64** |  | [optional] 
**EvaluatedAsk** | **Double** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SushiswapPairDTO = Initialize-PSOpenAPIToolsSushiswapPairDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Factory null `
 -Name null `
 -Token0 null `
 -Token1 null `
 -Reserve0 null `
 -Reserve1 null `
 -TotalSupply null `
 -ReserveEth null `
 -ReserveUsd null `
 -TrackedReserveEth null `
 -Token0Price null `
 -Token1Price null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -UntrackedVolumeUsd null `
 -TxCount null `
 -LiquidityProviderCount null `
 -Timestamp null `
 -Block null `
 -Vid null `
 -EvaluatedAsk null
```

- Convert the resource to JSON
```powershell
$SushiswapPairDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

