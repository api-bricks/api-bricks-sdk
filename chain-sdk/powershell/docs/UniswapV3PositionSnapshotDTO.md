# UniswapV3PositionSnapshotDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | NFT token identifier, format: (NFT token id)#(block number). | [optional] 
**Owner** | **String** | Owner of the NFT. | [optional] 
**Pool** | **String** | Pool the position is within. | [optional] 
**Position** | **String** | Position of which the snap was taken of. | [optional] 
**Timestamp** | **String** | Timestamp of block in which the snap was created. | [optional] 
**Liquidity** | **String** | Total position liquidity. | [optional] 
**DepositedToken0** | **String** | Amount of token 0 ever deposited to position. | [optional] 
**DepositedToken1** | **String** | Amount of token 1 ever deposited to position. | [optional] 
**WithdrawnToken0** | **String** | Amount of token 0 ever withdrawn from position (without fees). | [optional] 
**WithdrawnToken1** | **String** | Amount of token 1 ever withdrawn from position (without fees). | [optional] 
**CollectedFeesToken0** | **String** | All time collected fees in token0. | [optional] 
**CollectedFeesToken1** | **String** | All time collected fees in token1. | [optional] 
**Transaction** | **String** | Transaction in which the snapshot was initialized. | [optional] 
**FeeGrowthInside0LastX128** | **String** | Variable needed for fee computation. | [optional] 
**FeeGrowthInside1LastX128** | **String** | Variable needed for fee computation. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UniswapV3PositionSnapshotDTO = Initialize-PSOpenAPIToolsUniswapV3PositionSnapshotDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Owner null `
 -Pool null `
 -Position null `
 -Timestamp null `
 -Liquidity null `
 -DepositedToken0 null `
 -DepositedToken1 null `
 -WithdrawnToken0 null `
 -WithdrawnToken1 null `
 -CollectedFeesToken0 null `
 -CollectedFeesToken1 null `
 -Transaction null `
 -FeeGrowthInside0LastX128 null `
 -FeeGrowthInside1LastX128 null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$UniswapV3PositionSnapshotDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

