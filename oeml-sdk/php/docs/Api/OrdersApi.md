# OpenAPI\Client\OrdersApi

All URIs are relative to https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io.

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost()**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelPost()**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersGet()**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
[**v1OrdersPost()**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
[**v1OrdersStatusClientOrderIdGet()**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


## `v1OrdersCancelAllPost()`

```php
v1OrdersCancelAllPost($order_cancel_all_request): \OpenAPI\Client\Model\MessageReject
```

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$order_cancel_all_request = new \OpenAPI\Client\Model\OrderCancelAllRequest(); // \OpenAPI\Client\Model\OrderCancelAllRequest | OrderCancelAllRequest object.

try {
    $result = $apiInstance->v1OrdersCancelAllPost($order_cancel_all_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersCancelAllPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_all_request** | [**\OpenAPI\Client\Model\OrderCancelAllRequest**](../Model/OrderCancelAllRequest.md)| OrderCancelAllRequest object. |

### Return type

[**\OpenAPI\Client\Model\MessageReject**](../Model/MessageReject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`, `appliction/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OrdersCancelPost()`

```php
v1OrdersCancelPost($order_cancel_single_request): \OpenAPI\Client\Model\OrderExecutionReport
```

Cancel order request

Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$order_cancel_single_request = new \OpenAPI\Client\Model\OrderCancelSingleRequest(); // \OpenAPI\Client\Model\OrderCancelSingleRequest | OrderCancelSingleRequest object.

try {
    $result = $apiInstance->v1OrdersCancelPost($order_cancel_single_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersCancelPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_single_request** | [**\OpenAPI\Client\Model\OrderCancelSingleRequest**](../Model/OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. |

### Return type

[**\OpenAPI\Client\Model\OrderExecutionReport**](../Model/OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`, `appliction/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OrdersGet()`

```php
v1OrdersGet($exchange_id): \OpenAPI\Client\Model\OrderExecutionReport[]
```

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$exchange_id = KRAKEN; // string | Filter the open orders to the specific exchange.

try {
    $result = $apiInstance->v1OrdersGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Filter the open orders to the specific exchange. | [optional]

### Return type

[**\OpenAPI\Client\Model\OrderExecutionReport[]**](../Model/OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `appliction/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OrdersPost()`

```php
v1OrdersPost($order_new_single_request): \OpenAPI\Client\Model\OrderExecutionReport
```

Send new order

This request creating new order for the specific exchange.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$order_new_single_request = new \OpenAPI\Client\Model\OrderNewSingleRequest(); // \OpenAPI\Client\Model\OrderNewSingleRequest | OrderNewSingleRequest object.

try {
    $result = $apiInstance->v1OrdersPost($order_new_single_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_new_single_request** | [**\OpenAPI\Client\Model\OrderNewSingleRequest**](../Model/OrderNewSingleRequest.md)| OrderNewSingleRequest object. |

### Return type

[**\OpenAPI\Client\Model\OrderExecutionReport**](../Model/OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`, `appliction/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OrdersStatusClientOrderIdGet()`

```php
v1OrdersStatusClientOrderIdGet($client_order_id): \OpenAPI\Client\Model\OrderExecutionReport
```

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$client_order_id = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // string | The unique identifier of the order assigned by the client.

try {
    $result = $apiInstance->v1OrdersStatusClientOrderIdGet($client_order_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersStatusClientOrderIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **string**| The unique identifier of the order assigned by the client. |

### Return type

[**\OpenAPI\Client\Model\OrderExecutionReport**](../Model/OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
