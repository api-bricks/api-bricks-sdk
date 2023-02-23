# OpenAPI\Client\PositionsApi

All URIs are relative to https://ems-gateway-aws-eu-central-1-dev.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1PositionsGet()**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions |


## `v1PositionsGet()`

```php
v1PositionsGet($exchange_id): \OpenAPI\Client\Model\Position[]
```

Get open positions

Get current open positions across all or single exchange.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\PositionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$exchange_id = KRAKEN; // string | Filter the balances to the specific exchange.

try {
    $result = $apiInstance->v1PositionsGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PositionsApi->v1PositionsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| Filter the balances to the specific exchange. | [optional] |

### Return type

[**\OpenAPI\Client\Model\Position[]**](../Model/Position.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `appliction/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
