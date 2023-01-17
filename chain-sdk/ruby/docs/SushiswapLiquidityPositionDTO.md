# OpenapiClient::SushiswapLiquidityPositionDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (pair address)-(user address) | [optional] |
| **user** | **String** | User address. | [optional] |
| **pair** | **String** | Pair address. | [optional] |
| **liquidity_token_balance** | **String** | Amount of LP tokens minted for this position. | [optional] |
| **block** | **Integer** | Block number at which position was created. | [optional] |
| **timestamp** | **Integer** | Creation time. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SushiswapLiquidityPositionDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  user: null,
  pair: null,
  liquidity_token_balance: null,
  block: null,
  timestamp: null,
  vid: null
)
```

