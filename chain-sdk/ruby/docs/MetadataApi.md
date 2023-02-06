# OpenapiClient::MetadataApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**metadata_chains_get**](MetadataApi.md#metadata_chains_get) | **GET** /metadata/chains | List all chains. |
| [**metadata_dapps_dapp_name_get**](MetadataApi.md#metadata_dapps_dapp_name_get) | **GET** /metadata/dapps/{dappName} | Gets dapp by name. |
| [**metadata_dapps_get**](MetadataApi.md#metadata_dapps_get) | **GET** /metadata/dapps | List all decentralized applications. |


## metadata_chains_get

> metadata_chains_get

List all chains.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::MetadataApi.new

begin
  # List all chains.
  api_instance.metadata_chains_get
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->metadata_chains_get: #{e}"
end
```

#### Using the metadata_chains_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> metadata_chains_get_with_http_info

```ruby
begin
  # List all chains.
  data, status_code, headers = api_instance.metadata_chains_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->metadata_chains_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## metadata_dapps_dapp_name_get

> metadata_dapps_dapp_name_get(dapp_name)

Gets dapp by name.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::MetadataApi.new
dapp_name = 'dapp_name_example' # String | 

begin
  # Gets dapp by name.
  api_instance.metadata_dapps_dapp_name_get(dapp_name)
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->metadata_dapps_dapp_name_get: #{e}"
end
```

#### Using the metadata_dapps_dapp_name_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> metadata_dapps_dapp_name_get_with_http_info(dapp_name)

```ruby
begin
  # Gets dapp by name.
  data, status_code, headers = api_instance.metadata_dapps_dapp_name_get_with_http_info(dapp_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->metadata_dapps_dapp_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dapp_name** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## metadata_dapps_get

> metadata_dapps_get

List all decentralized applications.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::MetadataApi.new

begin
  # List all decentralized applications.
  api_instance.metadata_dapps_get
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->metadata_dapps_get: #{e}"
end
```

#### Using the metadata_dapps_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> metadata_dapps_get_with_http_info

```ruby
begin
  # List all decentralized applications.
  data, status_code, headers = api_instance.metadata_dapps_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetadataApi->metadata_dapps_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

