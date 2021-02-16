# OpenapiClient::OrderExecutionReport

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
| **exec_inst** | **Array&lt;String&gt;** | Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;  | [optional] |
| **client_order_id_format_exchange** | **String** | The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. |  |
| **exchange_order_id** | **String** | Unique identifier of the order assigned by the exchange or executing system. | [optional] |
| **amount_open** | **Float** | Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; |  |
| **amount_filled** | **Float** | Total quantity filled. |  |
| **avg_px** | **Float** | Calculated average price of all fills on this order. | [optional] |
| **status** | [**OrdStatus**](OrdStatus.md) |  |  |
| **status_history** | **Array&lt;Array&lt;String&gt;&gt;** | Timestamped history of order status changes. | [optional] |
| **error_message** | **String** | Error message. | [optional] |
| **fills** | [**Array&lt;Fills&gt;**](Fills.md) | Relay fill information on working orders. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrderExecutionReport.new(
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
  exec_inst: [&quot;MAKER_OR_CANCEL&quot;],
  client_order_id_format_exchange: f81211e2-27c4-b86a-8143-01088ba9222c,
  exchange_order_id: 3456456754,
  amount_open: 0.22,
  amount_filled: 0.0,
  avg_px: 0.0783,
  status: null,
  status_history: null,
  error_message: {&quot;result&quot;:&quot;error&quot;,&quot;reason&quot;:&quot;InsufficientFunds&quot;,&quot;message&quot;:&quot;Failed to place buy order on symbol &#39;BTCUSD&#39; for price $7,000.00 and quantity 0.22 BTC due to insufficient funds&quot;},
  fills: null
)
```

