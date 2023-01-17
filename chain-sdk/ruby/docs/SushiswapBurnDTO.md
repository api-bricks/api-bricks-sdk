# OpenapiClient::SushiswapBurnDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (transaction id):(transaction.burns.length). | [optional] |
| **transaction** | **String** | Reference to the transaction Burn was included in. | [optional] |
| **timestamp** | **String** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] |
| **pair** | **String** | Reference to pair. | [optional] |
| **liquidity** | **String** | Amount of liquidity tokens burned. | [optional] |
| **sender** | **String** | Address that initiated the liquidity removal. | [optional] |
| **amount_0** | **String** | Amount of token0 removed. | [optional] |
| **amount_1** | **String** | Amount of token1 removed. | [optional] |
| **to** | **String** | Recipient of tokens. | [optional] |
| **log_index** | **String** | Index in the transaction event was emitted. | [optional] |
| **amount_usd** | **String** | Derived amount based on available prices of tokens. | [optional] |
| **complete** | **Boolean** |  | [optional] |
| **fee_to** | **String** | Address of fee recipient (if fee is on). | [optional] |
| **fee_liquidity** | **String** | Amount of tokens sent to fee recipient (if fee is on). | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SushiswapBurnDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  transaction: null,
  timestamp: null,
  pair: null,
  liquidity: null,
  sender: null,
  amount_0: null,
  amount_1: null,
  to: null,
  log_index: null,
  amount_usd: null,
  complete: null,
  fee_to: null,
  fee_liquidity: null,
  vid: null
)
```

