# CRYPTOPUNKSTradeDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**BlockRange** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**TransactionHash** | **String** |  | [optional] 
**LogIndex** | **Int32** |  | [optional] 
**Timestamp** | **String** |  | [optional] 
**IsBundle** | **Boolean** |  | [optional] 
**Collection** | **String** |  | [optional] 
**TokenId** | **String** |  | [optional] 
**Amount** | **String** |  | [optional] 
**PriceEth** | **String** |  | [optional] 
**Buyer** | **String** |  | [optional] 
**Seller** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CRYPTOPUNKSTradeDTO = Initialize-PSOpenAPIToolsCRYPTOPUNKSTradeDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Vid null `
 -BlockRange null `
 -Id null `
 -TransactionHash null `
 -LogIndex null `
 -Timestamp null `
 -IsBundle null `
 -Collection null `
 -TokenId null `
 -Amount null `
 -PriceEth null `
 -Buyer null `
 -Seller null
```

- Convert the resource to JSON
```powershell
$CRYPTOPUNKSTradeDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

