<a name="__pageTop"></a>
# openapi_client.apis.tags.orders_api.OrdersApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](#v1_orders_cancel_all_post) | **post** /v1/orders/cancel/all | Cancel all orders request
[**v1_orders_cancel_post**](#v1_orders_cancel_post) | **post** /v1/orders/cancel | Cancel order request
[**v1_orders_get**](#v1_orders_get) | **get** /v1/orders | Get open orders
[**v1_orders_history_time_start_time_end_get**](#v1_orders_history_time_start_time_end_get) | **get** /v1/orders/history/{time_start}/{time_end} | History of order changes
[**v1_orders_post**](#v1_orders_post) | **post** /v1/orders | Send new order
[**v1_orders_status_client_order_id_get**](#v1_orders_status_client_order_id_get) | **get** /v1/orders/status/{client_order_id} | Get order execution report

# **v1_orders_cancel_all_post**
<a name="v1_orders_cancel_all_post"></a>
> MessageReject v1_orders_cancel_all_post(order_cancel_all_request)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example

```python
import openapi_client
from openapi_client.apis.tags import orders_api
from openapi_client.model.validation_error import ValidationError
from openapi_client.model.order_cancel_all_request import OrderCancelAllRequest
from openapi_client.model.message_reject import MessageReject
from pprint import pprint
# Defining the host is optional and defaults to https://ems-gateway-aws-eu-central-1-dev.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)

    # example passing only required values which don't have defaults set
    body = OrderCancelAllRequest(
        exchange_id="KRAKEN",
    )
    try:
        # Cancel all orders request
        api_response = api_instance.v1_orders_cancel_all_post(
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_cancel_all_post: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', 'appliction/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OrderCancelAllRequest**](../../models/OrderCancelAllRequest.md) |  | 


### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#v1_orders_cancel_all_post.ApiResponseFor200) | Result
400 | [ApiResponseFor400](#v1_orders_cancel_all_post.ApiResponseFor400) | Input model validation errors.
490 | [ApiResponseFor490](#v1_orders_cancel_all_post.ApiResponseFor490) | Exchange is unreachable.

#### v1_orders_cancel_all_post.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageReject**](../../models/MessageReject.md) |  | 


#### v1_orders_cancel_all_post.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ValidationError**](../../models/ValidationError.md) |  | 


#### v1_orders_cancel_all_post.ApiResponseFor490
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor490ResponseBodyApplictionJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor490ResponseBodyApplictionJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageReject**](../../models/MessageReject.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **v1_orders_cancel_post**
<a name="v1_orders_cancel_post"></a>
> OrderExecutionReport v1_orders_cancel_post(order_cancel_single_request)

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example

```python
import openapi_client
from openapi_client.apis.tags import orders_api
from openapi_client.model.order_cancel_single_request import OrderCancelSingleRequest
from openapi_client.model.validation_error import ValidationError
from openapi_client.model.order_execution_report import OrderExecutionReport
from openapi_client.model.message_reject import MessageReject
from pprint import pprint
# Defining the host is optional and defaults to https://ems-gateway-aws-eu-central-1-dev.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)

    # example passing only required values which don't have defaults set
    body = OrderCancelSingleRequest(
        exchange_id="KRAKEN",
        exchange_order_id="3456456754",
        client_order_id="6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
    )
    try:
        # Cancel order request
        api_response = api_instance.v1_orders_cancel_post(
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_cancel_post: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', 'appliction/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OrderCancelSingleRequest**](../../models/OrderCancelSingleRequest.md) |  | 


### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#v1_orders_cancel_post.ApiResponseFor200) | The last execution report for the order for which cancelation was requested.
400 | [ApiResponseFor400](#v1_orders_cancel_post.ApiResponseFor400) | Input model validation errors.
490 | [ApiResponseFor490](#v1_orders_cancel_post.ApiResponseFor490) | Exchange is unreachable.

#### v1_orders_cancel_post.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OrderExecutionReport**](../../models/OrderExecutionReport.md) |  | 


#### v1_orders_cancel_post.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ValidationError**](../../models/ValidationError.md) |  | 


#### v1_orders_cancel_post.ApiResponseFor490
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor490ResponseBodyApplictionJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor490ResponseBodyApplictionJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageReject**](../../models/MessageReject.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **v1_orders_get**
<a name="v1_orders_get"></a>
> OrderExecutionReports v1_orders_get()

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example

```python
import openapi_client
from openapi_client.apis.tags import orders_api
from openapi_client.model.order_execution_reports import OrderExecutionReports
from openapi_client.model.message_reject import MessageReject
from pprint import pprint
# Defining the host is optional and defaults to https://ems-gateway-aws-eu-central-1-dev.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)

    # example passing only optional values
    query_params = {
        'exchange_id': "KRAKEN",
    }
    try:
        # Get open orders
        api_response = api_instance.v1_orders_get(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', 'appliction/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
exchange_id | ExchangeIdSchema | | optional


# ExchangeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#v1_orders_get.ApiResponseFor200) | Collection of order execution reports.
490 | [ApiResponseFor490](#v1_orders_get.ApiResponseFor490) | Filtered exchange is unreachable.

#### v1_orders_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OrderExecutionReports**](../../models/OrderExecutionReports.md) |  | 


#### v1_orders_get.ApiResponseFor490
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor490ResponseBodyApplictionJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor490ResponseBodyApplictionJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageReject**](../../models/MessageReject.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **v1_orders_history_time_start_time_end_get**
<a name="v1_orders_history_time_start_time_end_get"></a>
> OrderHistoryArray v1_orders_history_time_start_time_end_get(time_starttime_end)

History of order changes

Based on the date range, all changes registered in the orderbook.

### Example

```python
import openapi_client
from openapi_client.apis.tags import orders_api
from openapi_client.model.order_history_array import OrderHistoryArray
from openapi_client.model.message_error import MessageError
from pprint import pprint
# Defining the host is optional and defaults to https://ems-gateway-aws-eu-central-1-dev.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'time_start': "2022-05-01T00:00:00",
        'time_end': "2022-05-01T12:00:00",
    }
    try:
        # History of order changes
        api_response = api_instance.v1_orders_history_time_start_time_end_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_history_time_start_time_end_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
time_start | TimeStartSchema | | 
time_end | TimeEndSchema | | 

# TimeStartSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# TimeEndSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#v1_orders_history_time_start_time_end_get.ApiResponseFor200) | The last execution report of the requested order.
400 | [ApiResponseFor400](#v1_orders_history_time_start_time_end_get.ApiResponseFor400) | Orders log is not configured.

#### v1_orders_history_time_start_time_end_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OrderHistoryArray**](../../models/OrderHistoryArray.md) |  | 


#### v1_orders_history_time_start_time_end_get.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageError**](../../models/MessageError.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **v1_orders_post**
<a name="v1_orders_post"></a>
> OrderExecutionReport v1_orders_post(order_new_single_request)

Send new order

This request creating new order for the specific exchange.

### Example

```python
import openapi_client
from openapi_client.apis.tags import orders_api
from openapi_client.model.order_new_single_request import OrderNewSingleRequest
from openapi_client.model.validation_error import ValidationError
from openapi_client.model.order_execution_report import OrderExecutionReport
from openapi_client.model.message_reject import MessageReject
from pprint import pprint
# Defining the host is optional and defaults to https://ems-gateway-aws-eu-central-1-dev.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)

    # example passing only required values which don't have defaults set
    body = OrderNewSingleRequest(
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
        exec_inst=ExecInst(["MAKER_OR_CANCEL"]),
    )
    try:
        # Send new order
        api_response = api_instance.v1_orders_post(
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_post: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', 'appliction/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OrderNewSingleRequest**](../../models/OrderNewSingleRequest.md) |  | 


### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#v1_orders_post.ApiResponseFor200) | Created
400 | [ApiResponseFor400](#v1_orders_post.ApiResponseFor400) | Input model validation errors.
490 | [ApiResponseFor490](#v1_orders_post.ApiResponseFor490) | Exchange is unreachable.
504 | [ApiResponseFor504](#v1_orders_post.ApiResponseFor504) | Exchange didn&#x27;t responded in the defined timeout.

#### v1_orders_post.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OrderExecutionReport**](../../models/OrderExecutionReport.md) |  | 


#### v1_orders_post.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ValidationError**](../../models/ValidationError.md) |  | 


#### v1_orders_post.ApiResponseFor490
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor490ResponseBodyApplictionJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor490ResponseBodyApplictionJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageReject**](../../models/MessageReject.md) |  | 


#### v1_orders_post.ApiResponseFor504
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor504ResponseBodyApplictionJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor504ResponseBodyApplictionJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageReject**](../../models/MessageReject.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **v1_orders_status_client_order_id_get**
<a name="v1_orders_status_client_order_id_get"></a>
> OrderExecutionReport v1_orders_status_client_order_id_get(client_order_id)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example

```python
import openapi_client
from openapi_client.apis.tags import orders_api
from openapi_client.model.order_execution_report import OrderExecutionReport
from openapi_client.model.message_reject import MessageReject
from pprint import pprint
# Defining the host is optional and defaults to https://ems-gateway-aws-eu-central-1-dev.coinapi.io
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = orders_api.OrdersApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'client_order_id': "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b",
    }
    try:
        # Get order execution report
        api_response = api_instance.v1_orders_status_client_order_id_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OrdersApi->v1_orders_status_client_order_id_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
client_order_id | ClientOrderIdSchema | | 

# ClientOrderIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#v1_orders_status_client_order_id_get.ApiResponseFor200) | The last execution report of the requested order.
404 | [ApiResponseFor404](#v1_orders_status_client_order_id_get.ApiResponseFor404) | The requested order was not found.

#### v1_orders_status_client_order_id_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OrderExecutionReport**](../../models/OrderExecutionReport.md) |  | 


#### v1_orders_status_client_order_id_get.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**MessageReject**](../../models/MessageReject.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

