# OpenAPI\Client\SushiswapApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**sushiswapBundlesCurrent()**](SushiswapApi.md#sushiswapBundlesCurrent) | **GET** /dapps/sushiswap/bundles/current | Bundles (current) |
| [**sushiswapBurnsCurrent()**](SushiswapApi.md#sushiswapBurnsCurrent) | **GET** /dapps/sushiswap/burns/current | Burns (current) |
| [**sushiswapDayDataCurrent()**](SushiswapApi.md#sushiswapDayDataCurrent) | **GET** /dapps/sushiswap/dayData/current | DayData (current) |
| [**sushiswapFactoriesCurrent()**](SushiswapApi.md#sushiswapFactoriesCurrent) | **GET** /dapps/sushiswap/factories/current | Factories (current) |
| [**sushiswapGetBundlesHistorical()**](SushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) |
| [**sushiswapGetBurnsHistorical()**](SushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) |
| [**sushiswapGetDayDataHistorical()**](SushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical) |
| [**sushiswapGetFactoriesHistorical()**](SushiswapApi.md#sushiswapGetFactoriesHistorical) | **GET** /dapps/sushiswap/factories/historical | Factories (historical) |
| [**sushiswapGetHourDataHistorical()**](SushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical) |
| [**sushiswapGetLiquidityPositionSnapshotsHistorical()**](SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotsHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) |
| [**sushiswapGetLiquidityPositionsHistorical()**](SushiswapApi.md#sushiswapGetLiquidityPositionsHistorical) | **GET** /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical) |
| [**sushiswapGetMintsHistorical()**](SushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) |
| [**sushiswapGetPairDayDataHistorical()**](SushiswapApi.md#sushiswapGetPairDayDataHistorical) | **GET** /dapps/sushiswap/pairDayData/historical | PairDayData (historical) |
| [**sushiswapGetPairHourDataHistorical()**](SushiswapApi.md#sushiswapGetPairHourDataHistorical) | **GET** /dapps/sushiswap/pairHourData/historical | PairHourData (historical) |
| [**sushiswapGetPairsHistorical()**](SushiswapApi.md#sushiswapGetPairsHistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) |
| [**sushiswapGetSwapsHistorical()**](SushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) |
| [**sushiswapGetTokenDayDataHistorical()**](SushiswapApi.md#sushiswapGetTokenDayDataHistorical) | **GET** /dapps/sushiswap/tokenDayData/historical | TokenDayData (historical) |
| [**sushiswapGetTokensHistorical()**](SushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) |
| [**sushiswapGetTransactionsHistorical()**](SushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) |
| [**sushiswapGetUsersHistorical()**](SushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) |
| [**sushiswapHourDataCurrent()**](SushiswapApi.md#sushiswapHourDataCurrent) | **GET** /dapps/sushiswap/hourData/current | HourData (current) |
| [**sushiswapLiquidityPositionSnapshotsCurrent()**](SushiswapApi.md#sushiswapLiquidityPositionSnapshotsCurrent) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current) |
| [**sushiswapLiquidityPositionsCurrent()**](SushiswapApi.md#sushiswapLiquidityPositionsCurrent) | **GET** /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current) |
| [**sushiswapMintsCurrent()**](SushiswapApi.md#sushiswapMintsCurrent) | **GET** /dapps/sushiswap/mints/current | Mints (current) |
| [**sushiswapPairDayDataCurrent()**](SushiswapApi.md#sushiswapPairDayDataCurrent) | **GET** /dapps/sushiswap/pairDayData/current | PairDayData (current) |
| [**sushiswapPairHourDataCurrent()**](SushiswapApi.md#sushiswapPairHourDataCurrent) | **GET** /dapps/sushiswap/pairHourData/current | PairHourData (current) |
| [**sushiswapPairsCurrent()**](SushiswapApi.md#sushiswapPairsCurrent) | **GET** /dapps/sushiswap/pairs/current | Pairs (current) |
| [**sushiswapSwapsCurrent()**](SushiswapApi.md#sushiswapSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) |
| [**sushiswapTokenDayDataCurrent()**](SushiswapApi.md#sushiswapTokenDayDataCurrent) | **GET** /dapps/sushiswap/tokenDayData/current | TokenDayData (current) |
| [**sushiswapTokensCurrent()**](SushiswapApi.md#sushiswapTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) |
| [**sushiswapTransactionsCurrent()**](SushiswapApi.md#sushiswapTransactionsCurrent) | **GET** /dapps/sushiswap/transactions/current | Transactions (current) |
| [**sushiswapUsersCurrent()**](SushiswapApi.md#sushiswapUsersCurrent) | **GET** /dapps/sushiswap/users/current | Users (current) |


## `sushiswapBundlesCurrent()`

```php
sushiswapBundlesCurrent(): \OpenAPI\Client\Model\SushiswapBundleDTO[]
```

Bundles (current)

Gets bundles.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapBundlesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapBundlesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapBundleDTO[]**](../Model/SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapBurnsCurrent()`

```php
sushiswapBurnsCurrent(): \OpenAPI\Client\Model\SushiswapBurnDTO[]
```

Burns (current)

Gets burns.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapBurnsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapBurnsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapBurnDTO[]**](../Model/SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapDayDataCurrent()`

```php
sushiswapDayDataCurrent(): \OpenAPI\Client\Model\SushiswapDayDataDTO[]
```

DayData (current)

Gets dayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapDayDataDTO[]**](../Model/SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapFactoriesCurrent()`

```php
sushiswapFactoriesCurrent(): \OpenAPI\Client\Model\SushiswapFactoryDTO[]
```

Factories (current)

Gets factories.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapFactoriesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapFactoriesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapFactoryDTO[]**](../Model/SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetBundlesHistorical()`

```php
sushiswapGetBundlesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\SushiswapBundleDTO[]
```

Bundles (historical)

Gets bundles.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Hardcoded to '1'.

try {
    $result = $apiInstance->sushiswapGetBundlesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetBundlesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Hardcoded to &#39;1&#39;. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapBundleDTO[]**](../Model/SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetBurnsHistorical()`

```php
sushiswapGetBurnsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair): \OpenAPI\Client\Model\SushiswapBurnDTO[]
```

Burns (historical)

Gets burns.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (transaction id):(transaction.burns.length).
$pair = 'pair_example'; // string | Reference to pair.

try {
    $result = $apiInstance->sushiswapGetBurnsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetBurnsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (transaction id):(transaction.burns.length). | [optional] |
| **pair** | **string**| Reference to pair. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapBurnDTO[]**](../Model/SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetDayDataHistorical()`

```php
sushiswapGetDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\SushiswapDayDataDTO[]
```

DayData (historical)

Gets dayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Unix timestamp for start of day / 86400 giving a unique day index.

try {
    $result = $apiInstance->sushiswapGetDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapDayDataDTO[]**](../Model/SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetFactoriesHistorical()`

```php
sushiswapGetFactoriesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\SushiswapFactoryDTO[]
```

Factories (historical)

Gets factories.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Factory address.

try {
    $result = $apiInstance->sushiswapGetFactoriesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetFactoriesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Factory address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapFactoryDTO[]**](../Model/SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetHourDataHistorical()`

```php
sushiswapGetHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\SushiswapHourDataDTO[]
```

HourData (historical)

Gets hourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Start of hour timestamp.

try {
    $result = $apiInstance->sushiswapGetHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetHourDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Start of hour timestamp. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapHourDataDTO[]**](../Model/SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetLiquidityPositionSnapshotsHistorical()`

```php
sushiswapGetLiquidityPositionSnapshotsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user, $pair): \OpenAPI\Client\Model\SushiswapLiquidityPositionSnapshotDTO[]
```

LiquidityPositionSnapshots (historical)

Gets liquidityPositionSnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pair address)-(user address)-(timestamp)
$user = 'user_example'; // string | Reference to user.
$pair = 'pair_example'; // string | Reference to the pair liquidity is being provided on.

try {
    $result = $apiInstance->sushiswapGetLiquidityPositionSnapshotsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetLiquidityPositionSnapshotsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pair address)-(user address)-(timestamp) | [optional] |
| **user** | **string**| Reference to user. | [optional] |
| **pair** | **string**| Reference to the pair liquidity is being provided on. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapLiquidityPositionSnapshotDTO[]**](../Model/SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetLiquidityPositionsHistorical()`

```php
sushiswapGetLiquidityPositionsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user, $pair): \OpenAPI\Client\Model\SushiswapLiquidityPositionDTO[]
```

LiquidityPositions (historical)

Gets liquidityPositions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pair address)-(user address)
$user = 'user_example'; // string | User address.
$pair = 'pair_example'; // string | Pair address.

try {
    $result = $apiInstance->sushiswapGetLiquidityPositionsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetLiquidityPositionsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pair address)-(user address) | [optional] |
| **user** | **string**| User address. | [optional] |
| **pair** | **string**| Pair address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapLiquidityPositionDTO[]**](../Model/SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetMintsHistorical()`

```php
sushiswapGetMintsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair): \OpenAPI\Client\Model\SushiswapMintDTO[]
```

Mints (historical)

Gets mints.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (transaction hash)-(index in the transaction mint array).
$pair = 'pair_example'; // string | Reference to pair.

try {
    $result = $apiInstance->sushiswapGetMintsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetMintsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (transaction hash)-(index in the transaction mint array). | [optional] |
| **pair** | **string**| Reference to pair. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapMintDTO[]**](../Model/SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetPairDayDataHistorical()`

```php
sushiswapGetPairDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair, $token_0, $token_1): \OpenAPI\Client\Model\SushiswapPairDayDataDTO[]
```

PairDayData (historical)

Gets pairDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pair id)-(day start timestamp).
$pair = 'pair_example'; // string | Reference to pair.
$token_0 = 'token_0_example'; // string | Reference to token0.
$token_1 = 'token_1_example'; // string | Reference to token1.

try {
    $result = $apiInstance->sushiswapGetPairDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetPairDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pair id)-(day start timestamp). | [optional] |
| **pair** | **string**| Reference to pair. | [optional] |
| **token_0** | **string**| Reference to token0. | [optional] |
| **token_1** | **string**| Reference to token1. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapPairDayDataDTO[]**](../Model/SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetPairHourDataHistorical()`

```php
sushiswapGetPairHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair): \OpenAPI\Client\Model\SushiswapPairHourDataDTO[]
```

PairHourData (historical)

Gets pairHourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pair id)-(hour start timestamp).
$pair = 'pair_example'; // string | Reference to pair.

try {
    $result = $apiInstance->sushiswapGetPairHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetPairHourDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pair id)-(hour start timestamp). | [optional] |
| **pair** | **string**| Reference to pair. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapPairHourDataDTO[]**](../Model/SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetPairsHistorical()`

```php
sushiswapGetPairsHistorical($start_block, $end_block, $start_date, $end_date, $id, $name, $token_0, $token_1): \OpenAPI\Client\Model\SushiswapPairDTO[]
```

Pairs (historical)

Gets pairs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Pair contract address.
$name = 'name_example'; // string | Friendly name, format: (token0 name)-(token1 name)
$token_0 = 'token_0_example'; // string | Reference to token0 as stored in pair contract.
$token_1 = 'token_1_example'; // string | Reference to token0 as stored in pair contract.

try {
    $result = $apiInstance->sushiswapGetPairsHistorical($start_block, $end_block, $start_date, $end_date, $id, $name, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetPairsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Pair contract address. | [optional] |
| **name** | **string**| Friendly name, format: (token0 name)-(token1 name) | [optional] |
| **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **string**| Reference to token0 as stored in pair contract. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapPairDTO[]**](../Model/SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetSwapsHistorical()`

```php
sushiswapGetSwapsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair): \OpenAPI\Client\Model\SushiswapSwapDTO[]
```

Swaps (historical)

Gets swaps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Transaction hash plus index in Transaction swap array.
$pair = 'pair_example'; // string | Reference to pair.

try {
    $result = $apiInstance->sushiswapGetSwapsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetSwapsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Transaction hash plus index in Transaction swap array. | [optional] |
| **pair** | **string**| Reference to pair. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapSwapDTO[]**](../Model/SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetTokenDayDataHistorical()`

```php
sushiswapGetTokenDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\SushiswapTokenDayDataDTO[]
```

TokenDayData (historical)

Gets tokenDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, day start timestamp in unix / 86400.

try {
    $result = $apiInstance->sushiswapGetTokenDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetTokenDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, day start timestamp in unix / 86400. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapTokenDayDataDTO[]**](../Model/SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetTokensHistorical()`

```php
sushiswapGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $symbol, $name): \OpenAPI\Client\Model\SushiswapTokenDTO[]
```

Tokens (historical)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Token address.
$symbol = 'symbol_example'; // string | Token symbol.
$name = 'name_example'; // string | Token name.

try {
    $result = $apiInstance->sushiswapGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $symbol, $name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetTokensHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Token address. | [optional] |
| **symbol** | **string**| Token symbol. | [optional] |
| **name** | **string**| Token name. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapTokenDTO[]**](../Model/SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetTransactionsHistorical()`

```php
sushiswapGetTransactionsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\SushiswapTransactionDTO[]
```

Transactions (historical)

Gets transactions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Ethereum transaction hash.

try {
    $result = $apiInstance->sushiswapGetTransactionsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetTransactionsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Ethereum transaction hash. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapTransactionDTO[]**](../Model/SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapGetUsersHistorical()`

```php
sushiswapGetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\SushiswapUserDTO[]
```

Users (historical)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | User address.

try {
    $result = $apiInstance->sushiswapGetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapGetUsersHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| User address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapUserDTO[]**](../Model/SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapHourDataCurrent()`

```php
sushiswapHourDataCurrent(): \OpenAPI\Client\Model\SushiswapHourDataDTO[]
```

HourData (current)

Gets hourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapHourDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapHourDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapHourDataDTO[]**](../Model/SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapLiquidityPositionSnapshotsCurrent()`

```php
sushiswapLiquidityPositionSnapshotsCurrent(): \OpenAPI\Client\Model\SushiswapLiquidityPositionSnapshotDTO[]
```

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapLiquidityPositionSnapshotsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapLiquidityPositionSnapshotsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapLiquidityPositionSnapshotDTO[]**](../Model/SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapLiquidityPositionsCurrent()`

```php
sushiswapLiquidityPositionsCurrent(): \OpenAPI\Client\Model\SushiswapLiquidityPositionDTO[]
```

LiquidityPositions (current)

Gets liquidityPositions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapLiquidityPositionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapLiquidityPositionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapLiquidityPositionDTO[]**](../Model/SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapMintsCurrent()`

```php
sushiswapMintsCurrent(): \OpenAPI\Client\Model\SushiswapMintDTO[]
```

Mints (current)

Gets mints.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapMintsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapMintsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapMintDTO[]**](../Model/SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapPairDayDataCurrent()`

```php
sushiswapPairDayDataCurrent(): \OpenAPI\Client\Model\SushiswapPairDayDataDTO[]
```

PairDayData (current)

Gets pairDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapPairDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapPairDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapPairDayDataDTO[]**](../Model/SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapPairHourDataCurrent()`

```php
sushiswapPairHourDataCurrent(): \OpenAPI\Client\Model\SushiswapPairHourDataDTO[]
```

PairHourData (current)

Gets pairHourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapPairHourDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapPairHourDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapPairHourDataDTO[]**](../Model/SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapPairsCurrent()`

```php
sushiswapPairsCurrent($id): \OpenAPI\Client\Model\SushiswapPairDTO[]
```

Pairs (current)

Gets pairs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 'id_example'; // string | Pair contract address.

try {
    $result = $apiInstance->sushiswapPairsCurrent($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapPairsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Pair contract address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapPairDTO[]**](../Model/SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapSwapsCurrent()`

```php
sushiswapSwapsCurrent($pair): \OpenAPI\Client\Model\SushiswapSwapDTO[]
```

Swaps (current)

Gets swaps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$pair = 'pair_example'; // string | Reference to pair.

try {
    $result = $apiInstance->sushiswapSwapsCurrent($pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapSwapsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pair** | **string**| Reference to pair. | [optional] |

### Return type

[**\OpenAPI\Client\Model\SushiswapSwapDTO[]**](../Model/SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapTokenDayDataCurrent()`

```php
sushiswapTokenDayDataCurrent(): \OpenAPI\Client\Model\SushiswapTokenDayDataDTO[]
```

TokenDayData (current)

Gets tokenDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapTokenDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapTokenDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapTokenDayDataDTO[]**](../Model/SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapTokensCurrent()`

```php
sushiswapTokensCurrent(): \OpenAPI\Client\Model\SushiswapTokenDTO[]
```

Tokens (current)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapTokensCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapTokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapTokenDTO[]**](../Model/SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapTransactionsCurrent()`

```php
sushiswapTransactionsCurrent(): \OpenAPI\Client\Model\SushiswapTransactionDTO[]
```

Transactions (current)

Gets transactions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapTransactionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapTransactionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapTransactionDTO[]**](../Model/SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sushiswapUsersCurrent()`

```php
sushiswapUsersCurrent(): \OpenAPI\Client\Model\SushiswapUserDTO[]
```

Users (current)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->sushiswapUsersCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->sushiswapUsersCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SushiswapUserDTO[]**](../Model/SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
