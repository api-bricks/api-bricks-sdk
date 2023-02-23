# OpenapiClient::OrderHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apikey** | **String** | Apikey | [optional] |
| **exchange_id** | **String** | Exchange id | [optional] |
| **client_order_id** | **String** | Client order id | [optional] |
| **symbol_id_exchange** | **String** | Symbol id exchange | [optional] |
| **symbol_id_coinapi** | **String** | Symbol id in coinapi | [optional] |
| **amount_order** | **Float** | Amount | [optional] |
| **price** | **Float** | Price | [optional] |
| **side** | **Float** | 1-buy, 2-sell | [optional] |
| **order_type** | **String** | Order type | [optional] |
| **time_in_force** | **String** | Time in force | [optional] |
| **expire_time** | **Date** | Expire time | [optional] |
| **exec_inst** | **Array&lt;String&gt;** | Exec inst | [optional] |
| **client_order_id_format_exchange** | **String** | Client order id format | [optional] |
| **exchange_order_id** | **String** | Exchange order id | [optional] |
| **amount_open** | **Float** | Amount open | [optional] |
| **amount_filled** | **Float** | Amount filled | [optional] |
| **avg_px** | **Float** | Average price | [optional] |
| **status** | **String** | Status | [optional] |
| **status_history_status** | **Array&lt;String&gt;** | History status | [optional] |
| **status_history_time** | **Array&lt;Date&gt;** | History status time | [optional] |
| **error_message_result** | **String** | Error message | [optional] |
| **error_message_reason** | **String** | Error message reason | [optional] |
| **error_message_message** | **String** | Error message | [optional] |
| **fills_time** | **Array&lt;Date&gt;** | Fills time | [optional] |
| **fills_price** | **Array&lt;Float&gt;** | Fills price | [optional] |
| **fills_amount** | **Array&lt;Float&gt;** | Fills amount | [optional] |
| **created_time** | **Date** | Created time | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrderHistory.new(
  apikey: 9a55567a-b5ff-4b78-b6aa-xxxx,
  exchange_id: BINANCE,
  client_order_id: 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b,
  symbol_id_exchange: BTCUSDT,
  symbol_id_coinapi: BINANCE_SPOT_BTC_USDT,
  amount_order: 0.00034,
  price: 31939.47,
  side: 2,
  order_type: LIMIT,
  time_in_force: GOOD_TILL_CANCEL,
  expire_time: 2022-05-01T00:00:00,
  exec_inst: null,
  client_order_id_format_exchange: 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b,
  exchange_order_id: 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b,
  amount_open: 0.00034,
  amount_filled: 0,
  avg_px: 0,
  status: REJECTED,
  status_history_status: null,
  status_history_time: null,
  error_message_result: null,
  error_message_reason: null,
  error_message_message: -2015 Invalid API-key, IP, or permissions for action. https://api.binance.com/api/v3/order?newOrderRespType,
  fills_time: null,
  fills_price: null,
  fills_amount: null,
  created_time: 2022-06-27T07:02:33.1977903Z
)
```

