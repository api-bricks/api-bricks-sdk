# OpenapiClient::OrderNewSingleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier used to identify the routing destination. |  |
| **client_order_id** | **String** | The unique identifier of the order assigned by the client. |  |
| **symbol_id_exchange** | **String** | Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] |
| **symbol_id_coinapi** | **String** | CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order. | [optional] |
| **amount_order** | **Float** | Order quantity. |  |
| **price** | **Float** | Order price. |  |
| **side** | [**OrdSide**](OrdSide.md) |  |  |
| **order_type** | [**OrdType**](OrdType.md) |  |  |
| **time_in_force** | [**TimeInForce**](TimeInForce.md) |  |  |
| **expire_time** | **Date** | Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;. | [optional] |
| **exec_inst** | **Array&lt;String&gt;** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrderNewSingleRequest.new(
  exchange_id: KRAKEN,
  client_order_id: 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b,
  symbol_id_exchange: XBT/USDT,
  symbol_id_coinapi: KRAKEN_SPOT_BTC_USDT,
  amount_order: 0.045,
  price: 0.0783,
  side: null,
  order_type: null,
  time_in_force: null,
  expire_time: 2020-01-01T10:45:20.1677709Z,
  exec_inst: [&quot;MAKER_OR_CANCEL&quot;]
)
```

