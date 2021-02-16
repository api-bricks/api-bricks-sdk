# openapi_client.OrdersApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order request
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get open orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Send new order
[**v1_orders_status_client_order_id_get**](OrdersApi.md#v1_orders_status_client_order_id_get) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


# **v1_orders_cancel_all_post**
> Message v1_orders_cancel_all_post(order_cancel_all_request)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example

```python
import time
import openapi_client
from openapi_client.api import orders_api
from openapi_client.model.validation_error import ValidationError
from openapi_client.model.order_cancel_all_request import OrderCancelAllRequest
from openapi_client.model.message import Message
from pprint import pprint
# Defining the host is optional and defaults to https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)
    order_cancel_all_request = OrderCancelAllRequest(
        exchange_id="KRAKEN",
    ) # OrderCancelAllRequest | OrderCancelAllRequest object.

    # example passing only required values which don't have defaults set
    try:
        # Cancel all orders request
        api_response = api_instance.v1_orders_cancel_all_post(order_cancel_all_request)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_cancel_all_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_all_request** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. |

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Result |  -  |
**400** | Input model validation errors. |  -  |
**490** | Exchange is unreachable. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_cancel_post**
> OrderExecutionReport v1_orders_cancel_post(order_cancel_single_request)

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example

```python
import time
import openapi_client
from openapi_client.api import orders_api
from openapi_client.model.order_cancel_single_request import OrderCancelSingleRequest
from openapi_client.model.validation_error import ValidationError
from openapi_client.model.message import Message
from openapi_client.model.order_execution_report import OrderExecutionReport
from pprint import pprint
# Defining the host is optional and defaults to https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)
    order_cancel_single_request = OrderCancelSingleRequest(
        exchange_id="KRAKEN",
        exchange_order_id="3456456754",
        client_order_id="6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
    ) # OrderCancelSingleRequest | OrderCancelSingleRequest object.

    # example passing only required values which don't have defaults set
    try:
        # Cancel order request
        api_response = api_instance.v1_orders_cancel_post(order_cancel_single_request)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_cancel_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_single_request** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The last execution report for the order for which cancelation was requested. |  -  |
**400** | Input model validation errors. |  -  |
**490** | Exchange is unreachable. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_get**
> OrderExecutionReports v1_orders_get()

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example

```python
import time
import openapi_client
from openapi_client.api import orders_api
from openapi_client.model.order_execution_reports import OrderExecutionReports
from openapi_client.model.message import Message
from pprint import pprint
# Defining the host is optional and defaults to https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)
    exchange_id = "KRAKEN" # str | Filter the open orders to the specific exchange. (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get open orders
        api_response = api_instance.v1_orders_get(exchange_id=exchange_id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **str**| Filter the open orders to the specific exchange. | [optional]

### Return type

[**OrderExecutionReports**](OrderExecutionReports.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Collection of order execution reports. |  -  |
**490** | Filtered exchange is unreachable. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_post**
> OrderExecutionReport v1_orders_post(order_new_single_request)

Send new order

This request creating new order for the specific exchange.

### Example

```python
import time
import openapi_client
from openapi_client.api import orders_api
from openapi_client.model.order_new_single_request import OrderNewSingleRequest
from openapi_client.model.validation_error import ValidationError
from openapi_client.model.message import Message
from openapi_client.model.order_execution_report import OrderExecutionReport
from pprint import pprint
# Defining the host is optional and defaults to https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)
    order_new_single_request = OrderNewSingleRequest(
        exchange_id="KRAKEN",
        client_order_id="6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
        symbol_id_exchange="XBT/USDT",
        symbol_id_coinapi="KRAKEN_SPOT_BTC_USDT",
        amount_order=0.045,
        price=0.0783,
        side=OrdSide("BUY"),
        order_type=OrdType("LIMIT"),
        time_in_force=TimeInForce("GOOD_TILL_CANCEL"),
2020-01-01T10:45:20.1677709Z,
        exec_inst=ExecInst(["MAKER_OR_CANCEL"],
    ) # OrderNewSingleRequest | OrderNewSingleRequest object.

    # example passing only required values which don't have defaults set
    try:
        # Send new order
        api_response = api_instance.v1_orders_post(order_new_single_request)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_new_single_request** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Created |  -  |
**400** | Input model validation errors. |  -  |
**490** | Exchange is unreachable. |  -  |
**504** | Exchange didn&#39;t responded in the defined timeout. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_orders_status_client_order_id_get**
> OrderExecutionReport v1_orders_status_client_order_id_get(client_order_id)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example

```python
import time
import openapi_client
from openapi_client.api import orders_api
from openapi_client.model.message import Message
from openapi_client.model.order_execution_report import OrderExecutionReport
from pprint import pprint
# Defining the host is optional and defaults to https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)
    client_order_id = "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b" # str | The unique identifier of the order assigned by the client.

    # example passing only required values which don't have defaults set
    try:
        # Get order execution report
        api_response = api_instance.v1_orders_status_client_order_id_get(client_order_id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_status_client_order_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **str**| The unique identifier of the order assigned by the client. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The last execution report of the requested order. |  -  |
**404** | The requested order was not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

