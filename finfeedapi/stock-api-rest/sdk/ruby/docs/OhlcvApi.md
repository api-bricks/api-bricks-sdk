# OpenapiClient::OhlcvApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_ohlcv_exchange_exchange_id_history_get**](OhlcvApi.md#v1_ohlcv_exchange_exchange_id_history_get) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange |
| [**v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get**](OhlcvApi.md#v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data |
| [**v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get**](OhlcvApi.md#v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data |
| [**v1_ohlcv_periods_get**](OhlcvApi.md#v1_ohlcv_periods_get) | **GET** /v1/ohlcv/periods | List all periods |


## v1_ohlcv_exchange_exchange_id_history_get

> <Array<OHLCVTimeSeriesExchangeTimeseriesItem>> v1_ohlcv_exchange_exchange_id_history_get(exchange_id, period_id, time_start, time_end, opts)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OhlcvApi.new
exchange_id = 'exchange_id_example' # String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
period_id = 'period_id_example' # String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
time_start = 'time_start_example' # String | Timeseries starting time in ISO 8601
time_end = 'time_end_example' # String | Timeseries ending time in ISO 8601
opts = {
  limit: 56 # Integer | Maximum number of symbol rows to return (1-10000, default 100)
}

begin
  # Historical data by exchange
  result = api_instance.v1_ohlcv_exchange_exchange_id_history_get(exchange_id, period_id, time_start, time_end, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OhlcvApi->v1_ohlcv_exchange_exchange_id_history_get: #{e}"
end
```

#### Using the v1_ohlcv_exchange_exchange_id_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OHLCVTimeSeriesExchangeTimeseriesItem>>, Integer, Hash)> v1_ohlcv_exchange_exchange_id_history_get_with_http_info(exchange_id, period_id, time_start, time_end, opts)

```ruby
begin
  # Historical data by exchange
  data, status_code, headers = api_instance.v1_ohlcv_exchange_exchange_id_history_get_with_http_info(exchange_id, period_id, time_start, time_end, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OHLCVTimeSeriesExchangeTimeseriesItem>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OhlcvApi->v1_ohlcv_exchange_exchange_id_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) |  |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) |  |
| **time_start** | **String** | Timeseries starting time in ISO 8601 |  |
| **time_end** | **String** | Timeseries ending time in ISO 8601 |  |
| **limit** | **Integer** | Maximum number of symbol rows to return (1-10000, default 100) | [optional][default to 100] |

### Return type

[**Array&lt;OHLCVTimeSeriesExchangeTimeseriesItem&gt;**](OHLCVTimeSeriesExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get

> <Array<OHLCVTimeSeriesTimeseriesItem>> v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get(exchange_id, symbol_id, period_id, opts)

Historical data

Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OhlcvApi.new
exchange_id = 'exchange_id_example' # String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
symbol_id = 'symbol_id_example' # String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
period_id = 'period_id_example' # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
opts = {
  time_start: 'time_start_example', # String | Timeseries starting time in ISO 8601
  time_end: 'time_end_example', # String | Timeseries ending time in ISO 8601
  limit: 56 # Integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Historical data
  result = api_instance.v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get(exchange_id, symbol_id, period_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OhlcvApi->v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get: #{e}"
end
```

#### Using the v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OHLCVTimeSeriesTimeseriesItem>>, Integer, Hash)> v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get_with_http_info(exchange_id, symbol_id, period_id, opts)

```ruby
begin
  # Historical data
  data, status_code, headers = api_instance.v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get_with_http_info(exchange_id, symbol_id, period_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OHLCVTimeSeriesTimeseriesItem>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OhlcvApi->v1_ohlcv_exchange_symbol_exchange_id_symbol_id_history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) |  |
| **symbol_id** | **String** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |  |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) |  |
| **time_start** | **String** | Timeseries starting time in ISO 8601 | [optional] |
| **time_end** | **String** | Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **Integer** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;OHLCVTimeSeriesTimeseriesItem&gt;**](OHLCVTimeSeriesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get

> <Array<OHLCVTimeSeriesTimeseriesItem>> v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get(exchange_id, symbol_id, period_id, opts)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OhlcvApi.new
exchange_id = 'exchange_id_example' # String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
symbol_id = 'symbol_id_example' # String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
period_id = 'period_id_example' # String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
opts = {
  limit: 56 # Integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
}

begin
  # Latest data
  result = api_instance.v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get(exchange_id, symbol_id, period_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OhlcvApi->v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get: #{e}"
end
```

#### Using the v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OHLCVTimeSeriesTimeseriesItem>>, Integer, Hash)> v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get_with_http_info(exchange_id, symbol_id, period_id, opts)

```ruby
begin
  # Latest data
  data, status_code, headers = api_instance.v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get_with_http_info(exchange_id, symbol_id, period_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OHLCVTimeSeriesTimeseriesItem>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OhlcvApi->v1_ohlcv_exchange_symbol_exchange_id_symbol_id_latest_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) |  |
| **symbol_id** | **String** | Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |  |
| **period_id** | **String** | Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) |  |
| **limit** | **Integer** | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional][default to 100] |

### Return type

[**Array&lt;OHLCVTimeSeriesTimeseriesItem&gt;**](OHLCVTimeSeriesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## v1_ohlcv_periods_get

> <Array<OHLCVTimeSeriesTimeseriesPeriod>> v1_ohlcv_periods_get

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: APIKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OhlcvApi.new

begin
  # List all periods
  result = api_instance.v1_ohlcv_periods_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OhlcvApi->v1_ohlcv_periods_get: #{e}"
end
```

#### Using the v1_ohlcv_periods_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OHLCVTimeSeriesTimeseriesPeriod>>, Integer, Hash)> v1_ohlcv_periods_get_with_http_info

```ruby
begin
  # List all periods
  data, status_code, headers = api_instance.v1_ohlcv_periods_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OHLCVTimeSeriesTimeseriesPeriod>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OhlcvApi->v1_ohlcv_periods_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;OHLCVTimeSeriesTimeseriesPeriod&gt;**](OHLCVTimeSeriesTimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

