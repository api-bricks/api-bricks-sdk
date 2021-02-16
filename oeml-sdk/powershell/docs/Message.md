# Message
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of message. | [optional] 
**Severity** | [**Severity**](Severity.md) |  | [optional] 
**ExchangeId** | **String** | If the message related to exchange, then the identifier of the exchange will be provided. | [optional] 
**Message** | **String** | Message text. | [optional] 

## Examples

- Prepare the resource
```powershell
$Message = Initialize-PSOpenAPIToolsMessage  -Type message `
 -Severity null `
 -ExchangeId KRAKEN `
 -Message Ok
```

- Convert the resource to JSON
```powershell
$Message | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

