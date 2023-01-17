# OpenapiClient::SushiswapPairDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Pair contract address. | [optional] |
| **factory** | **String** | Factory contract address. | [optional] |
| **name** | **String** | Friendly name, format: (token0 name)-(token1 name) | [optional] |
| **token_0** | **String** | Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **String** | Reference to token0 as stored in pair contract. | [optional] |
| **reserve_0** | **String** | Reserve of token0. | [optional] |
| **reserve_1** | **String** | Reserve of token1. | [optional] |
| **total_supply** | **String** | Total supply of liquidity token distributed to LPs. | [optional] |
| **reserve_eth** | **String** | Total liquidity in pair stored as an amount of ETH. | [optional] |
| **reserve_usd** | **String** | Total liquidity amount in pair stored as an amount of USD. | [optional] |
| **tracked_reserve_eth** | **String** | Total liquidity with only tracked amount. | [optional] |
| **token_0_price** | **String** | Token0 per token1. | [optional] |
| **token_1_price** | **String** | Token1 per token0. | [optional] |
| **volume_token_0** | **String** | Amount of token0 swapped on this pair. | [optional] |
| **volume_token_1** | **String** | Amount of token1 swapped on this pair. | [optional] |
| **volume_usd** | **String** | Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold). | [optional] |
| **untracked_volume_usd** | **String** | Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold. | [optional] |
| **tx_count** | **String** | All time amount of transactions on this pair. | [optional] |
| **liquidity_provider_count** | **String** | Total number of LPs. | [optional] |
| **timestamp** | **String** | Timestamp. | [optional] |
| **block** | **String** | Block number in which pair information was created in. | [optional] |
| **vid** | **Integer** |  | [optional] |
| **evaluated_ask** | **Float** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SushiswapPairDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  factory: null,
  name: null,
  token_0: null,
  token_1: null,
  reserve_0: null,
  reserve_1: null,
  total_supply: null,
  reserve_eth: null,
  reserve_usd: null,
  tracked_reserve_eth: null,
  token_0_price: null,
  token_1_price: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  untracked_volume_usd: null,
  tx_count: null,
  liquidity_provider_count: null,
  timestamp: null,
  block: null,
  vid: null,
  evaluated_ask: null
)
```

