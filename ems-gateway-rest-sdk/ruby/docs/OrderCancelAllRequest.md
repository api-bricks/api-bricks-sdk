# OpenapiClient::OrderCancelAllRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Identifier of the exchange from which active orders should be canceled. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrderCancelAllRequest.new(
  exchange_id: KRAKEN
)
```

