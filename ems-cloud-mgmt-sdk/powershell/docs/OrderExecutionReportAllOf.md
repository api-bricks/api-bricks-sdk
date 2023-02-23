# OrderExecutionReportAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientOrderIdFormatExchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. | 
**ExchangeOrderId** | **String** | Unique identifier of the order assigned by the exchange or executing system. | [optional] 
**AmountOpen** | **Decimal** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; | 
**AmountFilled** | **Decimal** | Total quantity filled. | 
**AvgPx** | **Decimal** | Calculated average price of all fills on this order. | [optional] 
**Status** | [**OrdStatus**](OrdStatus.md) |  | 
**StatusHistory** | [**String[][]**](Array.md) | Timestamped history of order status changes. | [optional] 
**ErrorMessage** | **String** | Error message. | [optional] 
**Fills** | [**Fills[]**](Fills.md) | Relay fill information on working orders. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrderExecutionReportAllOf = Initialize-PSOpenAPIToolsOrderExecutionReportAllOf  -ClientOrderIdFormatExchange f81211e2-27c4-b86a-8143-01088ba9222c `
 -ExchangeOrderId 3456456754 `
 -AmountOpen 0.22 `
 -AmountFilled 0.0 `
 -AvgPx 0.0783 `
 -Status null `
 -StatusHistory null `
 -ErrorMessage {&quot;result&quot;:&quot;error&quot;,&quot;reason&quot;:&quot;InsufficientFunds&quot;,&quot;message&quot;:&quot;Failed to place buy order on symbol &#39;BTCUSD&#39; for price $7,000.00 and quantity 0.22 BTC due to insufficient funds&quot;} `
 -Fills null
```

- Convert the resource to JSON
```powershell
$OrderExecutionReportAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

