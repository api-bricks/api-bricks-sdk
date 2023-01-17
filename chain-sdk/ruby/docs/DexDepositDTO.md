# OpenapiClient::DexDepositDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (transaction hash)-(token id). | [optional] |
| **user** | **String** | User address. | [optional] |
| **token_address** | **String** | Token address. | [optional] |
| **amount** | **String** | Amount of deposit. | [optional] |
| **batch_id** | **String** | Identifier (numerical). | [optional] |
| **create_epoch** | **String** | Create epoch. | [optional] |
| **tx_hash** | **String** | Transaction hash. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DexDepositDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  user: null,
  token_address: null,
  amount: null,
  batch_id: null,
  create_epoch: null,
  tx_hash: null,
  vid: null
)
```

