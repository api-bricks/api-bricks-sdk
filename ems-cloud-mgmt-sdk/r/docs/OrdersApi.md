# OrdersApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrdersCancelAllPost**](OrdersApi.md#V1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**V1OrdersCancelPost**](OrdersApi.md#V1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**V1OrdersGet**](OrdersApi.md#V1OrdersGet) | **GET** /v1/orders | Get open orders
[**V1OrdersHistoryTimeStartTimeEndGet**](OrdersApi.md#V1OrdersHistoryTimeStartTimeEndGet) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
[**V1OrdersPost**](OrdersApi.md#V1OrdersPost) | **POST** /v1/orders | Send new order
[**V1OrdersStatusClientOrderIdGet**](OrdersApi.md#V1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


# **V1OrdersCancelAllPost**
> MessageReject V1OrdersCancelAllPost(order_cancel_all_request)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example
```R
library(openapi)

# Cancel all orders request
#
# prepare function argument(s)
var_order_cancel_all_request <- OrderCancelAllRequest$new("exchange_id_example") # OrderCancelAllRequest | OrderCancelAllRequest object.

api_instance <- OrdersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrdersCancelAllPost(var_order_cancel_all_requestdata_file = "result.txt")
result <- api_instance$V1OrdersCancelAllPost(var_order_cancel_all_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_all_request** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. | 

### Return type

[**MessageReject**](MessageReject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |

# **V1OrdersCancelPost**
> OrderExecutionReport V1OrdersCancelPost(order_cancel_single_request)

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example
```R
library(openapi)

# Cancel order request
#
# prepare function argument(s)
var_order_cancel_single_request <- OrderCancelSingleRequest$new("exchange_id_example", "exchange_order_id_example", "client_order_id_example") # OrderCancelSingleRequest | OrderCancelSingleRequest object.

api_instance <- OrdersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrdersCancelPost(var_order_cancel_single_requestdata_file = "result.txt")
result <- api_instance$V1OrdersCancelPost(var_order_cancel_single_request)
dput(result)
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
| **200** | The last execution report for the order for which cancelation was requested. |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |

# **V1OrdersGet**
> array[OrderExecutionReport] V1OrdersGet(exchange_id = var.exchange_id)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example
```R
library(openapi)

# Get open orders
#
# prepare function argument(s)
var_exchange_id <- "KRAKEN" # character | Filter the open orders to the specific exchange. (Optional)

api_instance <- OrdersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrdersGet(exchange_id = var_exchange_iddata_file = "result.txt")
result <- api_instance$V1OrdersGet(exchange_id = var_exchange_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **character**| Filter the open orders to the specific exchange. | [optional] 

### Return type

[**array[OrderExecutionReport]**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of order execution reports. |  -  |
| **490** | Filtered exchange is unreachable. |  -  |

# **V1OrdersHistoryTimeStartTimeEndGet**
> array[OrderHistory] V1OrdersHistoryTimeStartTimeEndGet(time_start, time_end)

History of order changes

Based on the date range, all changes registered in the orderbook.

### Example
```R
library(openapi)

# History of order changes
#
# prepare function argument(s)
var_time_start <- "2022-05-01T00:00:00" # character | Start date
var_time_end <- "2022-05-01T12:00:00" # character | End date

api_instance <- OrdersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrdersHistoryTimeStartTimeEndGet(var_time_start, var_time_enddata_file = "result.txt")
result <- api_instance$V1OrdersHistoryTimeStartTimeEndGet(var_time_start, var_time_end)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_start** | **character**| Start date | 
 **time_end** | **character**| End date | 

### Return type

[**array[OrderHistory]**](OrderHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The last execution report of the requested order. |  -  |
| **400** | Orders log is not configured. |  -  |

# **V1OrdersPost**
> OrderExecutionReport V1OrdersPost(order_new_single_request)

Send new order

This request creating new order for the specific exchange.

### Example
```R
library(openapi)

# Send new order
#
# prepare function argument(s)
var_order_new_single_request <- OrderNewSingleRequest$new("exchange_id_example", "client_order_id_example", 123, 123, OrdSide$new(), OrdType$new(), TimeInForce$new(), "symbol_id_exchange_example", "symbol_id_coinapi_example", "expire_time_example", c("MAKER_OR_CANCEL")) # OrderNewSingleRequest | OrderNewSingleRequest object.

api_instance <- OrdersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrdersPost(var_order_new_single_requestdata_file = "result.txt")
result <- api_instance$V1OrdersPost(var_order_new_single_request)
dput(result)
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
| **200** | Created |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |
| **504** | Exchange didn&#39;t responded in the defined timeout. |  -  |

# **V1OrdersStatusClientOrderIdGet**
> OrderExecutionReport V1OrdersStatusClientOrderIdGet(client_order_id)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example
```R
library(openapi)

# Get order execution report
#
# prepare function argument(s)
var_client_order_id <- "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b" # character | The unique identifier of the order assigned by the client.

api_instance <- OrdersApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1OrdersStatusClientOrderIdGet(var_client_order_iddata_file = "result.txt")
result <- api_instance$V1OrdersStatusClientOrderIdGet(var_client_order_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **character**| The unique identifier of the order assigned by the client. | 

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
| **200** | The last execution report of the requested order. |  -  |
| **404** | The requested order was not found. |  -  |

