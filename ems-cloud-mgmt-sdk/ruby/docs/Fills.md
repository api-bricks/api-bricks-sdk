# OpenapiClient::Fills

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **Date** | Execution time. | [optional] |
| **price** | **Float** | Execution price. | [optional] |
| **amount** | **Float** | Executed quantity. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Fills.new(
  time: 2020-01-01T10:45:20.1677709Z,
  price: 10799.2,
  amount: 0.002
)
```

