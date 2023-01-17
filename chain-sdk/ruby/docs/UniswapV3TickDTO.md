# OpenapiClient::UniswapV3TickDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** | Identifier, format: (pool address)#(tick index) | [optional] |
| **pool_address** | **String** | Pool address. | [optional] |
| **tick_idx** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |
| **pool** | **String** | Pool address. | [optional] |
| **liquidity_gross** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |
| **liquidity_net** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |
| **price_0** | **String** | Calculated price of token0 of tick within this pool - constant. | [optional] |
| **price_1** | **String** | Calculated price of token1 of tick within this pool - constant. | [optional] |
| **volume_token_0** | **String** | Lifetime volume of token0 with this tick in range. | [optional] |
| **volume_token_1** | **String** | Lifetime volume of token1 with this tick in range. | [optional] |
| **volume_usd** | **String** | Lifetime volume in derived USD with this tick in range. | [optional] |
| **untracked_volume_usd** | **String** | Lifetime volume in untracked USD with this tick in range. | [optional] |
| **fees_usd** | **String** | Fees in USD. | [optional] |
| **collected_fees_token_0** | **String** | All time collected fees in token0. | [optional] |
| **collected_fees_token_1** | **String** | All time collected fees in token1. | [optional] |
| **collected_fees_usd** | **String** | All time collected fees in USD. | [optional] |
| **created_at_timestamp** | **Time** | Created time. | [optional] |
| **liquidity_provider_count** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |
| **fee_growth_outside_0x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |
| **fee_growth_outside_1x128** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UniswapV3TickDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  pool_address: null,
  tick_idx: null,
  pool: null,
  liquidity_gross: null,
  liquidity_net: null,
  price_0: null,
  price_1: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  untracked_volume_usd: null,
  fees_usd: null,
  collected_fees_token_0: null,
  collected_fees_token_1: null,
  collected_fees_usd: null,
  created_at_timestamp: null,
  liquidity_provider_count: null,
  fee_growth_outside_0x128: null,
  fee_growth_outside_1x128: null
)
```

