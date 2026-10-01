# api_bricks_stock_api_rest.NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_native_iex_admin_messages_symbol_get**](NativeIEXApi.md#v1_native_iex_admin_messages_symbol_get) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1_native_iex_admin_system_event_get**](NativeIEXApi.md#v1_native_iex_admin_system_event_get) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1_native_iex_level1_quote_symbol_get**](NativeIEXApi.md#v1_native_iex_level1_quote_symbol_get) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1_native_iex_level2_price_level_update_symbol_get**](NativeIEXApi.md#v1_native_iex_level2_price_level_update_symbol_get) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1_native_iex_level3_order_book_symbol_get**](NativeIEXApi.md#v1_native_iex_level3_order_book_symbol_get) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1_native_iex_trade_symbol_get**](NativeIEXApi.md#v1_native_iex_trade_symbol_get) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **v1_native_iex_admin_messages_symbol_get**
> List[ModelsAdminMessageModel] v1_native_iex_admin_messages_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)

Get Admin Messages

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.models_admin_message_model import ModelsAdminMessageModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
    time_start = 'time_start_example' # str | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
    limit = 56 # int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

    try:
        # Get Admin Messages
        api_response = api_instance.v1_native_iex_admin_messages_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)
        print("The response of NativeIEXApi->v1_native_iex_admin_messages_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_admin_messages_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **str**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List[ModelsAdminMessageModel]**](ModelsAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_admin_system_event_get**
> List[IEXSystemEventSystemEventModel] v1_native_iex_admin_system_event_get(var_date=var_date, time_start=time_start, limit=limit)

Get System Events

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.iex_system_event_system_event_model import IEXSystemEventSystemEventModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    var_date = '2013-10-20T19:20:30+01:00' # datetime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
    time_start = 'time_start_example' # str | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
    limit = 56 # int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

    try:
        # Get System Events
        api_response = api_instance.v1_native_iex_admin_system_event_get(var_date=var_date, time_start=time_start, limit=limit)
        print("The response of NativeIEXApi->v1_native_iex_admin_system_event_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_admin_system_event_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_date** | **datetime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **str**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List[IEXSystemEventSystemEventModel]**](IEXSystemEventSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level1_quote_symbol_get**
> List[IEXQuoteUpdateQuoteUpdateModel] v1_native_iex_level1_quote_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)

Get Level-1 Quotes

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.iex_quote_update_quote_update_model import IEXQuoteUpdateQuoteUpdateModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
    time_start = 'time_start_example' # str | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
    limit = 56 # int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

    try:
        # Get Level-1 Quotes
        api_response = api_instance.v1_native_iex_level1_quote_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)
        print("The response of NativeIEXApi->v1_native_iex_level1_quote_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_level1_quote_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **str**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List[IEXQuoteUpdateQuoteUpdateModel]**](IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level2_price_level_update_symbol_get**
> List[IEXPriceLevelUpdatePriceLevelUpdateModel] v1_native_iex_level2_price_level_update_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)

Get Level-2 Price Level Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.iex_price_level_update_price_level_update_model import IEXPriceLevelUpdatePriceLevelUpdateModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
    time_start = 'time_start_example' # str | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
    limit = 56 # int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

    try:
        # Get Level-2 Price Level Book
        api_response = api_instance.v1_native_iex_level2_price_level_update_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)
        print("The response of NativeIEXApi->v1_native_iex_level2_price_level_update_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_level2_price_level_update_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **str**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List[IEXPriceLevelUpdatePriceLevelUpdateModel]**](IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level3_order_book_symbol_get**
> List[ModelsOrderBookModel] v1_native_iex_level3_order_book_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)

Get Level-3 Order Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.models_order_book_model import ModelsOrderBookModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
    time_start = 'time_start_example' # str | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
    limit = 56 # int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

    try:
        # Get Level-3 Order Book
        api_response = api_instance.v1_native_iex_level3_order_book_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)
        print("The response of NativeIEXApi->v1_native_iex_level3_order_book_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_level3_order_book_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **str**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List[ModelsOrderBookModel]**](ModelsOrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_trade_symbol_get**
> List[IEXTradeTradeModel] v1_native_iex_trade_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)

Get Trades

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example

* Api Key Authentication (APIKey):
* Bearer (JWT) Authentication (JWT):

```python
import api_bricks_stock_api_rest
from api_bricks_stock_api_rest.models.iex_trade_trade_model import IEXTradeTradeModel
from api_bricks_stock_api_rest.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api-historical.stock.finfeedapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = api_bricks_stock_api_rest.Configuration(
    host = "https://api-historical.stock.finfeedapi.com"
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
configuration = api_bricks_stock_api_rest.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with api_bricks_stock_api_rest.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_bricks_stock_api_rest.NativeIEXApi(api_client)
    symbol = 'symbol_example' # str | The symbol identifier
    var_date = '2013-10-20T19:20:30+01:00' # datetime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (optional)
    time_start = 'time_start_example' # str | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (optional)
    limit = 56 # int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (optional)

    try:
        # Get Trades
        api_response = api_instance.v1_native_iex_trade_symbol_get(symbol, var_date=var_date, time_start=time_start, limit=limit)
        print("The response of NativeIEXApi->v1_native_iex_trade_symbol_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NativeIEXApi->v1_native_iex_trade_symbol_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **str**| The symbol identifier | 
 **var_date** | **datetime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **str**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List[IEXTradeTradeModel]**](IEXTradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

