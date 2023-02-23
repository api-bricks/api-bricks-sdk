# OpenapiClient::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **status** | **Float** |  | [optional] |
| **trace_id** | **String** |  | [optional] |
| **errors** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ValidationError.new(
  type: https://tools.ietf.org/html/rfc7231#section-6.5.1,
  title: One or more validation errors occurred.,
  status: 400,
  trace_id: d200e8b5-4271a5461ce5342f,
  errors: null
)
```

