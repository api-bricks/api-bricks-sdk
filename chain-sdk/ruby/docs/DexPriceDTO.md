# OpenapiClient::DexPriceDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** | Number of block in which entity was recorded. | [optional] |
| **id** | **String** | Identifier, format: (token id)-(batch id). | [optional] |
| **token** | **String** | Token identifier. | [optional] |
| **batch_id** | **String** | Batch identifier. | [optional] |
| **price_in_owl_numerator** | **String** | Price enumerator in OWL (derivative of the GNO token). | [optional] |
| **price_in_owl_denominator** | **String** | Price denominator in OWL (derivative of the GNO token). | [optional] |
| **volume** | **String** | Volume. | [optional] |
| **create_epoch** | **String** | Create epoch. | [optional] |
| **tx_hash** | **String** | Transaction hash. | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DexPriceDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  token: null,
  batch_id: null,
  price_in_owl_numerator: null,
  price_in_owl_denominator: null,
  volume: null,
  create_epoch: null,
  tx_hash: null,
  vid: null
)
```

