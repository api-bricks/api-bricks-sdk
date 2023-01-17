# OpenapiClient::DexOrderDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (owner address)-(order id) | [optional] |
| **owner** | **String** | Reference to owner. | [optional] |
| **order_id** | **Integer** | Order id. | [optional] |
| **from_batch_id** | **String** | Batch id from which order became valid. | [optional] |
| **from_epoch** | **String** | Start of epoch in which order was placed and became valid. | [optional] |
| **until_batch_id** | **String** | Batch id until which trade was still valid. | [optional] |
| **until_epoch** | **String** | End of epoch in which order was placed. | [optional] |
| **buy_token** | **String** | Identifier of token that was bought. | [optional] |
| **sell_token** | **String** | Identifier of token that was sold. | [optional] |
| **price_numerator** | **String** | Price enumerator. | [optional] |
| **price_denominator** | **String** | Price denominator. | [optional] |
| **max_sell_amount** | **String** | Maximum sell amount. | [optional] |
| **min_receive_amount** | **String** | Minimum receive amount. | [optional] |
| **sold_volume** | **String** | Sold volume. | [optional] |
| **bought_volume** | **String** | Bought volume. | [optional] |
| **create_epoch** | **String** | Epoch in which order was created. | [optional] |
| **cancel_epoch** | **String** | Epoch in which order was cancelled. | [optional] |
| **delete_epoch** | **String** | Epoch in which order was deleted. | [optional] |
| **tx_hash** | **String** | Transaction hash. | [optional] |
| **tx_log_index** | **String** | Event index within transaction. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DexOrderDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  owner: null,
  order_id: null,
  from_batch_id: null,
  from_epoch: null,
  until_batch_id: null,
  until_epoch: null,
  buy_token: null,
  sell_token: null,
  price_numerator: null,
  price_denominator: null,
  max_sell_amount: null,
  min_receive_amount: null,
  sold_volume: null,
  bought_volume: null,
  create_epoch: null,
  cancel_epoch: null,
  delete_epoch: null,
  tx_hash: null,
  tx_log_index: null,
  vid: null
)
```

