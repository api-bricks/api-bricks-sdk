# OpenAPI\Client\CowApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**cowGetOrdersHistorical()**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical) |
| [**cowGetSettlementsHistorical()**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical) |
| [**cowGetTokensHistorical()**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) |
| [**cowGetTradesHistorical()**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) |
| [**cowGetUsersHistorical()**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical) |
| [**cowOrdersCurrent()**](CowApi.md#cowOrdersCurrent) | **GET** /dapps/cow/orders/current | Orders (current) |
| [**cowSettlementsCurrent()**](CowApi.md#cowSettlementsCurrent) | **GET** /dapps/cow/settlements/current | Settlements (current) |
| [**cowTokensCurrent()**](CowApi.md#cowTokensCurrent) | **GET** /dapps/cow/tokens/current | Tokens (current) |
| [**cowTradesCurrent()**](CowApi.md#cowTradesCurrent) | **GET** /dapps/cow/trades/current | Trades (current) |
| [**cowUsersCurrent()**](CowApi.md#cowUsersCurrent) | **GET** /dapps/cow/users/current | Users (current) |


## `cowGetOrdersHistorical()`

```php
cowGetOrdersHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CowOrderDTO[]
```

Orders (historical)

Gets orders.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | User's address.

try {
    $result = $apiInstance->cowGetOrdersHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetOrdersHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| User&#39;s address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowOrderDTO[]**](../Model/CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetSettlementsHistorical()`

```php
cowGetSettlementsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CowSettlementDTO[]
```

Settlements (historical)

Gets settlements.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Transaction hash.

try {
    $result = $apiInstance->cowGetSettlementsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetSettlementsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Transaction hash. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowSettlementDTO[]**](../Model/CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetTokensHistorical()`

```php
cowGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $name, $symbol): \OpenAPI\Client\Model\CowTokenDTO[]
```

Tokens (historical)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Token's address.
$address = 'address_example'; // string | Token's address.
$name = 'name_example'; // string | Token name fetched by ERC20 contract call.
$symbol = 'symbol_example'; // string | Token symbol fetched by contract call.

try {
    $result = $apiInstance->cowGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $name, $symbol);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetTokensHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Token&#39;s address. | [optional] |
| **address** | **string**| Token&#39;s address. | [optional] |
| **name** | **string**| Token name fetched by ERC20 contract call. | [optional] |
| **symbol** | **string**| Token symbol fetched by contract call. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowTokenDTO[]**](../Model/CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetTradesHistorical()`

```php
cowGetTradesHistorical($start_block, $end_block, $start_date, $end_date, $id, $sell_token, $buy_token): \OpenAPI\Client\Model\CowTradeDTO[]
```

Trades (historical)

Gets trades.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (order id)|(transaction hash)|(event index).
$sell_token = 'sell_token_example'; // string | Address of token that is sold.
$buy_token = 'buy_token_example'; // string | Address of token that is bought.

try {
    $result = $apiInstance->cowGetTradesHistorical($start_block, $end_block, $start_date, $end_date, $id, $sell_token, $buy_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetTradesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] |
| **sell_token** | **string**| Address of token that is sold. | [optional] |
| **buy_token** | **string**| Address of token that is bought. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowTradeDTO[]**](../Model/CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetUsersHistorical()`

```php
cowGetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id, $address): \OpenAPI\Client\Model\CowUserDTO[]
```

Users (historical)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | User's address.
$address = 'address_example'; // string | User's address.

try {
    $result = $apiInstance->cowGetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id, $address);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetUsersHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| User&#39;s address. | [optional] |
| **address** | **string**| User&#39;s address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowUserDTO[]**](../Model/CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowOrdersCurrent()`

```php
cowOrdersCurrent(): \OpenAPI\Client\Model\CowOrderDTO[]
```

Orders (current)

Gets orders.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cowOrdersCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowOrdersCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CowOrderDTO[]**](../Model/CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowSettlementsCurrent()`

```php
cowSettlementsCurrent(): \OpenAPI\Client\Model\CowSettlementDTO[]
```

Settlements (current)

Gets settlements.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cowSettlementsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowSettlementsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CowSettlementDTO[]**](../Model/CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowTokensCurrent()`

```php
cowTokensCurrent(): \OpenAPI\Client\Model\CowTokenDTO[]
```

Tokens (current)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cowTokensCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowTokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CowTokenDTO[]**](../Model/CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowTradesCurrent()`

```php
cowTradesCurrent(): \OpenAPI\Client\Model\CowTradeDTO[]
```

Trades (current)

Gets trades.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cowTradesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowTradesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CowTradeDTO[]**](../Model/CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowUsersCurrent()`

```php
cowUsersCurrent(): \OpenAPI\Client\Model\CowUserDTO[]
```

Users (current)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cowUsersCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowUsersCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CowUserDTO[]**](../Model/CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
