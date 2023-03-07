# CRYPTOPUNKSDataSourcesDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Vid** | **Int32** |  | [optional] 
**BlockRange** | **String** |  | [optional] 
**CausalityRegion** | **Int32** |  | [optional] 
**ManifestIdx** | **Int32** |  | [optional] 
**Parent** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 
**VarParam** | **String** |  | [optional] 
**Context** | **String** |  | [optional] 
**DoneAt** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CRYPTOPUNKSDataSourcesDTO = Initialize-PSOpenAPIToolsCRYPTOPUNKSDataSourcesDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -BlockRange null `
 -CausalityRegion null `
 -ManifestIdx null `
 -Parent null `
 -Id null `
 -VarParam null `
 -Context null `
 -DoneAt null
```

- Convert the resource to JSON
```powershell
$CRYPTOPUNKSDataSourcesDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

