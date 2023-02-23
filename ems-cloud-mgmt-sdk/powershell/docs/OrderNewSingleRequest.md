# OrderNewSingleRequest
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

## Examples

- Prepare the resource
```powershell
$OrderNewSingleRequest = Initialize-PSOpenAPIToolsOrderNewSingleRequest  -ExchangeId KRAKEN `
 -ClientOrderId 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b `
 -SymbolIdExchange XBT/USDT `
 -SymbolIdCoinapi KRAKEN_SPOT_BTC_USDT `
 -AmountOrder 0.045 `
 -Price 0.0783 `
 -Side null `
 -OrderType null `
 -TimeInForce null `
 -ExpireTime 2020-01-01T10:45:20.1677709Z `
 -ExecInst [&quot;MAKER_OR_CANCEL&quot;]
```

- Convert the resource to JSON
```powershell
$OrderNewSingleRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

