# api_bricks_coinapi_market_data_api_rest.OHLCVApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_ohlcv_exchanges_exchange_id_history_get**](OHLCVApi.md#v1_ohlcv_exchanges_exchange_id_history_get) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**v1_ohlcv_periods_get**](OHLCVApi.md#v1_ohlcv_periods_get) | **GET** /v1/ohlcv/periods | List all periods
[**v1_ohlcv_symbol_id_history_get**](OHLCVApi.md#v1_ohlcv_symbol_id_history_get) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**v1_ohlcv_symbol_id_latest_get**](OHLCVApi.md#v1_ohlcv_symbol_id_latest_get) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data


# **v1_ohlcv_exchanges_exchange_id_history_get**
> List[OhlcvExchangeTimeseriesItem] v1_ohlcv_exchanges_exchange_id_history_get(exchange_id, period_id, time_start, time_end)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
The difference between `time_end` and `time_start` cannot be higher than 1 day.
The `period_id` cannot be higher than `1DAY`.
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.ohlcv_exchange_timeseries_item import OhlcvExchangeTimeseriesItem
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.OHLCVApi(api_client)
    exchange_id = 'exchange_id_example' # str | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
    time_start = 'time_start_example' # str | Timeseries starting time in ISO 8601
    time_end = 'time_end_example' # str | Timeseries ending time in ISO 8601

    try:
        # Historical data by exchange
        api_response = api_instance.v1_ohlcv_exchanges_exchange_id_history_get(exchange_id, period_id, time_start, time_end)
        print("The response of OHLCVApi->v1_ohlcv_exchanges_exchange_id_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OHLCVApi->v1_ohlcv_exchanges_exchange_id_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | 
 **time_start** | **str**| Timeseries starting time in ISO 8601 | 
 **time_end** | **str**| Timeseries ending time in ISO 8601 | 

### Return type

[**List[OhlcvExchangeTimeseriesItem]**](OhlcvExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_periods_get**
> List[V1TimeseriesPeriod] v1_ohlcv_periods_get()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_timeseries_period import V1TimeseriesPeriod
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.OHLCVApi(api_client)

    try:
        # List all periods
        api_response = api_instance.v1_ohlcv_periods_get()
        print("The response of OHLCVApi->v1_ohlcv_periods_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OHLCVApi->v1_ohlcv_periods_get: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[V1TimeseriesPeriod]**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_symbol_id_history_get**
> List[V1TimeseriesItem] v1_ohlcv_symbol_id_history_get(symbol_id, period_id, time_start=time_start, time_end=time_end, limit=limit)

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data
If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.
            
:::info
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_timeseries_item import V1TimeseriesItem
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.OHLCVApi(api_client)
    symbol_id = 'symbol_id_example' # str | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
    time_start = 'time_start_example' # str | Timeseries starting time in ISO 8601 (optional)
    time_end = 'time_end_example' # str | Timeseries ending time in ISO 8601 (optional)
    limit = 100 # int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Historical data
        api_response = api_instance.v1_ohlcv_symbol_id_history_get(symbol_id, period_id, time_start=time_start, time_end=time_end, limit=limit)
        print("The response of OHLCVApi->v1_ohlcv_symbol_id_history_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OHLCVApi->v1_ohlcv_symbol_id_history_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **time_start** | **str**| Timeseries starting time in ISO 8601 | [optional] 
 **time_end** | **str**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1TimeseriesItem]**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_ohlcv_symbol_id_latest_get**
> List[V1TimeseriesItem] v1_ohlcv_symbol_id_latest_get(symbol_id, period_id, limit=limit)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data
            
:::info
OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters. 
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_coinapi_market_data_api_rest
from api_bricks_coinapi_market_data_api_rest.models.v1_timeseries_item import V1TimeseriesItem
from api_bricks_coinapi_market_data_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://rest.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    host = "https://rest.coinapi.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKey
configuration.api_key['APIKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKey'] = 'Bearer'

# Configure Bearer authorization (JWT): JWT
configuration = api_bricks_coinapi_market_data_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_coinapi_market_data_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_coinapi_market_data_api_rest.OHLCVApi(api_client)
    symbol_id = 'symbol_id_example' # str | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
    period_id = 'period_id_example' # str | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
    limit = 100 # int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) (optional) (default to 100)

    try:
        # Latest data
        api_response = api_instance.v1_ohlcv_symbol_id_latest_get(symbol_id, period_id, limit=limit)
        print("The response of OHLCVApi->v1_ohlcv_symbol_id_latest_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OHLCVApi->v1_ohlcv_symbol_id_latest_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | 
 **period_id** | **str**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | 
 **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List[V1TimeseriesItem]**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

