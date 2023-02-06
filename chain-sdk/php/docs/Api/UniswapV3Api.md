# OpenAPI\Client\UniswapV3Api

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**uniswapV3BundlesCurrent()**](UniswapV3Api.md#uniswapV3BundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current) |
| [**uniswapV3BurnsCurrent()**](UniswapV3Api.md#uniswapV3BurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current) |
| [**uniswapV3FactoriesCurrent()**](UniswapV3Api.md#uniswapV3FactoriesCurrent) | **GET** /dapps/uniswapv3/factories/current | Factories (current) |
| [**uniswapV3GetBundlesHistorical()**](UniswapV3Api.md#uniswapV3GetBundlesHistorical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical) |
| [**uniswapV3GetBurnsHistorical()**](UniswapV3Api.md#uniswapV3GetBurnsHistorical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical) |
| [**uniswapV3GetFactoriesHistorical()**](UniswapV3Api.md#uniswapV3GetFactoriesHistorical) | **GET** /dapps/uniswapv3/factories/historical | Factories (historical) |
| [**uniswapV3GetMintsHistorical()**](UniswapV3Api.md#uniswapV3GetMintsHistorical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical) |
| [**uniswapV3GetPoolDayDataHistorical()**](UniswapV3Api.md#uniswapV3GetPoolDayDataHistorical) | **GET** /dapps/uniswapv3/poolDayData/historical | PoolDayData (historical) |
| [**uniswapV3GetPoolHourDataHistorical()**](UniswapV3Api.md#uniswapV3GetPoolHourDataHistorical) | **GET** /dapps/uniswapv3/poolHourData/historical | PoolHourData (historical) |
| [**uniswapV3GetPoolsHistorical()**](UniswapV3Api.md#uniswapV3GetPoolsHistorical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical) |
| [**uniswapV3GetPositionSnapshotsHistorical()**](UniswapV3Api.md#uniswapV3GetPositionSnapshotsHistorical) | **GET** /dapps/uniswapv3/positionSnapshots/historical | PositionSnapshots (historical) |
| [**uniswapV3GetPositionsHistorical()**](UniswapV3Api.md#uniswapV3GetPositionsHistorical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical) |
| [**uniswapV3GetSwapsHistorical()**](UniswapV3Api.md#uniswapV3GetSwapsHistorical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical) |
| [**uniswapV3GetTickDayDataHistorical()**](UniswapV3Api.md#uniswapV3GetTickDayDataHistorical) | **GET** /dapps/uniswapv3/tickDayData/historical | TickDayData (historical) |
| [**uniswapV3GetTicksHistorical()**](UniswapV3Api.md#uniswapV3GetTicksHistorical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical) |
| [**uniswapV3GetTokenHourDataHistorical()**](UniswapV3Api.md#uniswapV3GetTokenHourDataHistorical) | **GET** /dapps/uniswapv3/tokenHourData/historical | TokenHourData (historical) |
| [**uniswapV3GetTokenV3DayDataHistorical()**](UniswapV3Api.md#uniswapV3GetTokenV3DayDataHistorical) | **GET** /dapps/uniswapv3/tokenV3DayData/historical | TokenV3DayData (historical) |
| [**uniswapV3GetTokensHistorical()**](UniswapV3Api.md#uniswapV3GetTokensHistorical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical) |
| [**uniswapV3GetTransactionsHistorical()**](UniswapV3Api.md#uniswapV3GetTransactionsHistorical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical) |
| [**uniswapV3GetUniswapDayDataHistorical()**](UniswapV3Api.md#uniswapV3GetUniswapDayDataHistorical) | **GET** /dapps/uniswapv3/uniswapDayData/historical | UniswapDayData (historical) |
| [**uniswapV3MintsCurrent()**](UniswapV3Api.md#uniswapV3MintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current) |
| [**uniswapV3PoolDayDataCurrent()**](UniswapV3Api.md#uniswapV3PoolDayDataCurrent) | **GET** /dapps/uniswapv3/poolDayData/current | PoolDayData (current) |
| [**uniswapV3PoolHourDataCurrent()**](UniswapV3Api.md#uniswapV3PoolHourDataCurrent) | **GET** /dapps/uniswapv3/poolHourData/current | PoolHourData (current) |
| [**uniswapV3PoolsCurrent()**](UniswapV3Api.md#uniswapV3PoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) |
| [**uniswapV3PositionSnapshotsCurrent()**](UniswapV3Api.md#uniswapV3PositionSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionSnapshots (current) |
| [**uniswapV3PositionsCurrent()**](UniswapV3Api.md#uniswapV3PositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current) |
| [**uniswapV3SwapsCurrent()**](UniswapV3Api.md#uniswapV3SwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) |
| [**uniswapV3TickDayDataCurrent()**](UniswapV3Api.md#uniswapV3TickDayDataCurrent) | **GET** /dapps/uniswapv3/tickDayData/current | TickDayData (current) |
| [**uniswapV3TicksCurrent()**](UniswapV3Api.md#uniswapV3TicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current) |
| [**uniswapV3TokenHourDataCurrent()**](UniswapV3Api.md#uniswapV3TokenHourDataCurrent) | **GET** /dapps/uniswapv3/tokenHourData/current | TokenHourData (current) |
| [**uniswapV3TokenV3DayDataCurrent()**](UniswapV3Api.md#uniswapV3TokenV3DayDataCurrent) | **GET** /dapps/uniswapv3/tokenV3DayData/current | TokenV3DayData (current) |
| [**uniswapV3TokensCurrent()**](UniswapV3Api.md#uniswapV3TokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) |
| [**uniswapV3TransactionsCurrent()**](UniswapV3Api.md#uniswapV3TransactionsCurrent) | **GET** /dapps/uniswapv3/transactions/current | Transactions (current) |
| [**uniswapV3UniswapDayDataCurrent()**](UniswapV3Api.md#uniswapV3UniswapDayDataCurrent) | **GET** /dapps/uniswapv3/uniswapDayData/current | UniswapDayData (current) |


## `uniswapV3BundlesCurrent()`

```php
uniswapV3BundlesCurrent(): \OpenAPI\Client\Model\UniswapV3BundleDTO[]
```

Bundles (current)

Gets bundles.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3BundlesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3BundlesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3BundleDTO[]**](../Model/UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3BurnsCurrent()`

```php
uniswapV3BurnsCurrent(): \OpenAPI\Client\Model\UniswapV3BurnDTO[]
```

Burns (current)

Gets burns.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3BurnsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3BurnsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3BurnDTO[]**](../Model/UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3FactoriesCurrent()`

```php
uniswapV3FactoriesCurrent(): \OpenAPI\Client\Model\UniswapV3FactoryDTO[]
```

Factories (current)

Gets factories.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3FactoriesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3FactoriesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3FactoryDTO[]**](../Model/UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetBundlesHistorical()`

```php
uniswapV3GetBundlesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV3BundleDTO[]
```

Bundles (historical)

Gets bundles.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
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
    $result = $apiInstance->uniswapV3GetBundlesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetBundlesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV3BundleDTO[]**](../Model/UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetBurnsHistorical()`

```php
uniswapV3GetBurnsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool, $token_0, $token_1): \OpenAPI\Client\Model\UniswapV3BurnDTO[]
```

Burns (historical)

Gets burns.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Transaction hash + '#' + index in mints Transaction array.
$pool = 'pool_example'; // string | Pool position is within.
$token_0 = 'token_0_example'; // string | Reference to token0 as stored in pool contract.
$token_1 = 'token_1_example'; // string | Reference to token1 as stored in pool contract.

try {
    $result = $apiInstance->uniswapV3GetBurnsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetBurnsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] |
| **pool** | **string**| Pool position is within. | [optional] |
| **token_0** | **string**| Reference to token0 as stored in pool contract. | [optional] |
| **token_1** | **string**| Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3BurnDTO[]**](../Model/UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetFactoriesHistorical()`

```php
uniswapV3GetFactoriesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV3FactoryDTO[]
```

Factories (historical)

Gets factories.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
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
    $result = $apiInstance->uniswapV3GetFactoriesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetFactoriesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV3FactoryDTO[]**](../Model/UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetMintsHistorical()`

```php
uniswapV3GetMintsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool, $token_0, $token_1): \OpenAPI\Client\Model\UniswapV3MintDTO[]
```

Mints (historical)

Gets mints.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Transaction hash + '#' + index in mints Transaction array.
$pool = 'pool_example'; // string | Pool address.
$token_0 = 'token_0_example'; // string | Reference to token0 as stored in pool contract.
$token_1 = 'token_1_example'; // string | Reference to token1 as stored in pool contract.

try {
    $result = $apiInstance->uniswapV3GetMintsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetMintsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] |
| **pool** | **string**| Pool address. | [optional] |
| **token_0** | **string**| Reference to token0 as stored in pool contract. | [optional] |
| **token_1** | **string**| Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3MintDTO[]**](../Model/UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPoolDayDataHistorical()`

```php
uniswapV3GetPoolDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\UniswapV3PoolDayDataDTO[]
```

PoolDayData (historical)

Gets poolDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pool address)-(day id).
$pool = 'pool_example'; // string | Pointer to pool.

try {
    $result = $apiInstance->uniswapV3GetPoolDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pool address)-(day id). | [optional] |
| **pool** | **string**| Pointer to pool. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolDayDataDTO[]**](../Model/UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPoolHourDataHistorical()`

```php
uniswapV3GetPoolHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\UniswapV3PoolHourDataDTO[]
```

PoolHourData (historical)

Gets poolHourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pool address)-(day id)
$pool = 'pool_example'; // string | Pointer to pool.

try {
    $result = $apiInstance->uniswapV3GetPoolHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolHourDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pool address)-(day id) | [optional] |
| **pool** | **string**| Pointer to pool. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolHourDataDTO[]**](../Model/UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPoolsHistorical()`

```php
uniswapV3GetPoolsHistorical($start_block, $end_block, $start_date, $end_date, $id, $token_0, $token_1): \OpenAPI\Client\Model\UniswapV3PoolDTO[]
```

Pools (historical)

Gets pools.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Pool address.
$token_0 = 'token_0_example'; // string | Reference to token0 as stored in pool contract.
$token_1 = 'token_1_example'; // string | Reference to token1 as stored in pool contract.

try {
    $result = $apiInstance->uniswapV3GetPoolsHistorical($start_block, $end_block, $start_date, $end_date, $id, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Pool address. | [optional] |
| **token_0** | **string**| Reference to token0 as stored in pool contract. | [optional] |
| **token_1** | **string**| Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolDTO[]**](../Model/UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPositionSnapshotsHistorical()`

```php
uniswapV3GetPositionSnapshotsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\UniswapV3PositionSnapshotDTO[]
```

PositionSnapshots (historical)

Gets positionSnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | NFT token identifier, format: (NFT token id)#(block number).
$pool = 'pool_example'; // string | Pool the position is within.

try {
    $result = $apiInstance->uniswapV3GetPositionSnapshotsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPositionSnapshotsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| NFT token identifier, format: (NFT token id)#(block number). | [optional] |
| **pool** | **string**| Pool the position is within. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PositionSnapshotDTO[]**](../Model/UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPositionsHistorical()`

```php
uniswapV3GetPositionsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool, $token_0, $token_1): \OpenAPI\Client\Model\UniswapV3PositionDTO[]
```

Positions (historical)

Gets positions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | NFT token identifier.
$pool = 'pool_example'; // string | Pool position is within.
$token_0 = 'token_0_example'; // string | Reference to token0 as stored in pair contract.
$token_1 = 'token_1_example'; // string | Reference to token1 as stored in pair contract.

try {
    $result = $apiInstance->uniswapV3GetPositionsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPositionsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| NFT token identifier. | [optional] |
| **pool** | **string**| Pool position is within. | [optional] |
| **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **string**| Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PositionDTO[]**](../Model/UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetSwapsHistorical()`

```php
uniswapV3GetSwapsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool, $token_0, $token_1): \OpenAPI\Client\Model\UniswapV3SwapDTO[]
```

Swaps (historical)

Gets swaps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
$pool = 'pool_example'; // string | Pool swap occured within.
$token_0 = 'token_0_example'; // string | Reference to token0 as stored in pair contract.
$token_1 = 'token_1_example'; // string | Reference to token1 as stored in pair contract.

try {
    $result = $apiInstance->uniswapV3GetSwapsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetSwapsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (transaction hash) + # + (index in swaps Transaction array). | [optional] |
| **pool** | **string**| Pool swap occured within. | [optional] |
| **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **string**| Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3SwapDTO[]**](../Model/UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTickDayDataHistorical()`

```php
uniswapV3GetTickDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\UniswapV3TickDayDataDTO[]
```

TickDayData (historical)

Gets tickDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pool address)-(tick index)-(timestamp).
$pool = 'pool_example'; // string | Pointer to pool.

try {
    $result = $apiInstance->uniswapV3GetTickDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTickDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pool address)-(tick index)-(timestamp). | [optional] |
| **pool** | **string**| Pointer to pool. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TickDayDataDTO[]**](../Model/UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTicksHistorical()`

```php
uniswapV3GetTicksHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool): \OpenAPI\Client\Model\UniswapV3TickDTO[]
```

Ticks (historical)

Gets ticks.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pool address)#(tick index)
$pool = 'pool_example'; // string | Pool address.

try {
    $result = $apiInstance->uniswapV3GetTicksHistorical($start_block, $end_block, $start_date, $end_date, $id, $pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTicksHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Identifier, format: (pool address)#(tick index) | [optional] |
| **pool** | **string**| Pool address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TickDTO[]**](../Model/UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTokenHourDataHistorical()`

```php
uniswapV3GetTokenHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV3TokenHourDataDTO[]
```

TokenHourData (historical)

Gets tokenHourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Token address concatendated with date.

try {
    $result = $apiInstance->uniswapV3GetTokenHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokenHourDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Token address concatendated with date. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TokenHourDataDTO[]**](../Model/UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTokenV3DayDataHistorical()`

```php
uniswapV3GetTokenV3DayDataHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV3TokenV3DayDataDTO[]
```

TokenV3DayData (historical)

Gets tokenV3DayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Token address concatendated with date.

try {
    $result = $apiInstance->uniswapV3GetTokenV3DayDataHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokenV3DayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Token address concatendated with date. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TokenV3DayDataDTO[]**](../Model/UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTokensHistorical()`

```php
uniswapV3GetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $symbol, $name): \OpenAPI\Client\Model\UniswapV3TokenDTO[]
```

Tokens (historical)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
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
    $result = $apiInstance->uniswapV3GetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $symbol, $name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokensHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV3TokenDTO[]**](../Model/UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTransactionsHistorical()`

```php
uniswapV3GetTransactionsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV3TransactionDTO[]
```

Transactions (historical)

Gets transactions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
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
    $result = $apiInstance->uniswapV3GetTransactionsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTransactionsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV3TransactionDTO[]**](../Model/UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetUniswapDayDataHistorical()`

```php
uniswapV3GetUniswapDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV3UniswapDayDataDTO[]
```

UniswapDayData (historical)

Gets uniswapDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Timestamp rounded to current day by dividing by 86400.

try {
    $result = $apiInstance->uniswapV3GetUniswapDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetUniswapDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Timestamp rounded to current day by dividing by 86400. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3UniswapDayDataDTO[]**](../Model/UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3MintsCurrent()`

```php
uniswapV3MintsCurrent(): \OpenAPI\Client\Model\UniswapV3MintDTO[]
```

Mints (current)

Gets mints.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3MintsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3MintsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3MintDTO[]**](../Model/UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3PoolDayDataCurrent()`

```php
uniswapV3PoolDayDataCurrent(): \OpenAPI\Client\Model\UniswapV3PoolDayDataDTO[]
```

PoolDayData (current)

Gets poolDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3PoolDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3PoolDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolDayDataDTO[]**](../Model/UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3PoolHourDataCurrent()`

```php
uniswapV3PoolHourDataCurrent(): \OpenAPI\Client\Model\UniswapV3PoolHourDataDTO[]
```

PoolHourData (current)

Gets poolHourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3PoolHourDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3PoolHourDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolHourDataDTO[]**](../Model/UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3PoolsCurrent()`

```php
uniswapV3PoolsCurrent($id): \OpenAPI\Client\Model\UniswapV3PoolDTO[]
```

Pools (current)

Gets pools.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 'id_example'; // string | Pool address.

try {
    $result = $apiInstance->uniswapV3PoolsCurrent($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3PoolsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Pool address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolDTO[]**](../Model/UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3PositionSnapshotsCurrent()`

```php
uniswapV3PositionSnapshotsCurrent(): \OpenAPI\Client\Model\UniswapV3PositionSnapshotDTO[]
```

PositionSnapshots (current)

Gets positionSnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3PositionSnapshotsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3PositionSnapshotsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3PositionSnapshotDTO[]**](../Model/UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3PositionsCurrent()`

```php
uniswapV3PositionsCurrent(): \OpenAPI\Client\Model\UniswapV3PositionDTO[]
```

Positions (current)

Gets positions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3PositionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3PositionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3PositionDTO[]**](../Model/UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3SwapsCurrent()`

```php
uniswapV3SwapsCurrent($pool): \OpenAPI\Client\Model\UniswapV3SwapDTO[]
```

Swaps (current)

Gets swaps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$pool = 'pool_example'; // string | Pool swap occured within.

try {
    $result = $apiInstance->uniswapV3SwapsCurrent($pool);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3SwapsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pool** | **string**| Pool swap occured within. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3SwapDTO[]**](../Model/UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3TickDayDataCurrent()`

```php
uniswapV3TickDayDataCurrent(): \OpenAPI\Client\Model\UniswapV3TickDayDataDTO[]
```

TickDayData (current)

Gets tickDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3TickDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3TickDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3TickDayDataDTO[]**](../Model/UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3TicksCurrent()`

```php
uniswapV3TicksCurrent(): \OpenAPI\Client\Model\UniswapV3TickDTO[]
```

Ticks (current)

Gets ticks.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3TicksCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3TicksCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3TickDTO[]**](../Model/UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3TokenHourDataCurrent()`

```php
uniswapV3TokenHourDataCurrent(): \OpenAPI\Client\Model\UniswapV3TokenHourDataDTO[]
```

TokenHourData (current)

Gets tokenHourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3TokenHourDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3TokenHourDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3TokenHourDataDTO[]**](../Model/UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3TokenV3DayDataCurrent()`

```php
uniswapV3TokenV3DayDataCurrent(): \OpenAPI\Client\Model\UniswapV3TokenV3DayDataDTO[]
```

TokenV3DayData (current)

Gets tokenV3DayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3TokenV3DayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3TokenV3DayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3TokenV3DayDataDTO[]**](../Model/UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3TokensCurrent()`

```php
uniswapV3TokensCurrent(): \OpenAPI\Client\Model\UniswapV3TokenDTO[]
```

Tokens (current)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3TokensCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3TokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3TokenDTO[]**](../Model/UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3TransactionsCurrent()`

```php
uniswapV3TransactionsCurrent(): \OpenAPI\Client\Model\UniswapV3TransactionDTO[]
```

Transactions (current)

Gets transactions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3TransactionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3TransactionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3TransactionDTO[]**](../Model/UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3UniswapDayDataCurrent()`

```php
uniswapV3UniswapDayDataCurrent(): \OpenAPI\Client\Model\UniswapV3UniswapDayDataDTO[]
```

UniswapDayData (current)

Gets uniswapDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3UniswapDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3UniswapDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3UniswapDayDataDTO[]**](../Model/UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
