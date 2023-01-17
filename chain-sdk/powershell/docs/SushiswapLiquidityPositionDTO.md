# SushiswapLiquidityPositionDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (pair address)-(user address) | [optional] 
**User** | **String** | User address. | [optional] 
**Pair** | **String** | Pair address. | [optional] 
**LiquidityTokenBalance** | **String** | Amount of LP tokens minted for this position. | [optional] 
**Block** | **Int32** | Block number at which position was created. | [optional] 
**Timestamp** | **Int32** | Creation time. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SushiswapLiquidityPositionDTO = Initialize-PSOpenAPIToolsSushiswapLiquidityPositionDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -User null `
 -Pair null `
 -LiquidityTokenBalance null `
 -Block null `
 -Timestamp null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$SushiswapLiquidityPositionDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

