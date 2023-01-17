# CurveCoinDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Identifier, format: (pool_id)-(coin_index). | [optional] 
**Index** | **Int32** | Coin index. | [optional] 
**Pool** | **String** |  | [optional] 
**Token** | **String** |  | [optional] 
**Underlying** | **String** |  | [optional] 
**Balance** | **String** |  | [optional] 
**Rate** | **String** | Exchange rate between this coin and the associated underlying coin within the pool. | [optional] 
**Updated** | **String** |  | [optional] 
**UpdatedAtBlock** | **String** |  | [optional] 
**UpdatedAtTransaction** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 
**BlockRange** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CurveCoinDTO = Initialize-PSOpenAPIToolsCurveCoinDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Index null `
 -Pool null `
 -Token null `
 -Underlying null `
 -Balance null `
 -Rate null `
 -Updated null `
 -UpdatedAtBlock null `
 -UpdatedAtTransaction null `
 -Vid null `
 -BlockRange null
```

- Convert the resource to JSON
```powershell
$CurveCoinDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

