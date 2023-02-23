# OrdersAPI

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrdersAPI_v1OrdersCancelAllPost**](OrdersAPI.md#OrdersAPI_v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**OrdersAPI_v1OrdersCancelPost**](OrdersAPI.md#OrdersAPI_v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**OrdersAPI_v1OrdersGet**](OrdersAPI.md#OrdersAPI_v1OrdersGet) | **GET** /v1/orders | Get open orders
[**OrdersAPI_v1OrdersHistoryTimeStartTimeEndGet**](OrdersAPI.md#OrdersAPI_v1OrdersHistoryTimeStartTimeEndGet) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
[**OrdersAPI_v1OrdersPost**](OrdersAPI.md#OrdersAPI_v1OrdersPost) | **POST** /v1/orders | Send new order
[**OrdersAPI_v1OrdersStatusClientOrderIdGet**](OrdersAPI.md#OrdersAPI_v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


# **OrdersAPI_v1OrdersCancelAllPost**
```c
// Cancel all orders request
//
// This request cancels all open orders on single specified exchange.
//
message_reject_t* OrdersAPI_v1OrdersCancelAllPost(apiClient_t *apiClient, order_cancel_all_request_t * order_cancel_all_request);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**order_cancel_all_request** | **[order_cancel_all_request_t](order_cancel_all_request.md) \*** | OrderCancelAllRequest object. | 

### Return type

[message_reject_t](message_reject.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrdersAPI_v1OrdersCancelPost**
```c
// Cancel order request
//
// Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
//
order_execution_report_t* OrdersAPI_v1OrdersCancelPost(apiClient_t *apiClient, order_cancel_single_request_t * order_cancel_single_request);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**order_cancel_single_request** | **[order_cancel_single_request_t](order_cancel_single_request.md) \*** | OrderCancelSingleRequest object. | 

### Return type

[order_execution_report_t](order_execution_report.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrdersAPI_v1OrdersGet**
```c
// Get open orders
//
// Get last execution reports for open orders across all or single exchange.
//
list_t* OrdersAPI_v1OrdersGet(apiClient_t *apiClient, char * exchange_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**exchange_id** | **char \*** | Filter the open orders to the specific exchange. | [optional] 

### Return type

[list_t](order_execution_report.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrdersAPI_v1OrdersHistoryTimeStartTimeEndGet**
```c
// History of order changes
//
// Based on the date range, all changes registered in the orderbook.
//
list_t* OrdersAPI_v1OrdersHistoryTimeStartTimeEndGet(apiClient_t *apiClient, char * time_start, char * time_end);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**time_start** | **char \*** | Start date | 
**time_end** | **char \*** | End date | 

### Return type

[list_t](order_history.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrdersAPI_v1OrdersPost**
```c
// Send new order
//
// This request creating new order for the specific exchange.
//
order_execution_report_t* OrdersAPI_v1OrdersPost(apiClient_t *apiClient, order_new_single_request_t * order_new_single_request);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**order_new_single_request** | **[order_new_single_request_t](order_new_single_request.md) \*** | OrderNewSingleRequest object. | 

### Return type

[order_execution_report_t](order_execution_report.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OrdersAPI_v1OrdersStatusClientOrderIdGet**
```c
// Get order execution report
//
// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
//
order_execution_report_t* OrdersAPI_v1OrdersStatusClientOrderIdGet(apiClient_t *apiClient, char * client_order_id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**client_order_id** | **char \*** | The unique identifier of the order assigned by the client. | 

### Return type

[order_execution_report_t](order_execution_report.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

