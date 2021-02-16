# Position
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** | Exchange identifier used to identify the routing destination. | [optional] 
**VarData** | [**PositionData[]**](PositionData.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Position = Initialize-PSOpenAPIToolsPosition  -ExchangeId KRAKEN `
 -VarData null
```

- Convert the resource to JSON
```powershell
$Position | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

