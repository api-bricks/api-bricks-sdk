# MessageReject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Message type, constant. | [optional] 
**RejectReason** | [**RejectReason**](RejectReason.md) |  | [optional] 
**ExchangeId** | **String** | If the message related to exchange, then the identifier of the exchange will be provided. | [optional] 
**Message** | **String** | Message text. | [optional] 
**RejectedMessage** | **String** | Value of rejected request, if available. | [optional] 

## Examples

- Prepare the resource
```powershell
$MessageReject = Initialize-PSOpenAPIToolsMessageReject  -Type MESSAGE_REJECT `
 -RejectReason null `
 -ExchangeId BINANCE `
 -Message Order with ID: BINANCE-7d8a-4888 not found `
 -RejectedMessage {&quot;client_order_id&quot;:&quot;BINANCE-7d8a-4888&quot;,&quot;exchange_id&quot;:&quot;BINANCE&quot;,&quot;type&quot;:&quot;ORDER_CANCEL_SINGLE_REQUEST&quot;}
```

- Convert the resource to JSON
```powershell
$MessageReject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

