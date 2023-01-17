# CurveUnderlyingCoinDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** |  | [optional] 
**RecvTime** | **System.DateTime** |  | [optional] 
**BlockNumber** | **Int64** | Number of block in which entity was recorded. | [optional] 
**Id** | **String** | Equals to: (pool_id)-(coin_index). | [optional] 
**Index** | **Int32** | Coin index. | [optional] 
**Pool** | **String** |  | [optional] 
**Token** | **String** |  | [optional] 
**Coin** | **String** |  | [optional] 
**Balance** | **String** |  | [optional] 
**Updated** | **String** |  | [optional] 
**UpdatedAtBlock** | **String** |  | [optional] 
**UpdatedAtTransaction** | **String** |  | [optional] 
**Vid** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CurveUnderlyingCoinDTO = Initialize-PSOpenAPIToolsCurveUnderlyingCoinDTO  -EntryTime null `
 -RecvTime null `
 -BlockNumber null `
 -Id null `
 -Index null `
 -Pool null `
 -Token null `
 -Coin null `
 -Balance null `
 -Updated null `
 -UpdatedAtBlock null `
 -UpdatedAtTransaction null `
 -Vid null
```

- Convert the resource to JSON
```powershell
$CurveUnderlyingCoinDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

