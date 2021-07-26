# OrdersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report



## v1OrdersCancelAllPost

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example

```bash
 v1OrdersCancelAllPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md) | OrderCancelAllRequest object. |

### Return type

[**MessageReject**](MessageReject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OrdersCancelPost

Cancel order request

Request cancel for an existing order. The order can be canceled using the 'client_order_id' or 'exchange_order_id'.

### Example

```bash
 v1OrdersCancelPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md) | OrderCancelSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OrdersGet

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example

```bash
 v1OrdersGet  exchange_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **string** | Filter the open orders to the specific exchange. | [optional] [default to null]

### Return type

[**array[OrderExecutionReport]**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OrdersPost

Send new order

This request creating new order for the specific exchange.

### Example

```bash
 v1OrdersPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md) | OrderNewSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## v1OrdersStatusClientOrderIdGet

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example

```bash
 v1OrdersStatusClientOrderIdGet client_order_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **string** | The unique identifier of the order assigned by the client. | [default to null]

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

