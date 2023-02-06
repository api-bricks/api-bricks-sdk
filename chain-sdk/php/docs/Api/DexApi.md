# OpenAPI\Client\DexApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**dexBatchesCurrent()**](DexApi.md#dexBatchesCurrent) | **GET** /dapps/dex/batches/current | Batches (current) |
| [**dexDepositsCurrent()**](DexApi.md#dexDepositsCurrent) | **GET** /dapps/dex/deposits/current | Deposits (current) |
| [**dexGetBatchesHistorical()**](DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical) |
| [**dexGetDepositsHistorical()**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) |
| [**dexGetOrdersHistorical()**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) |
| [**dexGetPricesHistorical()**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) |
| [**dexGetSolutionsHistorical()**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) |
| [**dexGetStatsHistorical()**](DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical) |
| [**dexGetTokensHistorical()**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) |
| [**dexGetTradesHistorical()**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) |
| [**dexGetUsersHistorical()**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical) |
| [**dexGetWithdrawRequestsHistorical()**](DexApi.md#dexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical) |
| [**dexGetWithdrawsHistorical()**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) |
| [**dexOrdersCurrent()**](DexApi.md#dexOrdersCurrent) | **GET** /dapps/dex/orders/current | Orders (current) |
| [**dexPricesCurrent()**](DexApi.md#dexPricesCurrent) | **GET** /dapps/dex/prices/current | Prices (current) |
| [**dexSolutionsCurrent()**](DexApi.md#dexSolutionsCurrent) | **GET** /dapps/dex/solutions/current | Solutions (current) |
| [**dexStatsCurrent()**](DexApi.md#dexStatsCurrent) | **GET** /dapps/dex/stats/current | Stats (current) |
| [**dexTokensCurrent()**](DexApi.md#dexTokensCurrent) | **GET** /dapps/dex/tokens/current | Tokens (current) |
| [**dexTradesCurrent()**](DexApi.md#dexTradesCurrent) | **GET** /dapps/dex/trades/current | Trades (current) |
| [**dexUsersCurrent()**](DexApi.md#dexUsersCurrent) | **GET** /dapps/dex/users/current | Users (current) |
| [**dexWithdrawRequestsCurrent()**](DexApi.md#dexWithdrawRequestsCurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current) |
| [**dexWithdrawsCurrent()**](DexApi.md#dexWithdrawsCurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current) |


## `dexBatchesCurrent()`

```php
dexBatchesCurrent(): \OpenAPI\Client\Model\DexBatchDTO[]
```

Batches (current)

Gets batches.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexBatchesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexBatchesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexBatchDTO[]**](../Model/DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexDepositsCurrent()`

```php
dexDepositsCurrent(): \OpenAPI\Client\Model\DexDepositDTO[]
```

Deposits (current)

Gets deposits.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexDepositsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexDepositsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexDepositDTO[]**](../Model/DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetBatchesHistorical()`

```php
dexGetBatchesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\DexBatchDTO[]
```

Batches (historical)

Gets batches.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier.

try {
    $result = $apiInstance->dexGetBatchesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetBatchesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier. | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexBatchDTO[]**](../Model/DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetDepositsHistorical()`

```php
dexGetDepositsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user): \OpenAPI\Client\Model\DexDepositDTO[]
```

Deposits (historical)

Gets deposits.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (transaction hash)-(token id).
$user = 'user_example'; // string | User address.

try {
    $result = $apiInstance->dexGetDepositsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetDepositsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (transaction hash)-(token id). | [optional] |
| **user** | **string**| User address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexDepositDTO[]**](../Model/DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetOrdersHistorical()`

```php
dexGetOrdersHistorical($start_block, $end_block, $start_date, $end_date, $id, $buy_token, $sell_token): \OpenAPI\Client\Model\DexOrderDTO[]
```

Orders (historical)

Gets orders.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (owner address)-(order id)
$buy_token = 'buy_token_example'; // string | Identifier of token that was bought.
$sell_token = 'sell_token_example'; // string | Identifier of token that was sold.

try {
    $result = $apiInstance->dexGetOrdersHistorical($start_block, $end_block, $start_date, $end_date, $id, $buy_token, $sell_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetOrdersHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (owner address)-(order id) | [optional] |
| **buy_token** | **string**| Identifier of token that was bought. | [optional] |
| **sell_token** | **string**| Identifier of token that was sold. | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexOrderDTO[]**](../Model/DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetPricesHistorical()`

```php
dexGetPricesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\DexPriceDTO[]
```

Prices (historical)

Gets prices.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (token id)-(batch id).

try {
    $result = $apiInstance->dexGetPricesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetPricesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (token id)-(batch id). | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexPriceDTO[]**](../Model/DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetSolutionsHistorical()`

```php
dexGetSolutionsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\DexSolutionDTO[]
```

Solutions (historical)

Gets solutions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->dexGetSolutionsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetSolutionsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexSolutionDTO[]**](../Model/DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetStatsHistorical()`

```php
dexGetStatsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\DexStatsDTO[]
```

Stats (historical)

Gets stats.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->dexGetStatsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetStatsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexStatsDTO[]**](../Model/DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetTokensHistorical()`

```php
dexGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $symbol, $name): \OpenAPI\Client\Model\DexTokenDTO[]
```

Tokens (historical)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$address = 'address_example'; // string | 
$symbol = 'symbol_example'; // string | 
$name = 'name_example'; // string | 

try {
    $result = $apiInstance->dexGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $address, $symbol, $name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetTokensHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **address** | **string**|  | [optional] |
| **symbol** | **string**|  | [optional] |
| **name** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexTokenDTO[]**](../Model/DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetTradesHistorical()`

```php
dexGetTradesHistorical($start_block, $end_block, $start_date, $end_date, $id, $buy_token, $sell_token): \OpenAPI\Client\Model\DexTradeDTO[]
```

Trades (historical)

Gets trades.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$buy_token = 'buy_token_example'; // string | 
$sell_token = 'sell_token_example'; // string | 

try {
    $result = $apiInstance->dexGetTradesHistorical($start_block, $end_block, $start_date, $end_date, $id, $buy_token, $sell_token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetTradesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |
| **buy_token** | **string**|  | [optional] |
| **sell_token** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexTradeDTO[]**](../Model/DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetUsersHistorical()`

```php
dexGetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\DexUserDTO[]
```

Users (historical)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->dexGetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetUsersHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexUserDTO[]**](../Model/DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetWithdrawRequestsHistorical()`

```php
dexGetWithdrawRequestsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user): \OpenAPI\Client\Model\DexWithdrawRequestDTO[]
```

WithdrawRequests (historical)

Gets withdrawRequests.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (transaction hash)-(id).
$user = 'user_example'; // string | 

try {
    $result = $apiInstance->dexGetWithdrawRequestsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetWithdrawRequestsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (transaction hash)-(id). | [optional] |
| **user** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexWithdrawRequestDTO[]**](../Model/DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetWithdrawsHistorical()`

```php
dexGetWithdrawsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user): \OpenAPI\Client\Model\DexWithdrawDTO[]
```

Withdraws (historical)

Gets withdraws.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (transaction hash)-(id).
$user = 'user_example'; // string | 

try {
    $result = $apiInstance->dexGetWithdrawsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetWithdrawsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (transaction hash)-(id). | [optional] |
| **user** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DexWithdrawDTO[]**](../Model/DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexOrdersCurrent()`

```php
dexOrdersCurrent(): \OpenAPI\Client\Model\DexOrderDTO[]
```

Orders (current)

Gets orders.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexOrdersCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexOrdersCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexOrderDTO[]**](../Model/DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexPricesCurrent()`

```php
dexPricesCurrent(): \OpenAPI\Client\Model\DexPriceDTO[]
```

Prices (current)

Gets prices.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexPricesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexPricesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexPriceDTO[]**](../Model/DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexSolutionsCurrent()`

```php
dexSolutionsCurrent(): \OpenAPI\Client\Model\DexSolutionDTO[]
```

Solutions (current)

Gets solutions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexSolutionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexSolutionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexSolutionDTO[]**](../Model/DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexStatsCurrent()`

```php
dexStatsCurrent(): \OpenAPI\Client\Model\DexStatsDTO[]
```

Stats (current)

Gets stats.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexStatsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexStatsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexStatsDTO[]**](../Model/DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexTokensCurrent()`

```php
dexTokensCurrent(): \OpenAPI\Client\Model\DexTokenDTO[]
```

Tokens (current)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexTokensCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexTokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexTokenDTO[]**](../Model/DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexTradesCurrent()`

```php
dexTradesCurrent(): \OpenAPI\Client\Model\DexTradeDTO[]
```

Trades (current)

Gets trades.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexTradesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexTradesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexTradeDTO[]**](../Model/DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexUsersCurrent()`

```php
dexUsersCurrent(): \OpenAPI\Client\Model\DexUserDTO[]
```

Users (current)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexUsersCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexUsersCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexUserDTO[]**](../Model/DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexWithdrawRequestsCurrent()`

```php
dexWithdrawRequestsCurrent(): \OpenAPI\Client\Model\DexWithdrawRequestDTO[]
```

WithdrawRequests (current)

Gets withdrawRequests.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexWithdrawRequestsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexWithdrawRequestsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexWithdrawRequestDTO[]**](../Model/DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexWithdrawsCurrent()`

```php
dexWithdrawsCurrent(): \OpenAPI\Client\Model\DexWithdrawDTO[]
```

Withdraws (current)

Gets withdraws.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dexWithdrawsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexWithdrawsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\DexWithdrawDTO[]**](../Model/DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
