# OpenapiClient::UniswapV3TickDayDataDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] |
| **date** | **Integer** | Timestamp rounded to current day by dividing by 86400. | [optional] |
| **pool** | **String** | Pointer to pool. | [optional] |
| **tick** | **String** | Pointer to tick. | [optional] |
| **liquidity_gross** | **String** | Total liquidity pool has as tick lower or upper at end of period. | [optional] |
| **liquidity_net** | **String** | How much liquidity changes when tick crossed at end of period. | [optional] |
| **volume_token_0** | **String** | Hourly volume of token0 with this tick in range. | [optional] |
| **volume_token_1** | **String** | Hourly volume of token1 with this tick in range. | [optional] |
| **volume_usd** | **String** | Hourly volume in derived USD with this tick in range. | [optional] |
| **fees_usd** | **String** | Fees in USD. | [optional] |
| **fee_growth_outside_0x128** | **String** | Variable needed for fee computation. | [optional] |
| **fee_growth_outside_1x128** | **String** | Variable needed for fee computation. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UniswapV3TickDayDataDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  date: null,
  pool: null,
  tick: null,
  liquidity_gross: null,
  liquidity_net: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  fees_usd: null,
  fee_growth_outside_0x128: null,
  fee_growth_outside_1x128: null,
  vid: null
)
```

