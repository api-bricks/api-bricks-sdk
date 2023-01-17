# OpenapiClient::SushiswapPairDayDataDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (pair id)-(day start timestamp). | [optional] |
| **date** | **Integer** | Unix timestamp for start of day. | [optional] |
| **pair** | **String** | Reference to pair. | [optional] |
| **token_0** | **String** | Reference to token0. | [optional] |
| **token_1** | **String** | Reference to token1. | [optional] |
| **reserve_0** | **String** | Reserve of token0 (updated during each transaction on pair). | [optional] |
| **reserve_1** | **String** | Reserve of token1 (updated during each transaction on pair). | [optional] |
| **total_supply** | **String** | Total supply of liquidity token distributed to LPs. | [optional] |
| **reserve_usd** | **String** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] |
| **volume_token_0** | **String** | Total amount of token0 swapped throughout day. | [optional] |
| **volume_token_1** | **String** | Total amount of token1 swapped throughout day. | [optional] |
| **volume_usd** | **String** | Total volume within pair throughout day. | [optional] |
| **tx_count** | **String** | Amount of transactions on pair throughout day. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SushiswapPairDayDataDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  date: null,
  pair: null,
  token_0: null,
  token_1: null,
  reserve_0: null,
  reserve_1: null,
  total_supply: null,
  reserve_usd: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  tx_count: null,
  vid: null
)
```

