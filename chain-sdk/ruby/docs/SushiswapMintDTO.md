# OpenapiClient::SushiswapMintDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] |
| **transaction** | **String** | Reference to the transaction Mint was included in. | [optional] |
| **timestamp** | **String** | Timestamp of Mint, used to sort recent liquidity provisions. | [optional] |
| **pair** | **String** | Reference to pair. | [optional] |
| **to** | **String** | Recipient of liquidity tokens. | [optional] |
| **liquidity** | **String** | Amount of liquidity tokens minted. | [optional] |
| **sender** | **String** | Address that initiated the liquidity provision. | [optional] |
| **amount_0** | **String** | Amount of token0 provided. | [optional] |
| **amount_1** | **String** | Amount of token1 provided. | [optional] |
| **log_index** | **String** | Index in the transaction event was emitted. | [optional] |
| **amount_usd** | **String** | Derived USD value of token0 amount plus token1 amount. | [optional] |
| **fee_to** | **String** | Address of fee recipient (if fee is on). | [optional] |
| **fee_liquidity** | **String** | Amount of liquidity sent to fee recipient (if fee is on). | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SushiswapMintDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  transaction: null,
  timestamp: null,
  pair: null,
  to: null,
  liquidity: null,
  sender: null,
  amount_0: null,
  amount_1: null,
  log_index: null,
  amount_usd: null,
  fee_to: null,
  fee_liquidity: null,
  vid: null
)
```

