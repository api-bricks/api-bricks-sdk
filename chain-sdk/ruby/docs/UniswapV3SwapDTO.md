# OpenapiClient::UniswapV3SwapDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** | Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] |
| **transaction** | **String** | Pointer to transaction. | [optional] |
| **timestamp** | **Time** | Timestamp of transaction. | [optional] |
| **pool** | **String** | Pool swap occured within. | [optional] |
| **token_0** | **String** | Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **String** | Reference to token1 as stored in pair contract. | [optional] |
| **sender** | **String** | Sender of the swap. | [optional] |
| **recipient** | **String** | Recipient of the swap. | [optional] |
| **origin** | **String** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction | [optional] |
| **amount_0** | **String** | Delta of token0 swapped. | [optional] |
| **amount_1** | **String** | Delta of token1 swapped. | [optional] |
| **amount_usd** | **String** | Derived amount of tokens sold in USD. | [optional] |
| **sqrt_price_x96** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |
| **tick** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |
| **log_index** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |
| **evaluated_price** | **Float** |  | [optional][readonly] |
| **evaluated_amount** | **Float** |  | [optional][readonly] |
| **evaluated_aggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] |
| **pool_id** | **String** |  | [optional][readonly] |
| **transaction_id** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UniswapV3SwapDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  transaction: null,
  timestamp: null,
  pool: null,
  token_0: null,
  token_1: null,
  sender: null,
  recipient: null,
  origin: null,
  amount_0: null,
  amount_1: null,
  amount_usd: null,
  sqrt_price_x96: null,
  tick: null,
  log_index: null,
  evaluated_price: null,
  evaluated_amount: null,
  evaluated_aggressor: null,
  pool_id: null,
  transaction_id: null
)
```

