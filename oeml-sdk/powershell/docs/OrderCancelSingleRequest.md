# OrderCancelSingleRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** | Exchange identifier used to identify the routing destination. | 
**ExchangeOrderId** | **String** | Unique identifier of the order assigned by the exchange or executing system. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] 
**ClientOrderId** | **String** | The unique identifier of the order assigned by the client. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderCancelSingleRequest = Initialize-PSOpenAPIToolsOrderCancelSingleRequest  -ExchangeId KRAKEN `
 -ExchangeOrderId 3456456754 `
 -ClientOrderId 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b
```

- Convert the resource to JSON
```powershell
$OrderCancelSingleRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

