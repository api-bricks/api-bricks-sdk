# OpenapiClient::OrderCancelSingleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier used to identify the routing destination. |  |
| **exchange_order_id** | **String** | Unique identifier of the order assigned by the exchange or executing system. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] |
| **client_order_id** | **String** | The unique identifier of the order assigned by the client. One of the properties (&#x60;exchange_order_id&#x60;, &#x60;client_order_id&#x60;) is required to identify the new order. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrderCancelSingleRequest.new(
  exchange_id: KRAKEN,
  exchange_order_id: 3456456754,
  client_order_id: 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b
)
```

