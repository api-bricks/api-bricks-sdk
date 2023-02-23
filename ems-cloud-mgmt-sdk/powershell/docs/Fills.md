# Fills
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | **System.DateTime** | Execution time. | [optional] 
**Price** | **Decimal** | Execution price. | [optional] 
**Amount** | **Decimal** | Executed quantity. | [optional] 

## Examples

- Prepare the resource
```powershell
$Fills = Initialize-PSOpenAPIToolsFills  -Time 2020-01-01T10:45:20.1677709Z `
 -Price 10799.2 `
 -Amount 0.002
```

- Convert the resource to JSON
```powershell
$Fills | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

