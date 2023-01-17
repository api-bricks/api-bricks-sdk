# OpenapiClient::DexWithdrawRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (transaction hash)-(id). | [optional] |
| **user** | **String** |  | [optional] |
| **token_address** | **String** |  | [optional] |
| **amount** | **String** |  | [optional] |
| **withdrawable_from_batch_id** | **String** |  | [optional] |
| **create_epoch** | **String** |  | [optional] |
| **create_batch_id** | **String** |  | [optional] |
| **tx_hash** | **String** |  | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DexWithdrawRequestDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  user: null,
  token_address: null,
  amount: null,
  withdrawable_from_batch_id: null,
  create_epoch: null,
  create_batch_id: null,
  tx_hash: null,
  vid: null
)
```

