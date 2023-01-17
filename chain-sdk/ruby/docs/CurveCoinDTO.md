# OpenapiClient::CurveCoinDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (pool_id)-(coin_index). | [optional] |
| **index** | **Integer** | Coin index. | [optional] |
| **pool** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **underlying** | **String** |  | [optional] |
| **balance** | **String** |  | [optional] |
| **rate** | **String** | Exchange rate between this coin and the associated underlying coin within the pool. | [optional] |
| **updated** | **String** |  | [optional] |
| **updated_at_block** | **String** |  | [optional] |
| **updated_at_transaction** | **String** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **block_range** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CurveCoinDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  index: null,
  pool: null,
  token: null,
  underlying: null,
  balance: null,
  rate: null,
  updated: null,
  updated_at_block: null,
  updated_at_transaction: null,
  vid: null,
  block_range: null
)
```

