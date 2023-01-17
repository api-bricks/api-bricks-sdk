# DexDepositDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (transaction hash)-(token id). | [optional] 
**User** | **String** | User address. | [optional] 
**TokenAddress** | **String** | Token address. | [optional] 
**Amount** | **String** | Amount of deposit. | [optional] 
**BatchId** | **String** | Identifier (numerical). | [optional] 
**CreateEpoch** | **String** | Create epoch. | [optional] 
**TxHash** | **String** | Transaction hash. | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DexDepositDTO = Initialize-PSOpenAPIToolsDexDepositDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -User null `
 -TokenAddress null `
 -Amount null `
 -BatchId null `
 -CreateEpoch null `
 -TxHash null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$DexDepositDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

