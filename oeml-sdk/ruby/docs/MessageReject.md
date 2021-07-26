# OpenapiClient::MessageReject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Message type, constant. | [optional] |
| **reject_reason** | [**RejectReason**](RejectReason.md) |  | [optional] |
| **exchange_id** | **String** | If the message related to exchange, then the identifier of the exchange will be provided. | [optional] |
| **message** | **String** | Message text. | [optional] |
| **rejected_message** | **String** | Value of rejected request, if available. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MessageReject.new(
  type: MESSAGE_REJECT,
  reject_reason: null,
  exchange_id: BINANCE,
  message: Order with ID: BINANCE-7d8a-4888 not found,
  rejected_message: {&quot;client_order_id&quot;:&quot;BINANCE-7d8a-4888&quot;,&quot;exchange_id&quot;:&quot;BINANCE&quot;,&quot;type&quot;:&quot;ORDER_CANCEL_SINGLE_REQUEST&quot;}
)
```

