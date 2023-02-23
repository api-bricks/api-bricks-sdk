# ValidationError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Status** | **Decimal** |  | [optional] 
**TraceId** | **String** |  | [optional] 
**Errors** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ValidationError = Initialize-PSOpenAPIToolsValidationError  -Type https://tools.ietf.org/html/rfc7231#section-6.5.1 `
 -Title One or more validation errors occurred. `
 -Status 400 `
 -TraceId d200e8b5-4271a5461ce5342f `
 -Errors null
```

- Convert the resource to JSON
```powershell
$ValidationError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

