# openapi.api.OrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


# **v1OrdersCancelAllPost**
> Message v1OrdersCancelAllPost(orderCancelAllRequest)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = OrdersApi();
final orderCancelAllRequest = OrderCancelAllRequest(); // OrderCancelAllRequest | OrderCancelAllRequest object.

try { 
    final result = api_instance.v1OrdersCancelAllPost(orderCancelAllRequest);
    print(result);
} catch (e) {
    print('Exception when calling OrdersApi->v1OrdersCancelAllPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. | 

### Return type

[**Message**](Message.md)

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

final api_instance = OrdersApi();
final orderCancelSingleRequest = OrderCancelSingleRequest(); // OrderCancelSingleRequest | OrderCancelSingleRequest object.

try { 
    final result = api_instance.v1OrdersCancelPost(orderCancelSingleRequest);
    print(result);
} catch (e) {
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
> List<OrderExecutionReport> v1OrdersGet(exchangeId)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = OrdersApi();
final exchangeId = KRAKEN; // String | Filter the open orders to the specific exchange.

try { 
    final result = api_instance.v1OrdersGet(exchangeId);
    print(result);
} catch (e) {
    print('Exception when calling OrdersApi->v1OrdersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the open orders to the specific exchange. | [optional] 

### Return type

[**List<OrderExecutionReport>**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersPost**
> OrderExecutionReport v1OrdersPost(orderNewSingleRequest)

Send new order

This request creating new order for the specific exchange.

### Example 
```dart
import 'package:openapi/api.dart';

final api_instance = OrdersApi();
final orderNewSingleRequest = OrderNewSingleRequest(); // OrderNewSingleRequest | OrderNewSingleRequest object.

try { 
    final result = api_instance.v1OrdersPost(orderNewSingleRequest);
    print(result);
} catch (e) {
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

final api_instance = OrdersApi();
final clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // String | The unique identifier of the order assigned by the client.

try { 
    final result = api_instance.v1OrdersStatusClientOrderIdGet(clientOrderId);
    print(result);
} catch (e) {
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

