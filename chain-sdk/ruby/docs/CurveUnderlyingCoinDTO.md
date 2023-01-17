# OpenapiClient::CurveUnderlyingCoinDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Equals to: (pool_id)-(coin_index). | [optional] |
| **index** | **Integer** | Coin index. | [optional] |
| **pool** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **coin** | **String** |  | [optional] |
| **balance** | **String** |  | [optional] |
| **updated** | **String** |  | [optional] |
| **updated_at_block** | **String** |  | [optional] |
| **updated_at_transaction** | **String** |  | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CurveUnderlyingCoinDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  index: null,
  pool: null,
  token: null,
  coin: null,
  balance: null,
  updated: null,
  updated_at_block: null,
  updated_at_transaction: null,
  vid: null
)
```

