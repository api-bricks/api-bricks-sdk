# SushiswapLiquidityPositionSnapshotDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (pair address)-(user address)-(timestamp) | [optional] 
**LiquidityPosition** | **String** | Reference to LP identifier. | [optional] 
**Timestamp** | **Int32** | Creation time. | [optional] 
**Block** | **Int32** | Block in which snapshot has been created. | [optional] 
**User** | **String** | Reference to user. | [optional] 
**Pair** | **String** | Reference to the pair liquidity is being provided on. | [optional] 
**Token0PriceUsd** | **String** | Snapshot of token0 price in USD. | [optional] 
**Token1PriceUsd** | **String** | Snapshot of token0 price in USD. | [optional] 
**Reserve0** | **String** | Snapshot of pair token0 reserves. | [optional] 
**Reserve1** | **String** | Snapshot of pair token1 reserves. | [optional] 
**ReserveUsd** | **String** | Snapshot of pair reserves in USD. | [optional] 
**LiquidityTokenTotalSupply** | **String** | Snapshot of pool token supply. | [optional] 
**LiquidityTokenBalance** | **String** | Snapshot of users pool token balance. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SushiswapLiquidityPositionSnapshotDTO = Initialize-PSOpenAPIToolsSushiswapLiquidityPositionSnapshotDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -LiquidityPosition null `
 -Timestamp null `
 -Block null `
 -User null `
 -Pair null `
 -Token0PriceUsd null `
 -Token1PriceUsd null `
 -Reserve0 null `
 -Reserve1 null `
 -ReserveUsd null `
 -LiquidityTokenTotalSupply null `
 -LiquidityTokenBalance null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$SushiswapLiquidityPositionSnapshotDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

