# OpenapiClient::UniswapV3PoolHourDataDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (pool address)-(day id) | [optional] |
| **period_start_unix** | **Integer** | Unix timestamp for start of hour. | [optional] |
| **pool** | **String** | Pointer to pool. | [optional] |
| **liquidity** | **String** | In range liquidity at end of period. | [optional] |
| **sqrt_price** | **String** | Current price tracker at end of period. | [optional] |
| **token_0_price** | **String** | Price of token0 - derived from sqrtPrice. | [optional] |
| **token_1_price** | **String** | Price of token1 - derived from sqrtPrice. | [optional] |
| **tick** | **String** | Current tick at end of period. | [optional] |
| **fee_growth_global_0x128** | **String** | Tracker for global fee growth. | [optional] |
| **fee_growth_global_1x128** | **String** | Tracker for global fee growth. | [optional] |
| **tvl_usd** | **String** | Total value locked derived in USD at end of period. | [optional] |
| **volume_token_0** | **String** | Volume in token0. | [optional] |
| **volume_token_1** | **String** | Volume in token1. | [optional] |
| **volume_usd** | **String** | Volume in USD. | [optional] |
| **fees_usd** | **String** | Fees in USD. | [optional] |
| **tx_count** | **String** | Number of transactions during period. | [optional] |
| **open** | **String** | Opening price of token0. | [optional] |
| **high** | **String** | High price of token0. | [optional] |
| **low** | **String** | Low price of token0. | [optional] |
| **close** | **String** | Close price of token0. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UniswapV3PoolHourDataDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  period_start_unix: null,
  pool: null,
  liquidity: null,
  sqrt_price: null,
  token_0_price: null,
  token_1_price: null,
  tick: null,
  fee_growth_global_0x128: null,
  fee_growth_global_1x128: null,
  tvl_usd: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  fees_usd: null,
  tx_count: null,
  open: null,
  high: null,
  low: null,
  close: null,
  vid: null
)
```

