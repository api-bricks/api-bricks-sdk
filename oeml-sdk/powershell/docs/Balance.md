# Balance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** | Exchange identifier used to identify the routing destination. | [optional] 
**VarData** | [**BalanceData[]**](BalanceData.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Balance = Initialize-PSOpenAPIToolsBalance  -ExchangeId KRAKEN `
 -VarData null
```

- Convert the resource to JSON
```powershell
$Balance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

