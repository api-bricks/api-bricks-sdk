# OpenapiClient::SushiswapPairHourDataDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (pair id)-(hour start timestamp). | [optional] |
| **date** | **Integer** | Hour start timestamp. | [optional] |
| **pair** | **String** | Reference to pair. | [optional] |
| **reserve_0** | **String** | Reserve of token0 (updated during each transaction on pair). | [optional] |
| **reserve_1** | **String** | Reserve of token1 (updated during each transaction on pair). | [optional] |
| **reserve_usd** | **String** | Reserve of token0 plus token1 stored as a derived USD amount. | [optional] |
| **volume_token_0** | **String** | Total amount of token0 swapped throughout hour. | [optional] |
| **volume_token_1** | **String** | Total amount of token1 swapped throughout hour. | [optional] |
| **volume_usd** | **String** | Total volume within pair throughout hour. | [optional] |
| **tx_count** | **String** | Amount of transactions on pair throughout hour. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SushiswapPairHourDataDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  date: null,
  pair: null,
  reserve_0: null,
  reserve_1: null,
  reserve_usd: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  tx_count: null,
  vid: null
)
```

