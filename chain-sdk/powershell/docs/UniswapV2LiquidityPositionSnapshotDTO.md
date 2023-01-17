# UniswapV2LiquidityPositionSnapshotDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (pair address)-(user address) | [optional] 
**LiquidityPosition** | **String** | Reference to LP identifier. | [optional] 
**Timestamp** | **Int32** | Creation time. | [optional] 
**Block** | **Int32** | Number of block in which LP snapshot was recorded. | [optional] 
**User** | **String** | Reference to user. | [optional] 
**Pair** | **String** | Reference to the pair liquidity is being provided on. | [optional] 
**Token0PriceUsd** | **String** | Snapshot of token0 price. | [optional] 
**Token1PriceUsd** | **String** | Snapshot of token0 price. | [optional] 
**Reserve0** | **String** | Snapshot of pair token0 reserves. | [optional] 
**Reserve1** | **String** | Snapshot of pair token1 reserves. | [optional] 
**ReserveUsd** | **String** | Snapshot of pair reserves in USD. | [optional] 
**LiquidityTokenTotalSupply** | **String** | Snapshot of pool token supply. | [optional] 
**LiquidityTokenBalance** | **String** | Snapshot of users pool token balance. | [optional] 
**Vid** | **Int64** |  | [optional] 
**BlockRange** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapV2LiquidityPositionSnapshotDTO = Initialize-PSOpenAPIToolsUniswapV2LiquidityPositionSnapshotDTO  -EntryTime null `
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
 -Vid null `
 -BlockRange null
```

- Convert the resource to JSON
```powershell
$UniswapV2LiquidityPositionSnapshotDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

