# OpenapiClient::Balance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier used to identify the routing destination. | [optional] |
| **data** | [**Array&lt;BalanceData&gt;**](BalanceData.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Balance.new(
  exchange_id: KRAKEN,
  data: null
)
```

