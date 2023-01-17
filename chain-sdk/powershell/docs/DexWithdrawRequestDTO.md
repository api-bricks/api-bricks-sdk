# DexWithdrawRequestDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (transaction hash)-(id). | [optional] 
**User** | **String** |  | [optional] 
**TokenAddress** | **String** |  | [optional] 
**Amount** | **String** |  | [optional] 
**WithdrawableFromBatchId** | **String** |  | [optional] 
**CreateEpoch** | **String** |  | [optional] 
**CreateBatchId** | **String** |  | [optional] 
**TxHash** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DexWithdrawRequestDTO = Initialize-PSOpenAPIToolsDexWithdrawRequestDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -User null `
 -TokenAddress null `
 -Amount null `
 -WithdrawableFromBatchId null `
 -CreateEpoch null `
 -CreateBatchId null `
 -TxHash null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$DexWithdrawRequestDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

