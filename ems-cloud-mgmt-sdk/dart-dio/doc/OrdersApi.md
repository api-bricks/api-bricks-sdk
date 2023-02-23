# openapi.api.OrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1orderscancelallpost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelPost**](OrdersApi.md#v1orderscancelpost) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersGet**](OrdersApi.md#v1ordersget) | **GET** /v1/orders | Get open orders
[**v1OrdersHistoryTimeStartTimeEndGet**](OrdersApi.md#v1ordershistorytimestarttimeendget) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
[**v1OrdersPost**](OrdersApi.md#v1orderspost) | **POST** /v1/orders | Send new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1ordersstatusclientorderidget) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


# **v1OrdersCancelAllPost**
> MessageReject v1OrdersCancelAllPost(orderCancelAllRequest)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final OrderCancelAllRequest orderCancelAllRequest = ; // OrderCancelAllRequest | OrderCancelAllRequest object.

try {
    final response = api.v1OrdersCancelAllPost(orderCancelAllRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrdersApi->v1OrdersCancelAllPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. | 

### Return type

[**MessageReject**](MessageReject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersCancelPost**
> OrderExecutionReport v1OrdersCancelPost(orderCancelSingleRequest)

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final OrderCancelSingleRequest orderCancelSingleRequest = ; // OrderCancelSingleRequest | OrderCancelSingleRequest object.

try {
    final response = api.v1OrdersCancelPost(orderCancelSingleRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrdersApi->v1OrdersCancelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersGet**
> BuiltList<OrderExecutionReport> v1OrdersGet(exchangeId)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final String exchangeId = KRAKEN; // String | Filter the open orders to the specific exchange.

try {
    final response = api.v1OrdersGet(exchangeId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrdersApi->v1OrdersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the open orders to the specific exchange. | [optional] 

### Return type

[**BuiltList&lt;OrderExecutionReport&gt;**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersHistoryTimeStartTimeEndGet**
> BuiltList<OrderHistory> v1OrdersHistoryTimeStartTimeEndGet(timeStart, timeEnd)

History of order changes

Based on the date range, all changes registered in the orderbook.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final String timeStart = 2022-05-01T00:00:00; // String | Start date
final String timeEnd = 2022-05-01T12:00:00; // String | End date

try {
    final response = api.v1OrdersHistoryTimeStartTimeEndGet(timeStart, timeEnd);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrdersApi->v1OrdersHistoryTimeStartTimeEndGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeStart** | **String**| Start date | 
 **timeEnd** | **String**| End date | 

### Return type

[**BuiltList&lt;OrderHistory&gt;**](OrderHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersPost**
> OrderExecutionReport v1OrdersPost(orderNewSingleRequest)

Send new order

This request creating new order for the specific exchange.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final OrderNewSingleRequest orderNewSingleRequest = ; // OrderNewSingleRequest | OrderNewSingleRequest object.

try {
    final response = api.v1OrdersPost(orderNewSingleRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrdersApi->v1OrdersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersStatusClientOrderIdGet**
> OrderExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final String clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // String | The unique identifier of the order assigned by the client.

try {
    final response = api.v1OrdersStatusClientOrderIdGet(clientOrderId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrdersApi->v1OrdersStatusClientOrderIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **String**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

