# OrderExecutionReport
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** | Exchange identifier used to identify the routing destination. | 
**ClientOrderId** | **String** | The unique identifier of the order assigned by the client. | 
**SymbolIdExchange** | **String** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**SymbolIdCoinapi** | **String** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] 
**AmountOrder** | **Decimal** | Order quantity. | 
**Price** | **Decimal** | Order price. | 
**Side** | [**OrdSide**](OrdSide.md) |  | 
**OrderType** | [**OrdType**](OrdType.md) |  | 
**TimeInForce** | [**TimeInForce**](TimeInForce.md) |  | 
**ExpireTime** | **System.DateTime** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] 
**ExecInst** | **String[]** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;&quot;&quot;#ems-order-params-exec&quot;&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] 
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
$OrderExecutionReport = Initialize-PSOpenAPIToolsOrderExecutionReport  -ExchangeId KRAKEN `
 -ClientOrderId 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b `
 -SymbolIdExchange XBT/USDT `
 -SymbolIdCoinapi KRAKEN_SPOT_BTC_USDT `
 -AmountOrder 0.045 `
 -Price 0.0783 `
 -Side null `
 -OrderType null `
 -TimeInForce null `
 -ExpireTime 2020-01-01T10:45:20.1677709Z `
 -ExecInst [&quot;MAKER_OR_CANCEL&quot;] `
 -ClientOrderIdFormatExchange f81211e2-27c4-b86a-8143-01088ba9222c `
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
$OrderExecutionReport | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

