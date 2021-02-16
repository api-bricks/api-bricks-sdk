# OpenapiClient::Message

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of message. | [optional] |
| **severity** | [**Severity**](Severity.md) |  | [optional] |
| **exchange_id** | **String** | If the message related to exchange, then the identifier of the exchange will be provided. | [optional] |
| **message** | **String** | Message text. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Message.new(
  type: message,
  severity: null,
  exchange_id: KRAKEN,
  message: Ok
)
```

