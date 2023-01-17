# SushiswapPairHourDataDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (pair id)-(hour start timestamp). | [optional] 
**Date** | **Int32** | Hour start timestamp. | [optional] 
**Pair** | **String** | Reference to pair. | [optional] 
**Reserve0** | **String** | Reserve of token0 (updated during each transaction on pair). | [optional] 
**Reserve1** | **String** | Reserve of token1 (updated during each transaction on pair). | [optional] 
**ReserveUsd** | **String** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] 
**VolumeToken0** | **String** | Total amount of token0 swapped throughout hour. | [optional] 
**VolumeToken1** | **String** | Total amount of token1 swapped throughout hour. | [optional] 
**VolumeUsd** | **String** | Total volume within pair throughout hour. | [optional] 
**TxCount** | **String** | Amount of transactions on pair throughout hour. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SushiswapPairHourDataDTO = Initialize-PSOpenAPIToolsSushiswapPairHourDataDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Date null `
 -Pair null `
 -Reserve0 null `
 -Reserve1 null `
 -ReserveUsd null `
 -VolumeToken0 null `
 -VolumeToken1 null `
 -VolumeUsd null `
 -TxCount null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$SushiswapPairHourDataDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

