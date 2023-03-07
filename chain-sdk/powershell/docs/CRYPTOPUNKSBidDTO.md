# CRYPTOPUNKSBidDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**BlockRange** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**TokensBid** | **String** |  | [optional] 
**TokenId** | **String** |  | [optional] 
**Timestamp** | **String** |  | [optional] 
**Bidder** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CRYPTOPUNKSBidDTO = Initialize-PSOpenAPIToolsCRYPTOPUNKSBidDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -BlockRange null `
 -Id null `
 -TokensBid null `
 -TokenId null `
 -Timestamp null `
 -Bidder null
```

- Convert the resource to JSON
```powershell
$CRYPTOPUNKSBidDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

