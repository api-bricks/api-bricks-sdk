# OpenapiClient::CowTradeDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (order id)|(transaction hash)|(event index). | [optional] |
| **timestamp** | **String** | Block&#39;s timestamp. | [optional] |
| **gas_price** | **String** | Transaction&#39;s gas price. | [optional] |
| **gas_limit** | **String** | Transaction&#39;s gas limit. | [optional] |
| **fee_amount** | **String** | Trade&#39;s fee amount. | [optional] |
| **tx_hash** | **String** | Trade event transaction hash. | [optional] |
| **settlement** | **String** | Reference to settlement. | [optional] |
| **buy_amount** | **String** | Buy amount. | [optional] |
| **sell_amount** | **String** | Sell amount. | [optional] |
| **sell_token** | **String** | Address of token that is sold. | [optional] |
| **buy_token** | **String** | Address of token that is bought. | [optional] |
| **order** | **String** | Reference to order. | [optional] |
| **vid** | **Integer** |  | [optional] |
| **pool_id** | **String** |  | [optional][readonly] |
| **transaction_id** | **String** |  | [optional][readonly] |
| **evaluated_price** | **Float** |  | [optional][readonly] |
| **evaluated_amount** | **Float** |  | [optional][readonly] |
| **evaluated_aggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CowTradeDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  timestamp: null,
  gas_price: null,
  gas_limit: null,
  fee_amount: null,
  tx_hash: null,
  settlement: null,
  buy_amount: null,
  sell_amount: null,
  sell_token: null,
  buy_token: null,
  order: null,
  vid: null,
  pool_id: null,
  transaction_id: null,
  evaluated_price: null,
  evaluated_amount: null,
  evaluated_aggressor: null
)
```

