# OrderCancelAllRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** | Identifier of the exchange from which active orders should be canceled. | 

## Examples

- Prepare the resource
```powershell
$OrderCancelAllRequest = Initialize-PSOpenAPIToolsOrderCancelAllRequest  -ExchangeId KRAKEN
```

- Convert the resource to JSON
```powershell
$OrderCancelAllRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

