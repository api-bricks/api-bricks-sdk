# OpenAPI\Client\UniswapV2Api

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**uniswapV2BundlesCurrent()**](UniswapV2Api.md#uniswapV2BundlesCurrent) | **GET** /dapps/uniswapv2/bundles/current | Bundles (current) |
| [**uniswapV2BurnsCurrent()**](UniswapV2Api.md#uniswapV2BurnsCurrent) | **GET** /dapps/uniswapv2/burns/current | Burns (current) |
| [**uniswapV2GetBundlesHistorical()**](UniswapV2Api.md#uniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical) |
| [**uniswapV2GetBurnsHistorical()**](UniswapV2Api.md#uniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical) |
| [**uniswapV2GetLiquidityPositionSnapshotsHistorical()**](UniswapV2Api.md#uniswapV2GetLiquidityPositionSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) |
| [**uniswapV2GetLiquidityPositionsHistorical()**](UniswapV2Api.md#uniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical) |
| [**uniswapV2GetMintsHistorical()**](UniswapV2Api.md#uniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical) |
| [**uniswapV2GetPairDayDataHistorical()**](UniswapV2Api.md#uniswapV2GetPairDayDataHistorical) | **GET** /dapps/uniswapv2/pairDayData/historical | PairDayData (historical) |
| [**uniswapV2GetPairHourDataHistorical()**](UniswapV2Api.md#uniswapV2GetPairHourDataHistorical) | **GET** /dapps/uniswapv2/pairHourData/historical | PairHourData (historical) |
| [**uniswapV2GetPairsHistorical()**](UniswapV2Api.md#uniswapV2GetPairsHistorical) | **GET** /dapps/uniswapv2/pairs/historical | Pairs (historical) |
| [**uniswapV2GetSwapsHistorical()**](UniswapV2Api.md#uniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical) |
| [**uniswapV2GetTokenDayDataHistorical()**](UniswapV2Api.md#uniswapV2GetTokenDayDataHistorical) | **GET** /dapps/uniswapv2/tokenDayData/historical | TokenDayData (historical) |
| [**uniswapV2GetTokensHistorical()**](UniswapV2Api.md#uniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical) |
| [**uniswapV2GetTransactionsHistorical()**](UniswapV2Api.md#uniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical) |
| [**uniswapV2GetUniswapDayDataHistorical()**](UniswapV2Api.md#uniswapV2GetUniswapDayDataHistorical) | **GET** /dapps/uniswapv2/uniswapDayData/historical | UniswapDayData (historical) |
| [**uniswapV2GetUniswapFactoriesHistorical()**](UniswapV2Api.md#uniswapV2GetUniswapFactoriesHistorical) | **GET** /dapps/uniswapv2/uniswapFactories/historical | UniswapFactories (historical) |
| [**uniswapV2GetUsersHistorical()**](UniswapV2Api.md#uniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical | Users (historical) |
| [**uniswapV2LiquidityPositionSnapshotsCurrent()**](UniswapV2Api.md#uniswapV2LiquidityPositionSnapshotsCurrent) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current) |
| [**uniswapV2LiquidityPositionsCurrent()**](UniswapV2Api.md#uniswapV2LiquidityPositionsCurrent) | **GET** /dapps/uniswapv2/liquidityPositions/current | LiquidityPositions (current) |
| [**uniswapV2MintsCurrent()**](UniswapV2Api.md#uniswapV2MintsCurrent) | **GET** /dapps/uniswapv2/mints/current | Mints (current) |
| [**uniswapV2PairDayDataCurrent()**](UniswapV2Api.md#uniswapV2PairDayDataCurrent) | **GET** /dapps/uniswapv2/pairDayData/current | PairDayData (current) |
| [**uniswapV2PairHourDataCurrent()**](UniswapV2Api.md#uniswapV2PairHourDataCurrent) | **GET** /dapps/uniswapv2/pairHourData/current | PairHourData (current) |
| [**uniswapV2PairsCurrent()**](UniswapV2Api.md#uniswapV2PairsCurrent) | **GET** /dapps/uniswapv2/pairs/current | Pairs (current) |
| [**uniswapV2SwapsCurrent()**](UniswapV2Api.md#uniswapV2SwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) |
| [**uniswapV2TokenDayDataCurrent()**](UniswapV2Api.md#uniswapV2TokenDayDataCurrent) | **GET** /dapps/uniswapv2/tokenDayData/current | TokenDayData (current) |
| [**uniswapV2TokensCurrent()**](UniswapV2Api.md#uniswapV2TokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) |
| [**uniswapV2TransactionsCurrent()**](UniswapV2Api.md#uniswapV2TransactionsCurrent) | **GET** /dapps/uniswapv2/transactions/current | Transactions (current) |
| [**uniswapV2UniswapDayDataCurrent()**](UniswapV2Api.md#uniswapV2UniswapDayDataCurrent) | **GET** /dapps/uniswapv2/uniswapDayData/current | UniswapDayData (current) |
| [**uniswapV2UniswapFactoriesCurrent()**](UniswapV2Api.md#uniswapV2UniswapFactoriesCurrent) | **GET** /dapps/uniswapv2/uniswapFactories/current | UniswapFactories (current) |
| [**uniswapV2UsersCurrent()**](UniswapV2Api.md#uniswapV2UsersCurrent) | **GET** /dapps/uniswapv2/users/current | Users (current) |


## `uniswapV2BundlesCurrent()`

```php
uniswapV2BundlesCurrent(): \OpenAPI\Client\Model\UniswapV2BundleDTO[]
```

Bundles (current)

Gets bundles.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2BundlesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2BundlesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2BundleDTO[]**](../Model/UniswapV2BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2BurnsCurrent()`

```php
uniswapV2BurnsCurrent(): \OpenAPI\Client\Model\UniswapV2BurnDTO[]
```

Burns (current)

Gets burns.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2BurnsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2BurnsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2BurnDTO[]**](../Model/UniswapV2BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetBundlesHistorical()`

```php
uniswapV2GetBundlesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV2BundleDTO[]
```

Bundles (historical)

Gets bundles.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Constant 1.

try {
    $result = $apiInstance->uniswapV2GetBundlesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetBundlesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Constant 1. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2BundleDTO[]**](../Model/UniswapV2BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetBurnsHistorical()`

```php
uniswapV2GetBurnsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair): \OpenAPI\Client\Model\UniswapV2BurnDTO[]
```

Burns (historical)

Gets burns.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Transaction hash plus index in the transaction burn array
$pair = 'pair_example'; // string | Reference to pair.

try {
    $result = $apiInstance->uniswapV2GetBurnsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetBurnsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Transaction hash plus index in the transaction burn array | [optional] |
| **pair** | **string**| Reference to pair. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2BurnDTO[]**](../Model/UniswapV2BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetLiquidityPositionSnapshotsHistorical()`

```php
uniswapV2GetLiquidityPositionSnapshotsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user, $pair): \OpenAPI\Client\Model\UniswapV2LiquidityPositionSnapshotDTO[]
```

LiquidityPositionSnapshots (historical)

Gets liquidityPositionSnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Identifier, format: (pair address)-(user address)
$user = 'user_example'; // string | Reference to user.
$pair = 'pair_example'; // string | Reference to the pair liquidity is being provided on.

try {
    $result = $apiInstance->uniswapV2GetLiquidityPositionSnapshotsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionSnapshotsHistorical: ', $e->getMessage(), PHP_EOL;
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
| **user** | **string**| Reference to user. | [optional] |
| **pair** | **string**| Reference to the pair liquidity is being provided on. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2LiquidityPositionSnapshotDTO[]**](../Model/UniswapV2LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetLiquidityPositionsHistorical()`

```php
uniswapV2GetLiquidityPositionsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user, $pair): \OpenAPI\Client\Model\UniswapV2LiquidityPositionDTO[]
```

LiquidityPositions (historical)

Gets liquidityPositions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | User address and pair address concatenated with a dash.
$user = 'user_example'; // string | Reference to user.
$pair = 'pair_example'; // string | Reference to the pair liquidity is being provided on.

try {
    $result = $apiInstance->uniswapV2GetLiquidityPositionsHistorical($start_block, $end_block, $start_date, $end_date, $id, $user, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| User address and pair address concatenated with a dash. | [optional] |
| **user** | **string**| Reference to user. | [optional] |
| **pair** | **string**| Reference to the pair liquidity is being provided on. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2LiquidityPositionDTO[]**](../Model/UniswapV2LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetMintsHistorical()`

```php
uniswapV2GetMintsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair): \OpenAPI\Client\Model\UniswapV2MintDTO[]
```

Mints (historical)

Gets mints.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Transaction hash plus index in the transaction mint array.
$pair = 'pair_example'; // string | Reference to pair.

try {
    $result = $apiInstance->uniswapV2GetMintsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetMintsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Transaction hash plus index in the transaction mint array. | [optional] |
| **pair** | **string**| Reference to pair. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2MintDTO[]**](../Model/UniswapV2MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetPairDayDataHistorical()`

```php
uniswapV2GetPairDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $token_0, $token_1): \OpenAPI\Client\Model\UniswapV2PairDayDataDTO[]
```

PairDayData (historical)

Gets pairDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$token_0 = 'token_0_example'; // string | Reference to token0.
$token_1 = 'token_1_example'; // string | Reference to token1.

try {
    $result = $apiInstance->uniswapV2GetPairDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetPairDayDataHistorical: ', $e->getMessage(), PHP_EOL;
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
| **token_0** | **string**| Reference to token0. | [optional] |
| **token_1** | **string**| Reference to token1. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2PairDayDataDTO[]**](../Model/UniswapV2PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetPairHourDataHistorical()`

```php
uniswapV2GetPairHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair): \OpenAPI\Client\Model\UniswapV2PairHourDataDTO[]
```

PairHourData (historical)

Gets pairHourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | 
$pair = 'pair_example'; // string | Address for pair contract.

try {
    $result = $apiInstance->uniswapV2GetPairHourDataHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetPairHourDataHistorical: ', $e->getMessage(), PHP_EOL;
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
| **pair** | **string**| Address for pair contract. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2PairHourDataDTO[]**](../Model/UniswapV2PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetPairsHistorical()`

```php
uniswapV2GetPairsHistorical($start_block, $end_block, $start_date, $end_date, $id, $token_0, $token_1): \OpenAPI\Client\Model\UniswapV2PairDTO[]
```

Pairs (historical)

Gets pairs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Pair contract address.
$token_0 = 'token_0_example'; // string | Reference to token0 as stored in pair contract.
$token_1 = 'token_1_example'; // string | Reference to token1 as stored in pair contract.

try {
    $result = $apiInstance->uniswapV2GetPairsHistorical($start_block, $end_block, $start_date, $end_date, $id, $token_0, $token_1);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetPairsHistorical: ', $e->getMessage(), PHP_EOL;
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
| **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **string**| Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2PairDTO[]**](../Model/UniswapV2PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetSwapsHistorical()`

```php
uniswapV2GetSwapsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair): \OpenAPI\Client\Model\UniswapV2SwapDTO[]
```

Swaps (historical)

Gets swaps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
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
    $result = $apiInstance->uniswapV2GetSwapsHistorical($start_block, $end_block, $start_date, $end_date, $id, $pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetSwapsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV2SwapDTO[]**](../Model/UniswapV2SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetTokenDayDataHistorical()`

```php
uniswapV2GetTokenDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV2TokenDayDataDTO[]
```

TokenDayData (historical)

Gets tokenDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.
$id = 'id_example'; // string | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.

try {
    $result = $apiInstance->uniswapV2GetTokenDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetTokenDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |
| **id** | **string**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2TokenDayDataDTO[]**](../Model/UniswapV2TokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetTokensHistorical()`

```php
uniswapV2GetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $symbol, $name): \OpenAPI\Client\Model\UniswapV2TokenDTO[]
```

Tokens (historical)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
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
    $result = $apiInstance->uniswapV2GetTokensHistorical($start_block, $end_block, $start_date, $end_date, $id, $symbol, $name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetTokensHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV2TokenDTO[]**](../Model/UniswapV2TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetTransactionsHistorical()`

```php
uniswapV2GetTransactionsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV2TransactionDTO[]
```

Transactions (historical)

Gets transactions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
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
    $result = $apiInstance->uniswapV2GetTransactionsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetTransactionsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV2TransactionDTO[]**](../Model/UniswapV2TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetUniswapDayDataHistorical()`

```php
uniswapV2GetUniswapDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV2UniswapDayDataDTO[]
```

UniswapDayData (historical)

Gets uniswapDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
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
    $result = $apiInstance->uniswapV2GetUniswapDayDataHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetUniswapDayDataHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV2UniswapDayDataDTO[]**](../Model/UniswapV2UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetUniswapFactoriesHistorical()`

```php
uniswapV2GetUniswapFactoriesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV2UniswapFactoryDTO[]
```

UniswapFactories (historical)

Gets uniswapFactories.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
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
    $result = $apiInstance->uniswapV2GetUniswapFactoriesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetUniswapFactoriesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV2UniswapFactoryDTO[]**](../Model/UniswapV2UniswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetUsersHistorical()`

```php
uniswapV2GetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\UniswapV2UserDTO[]
```

Users (historical)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
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
    $result = $apiInstance->uniswapV2GetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetUsersHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\UniswapV2UserDTO[]**](../Model/UniswapV2UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2LiquidityPositionSnapshotsCurrent()`

```php
uniswapV2LiquidityPositionSnapshotsCurrent(): \OpenAPI\Client\Model\UniswapV2LiquidityPositionSnapshotDTO[]
```

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2LiquidityPositionSnapshotsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2LiquidityPositionSnapshotsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2LiquidityPositionSnapshotDTO[]**](../Model/UniswapV2LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2LiquidityPositionsCurrent()`

```php
uniswapV2LiquidityPositionsCurrent(): \OpenAPI\Client\Model\UniswapV2LiquidityPositionDTO[]
```

LiquidityPositions (current)

Gets liquidityPositions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2LiquidityPositionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2LiquidityPositionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2LiquidityPositionDTO[]**](../Model/UniswapV2LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2MintsCurrent()`

```php
uniswapV2MintsCurrent(): \OpenAPI\Client\Model\UniswapV2MintDTO[]
```

Mints (current)

Gets mints.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2MintsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2MintsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2MintDTO[]**](../Model/UniswapV2MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2PairDayDataCurrent()`

```php
uniswapV2PairDayDataCurrent(): \OpenAPI\Client\Model\UniswapV2PairDayDataDTO[]
```

PairDayData (current)

Gets pairDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2PairDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2PairDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2PairDayDataDTO[]**](../Model/UniswapV2PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2PairHourDataCurrent()`

```php
uniswapV2PairHourDataCurrent(): \OpenAPI\Client\Model\UniswapV2PairHourDataDTO[]
```

PairHourData (current)

Gets pairHourData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2PairHourDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2PairHourDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2PairHourDataDTO[]**](../Model/UniswapV2PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2PairsCurrent()`

```php
uniswapV2PairsCurrent($id): \OpenAPI\Client\Model\UniswapV2PairDTO[]
```

Pairs (current)

Gets pairs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 'id_example'; // string | Pair contract address.

try {
    $result = $apiInstance->uniswapV2PairsCurrent($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2PairsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Pair contract address. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2PairDTO[]**](../Model/UniswapV2PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2SwapsCurrent()`

```php
uniswapV2SwapsCurrent($pair): \OpenAPI\Client\Model\UniswapV2SwapDTO[]
```

Swaps (current)

Gets swaps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$pair = 'pair_example'; // string | Reference to pair.

try {
    $result = $apiInstance->uniswapV2SwapsCurrent($pair);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2SwapsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pair** | **string**| Reference to pair. | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2SwapDTO[]**](../Model/UniswapV2SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2TokenDayDataCurrent()`

```php
uniswapV2TokenDayDataCurrent(): \OpenAPI\Client\Model\UniswapV2TokenDayDataDTO[]
```

TokenDayData (current)

Gets tokenDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2TokenDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2TokenDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2TokenDayDataDTO[]**](../Model/UniswapV2TokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2TokensCurrent()`

```php
uniswapV2TokensCurrent(): \OpenAPI\Client\Model\UniswapV2TokenDTO[]
```

Tokens (current)

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2TokensCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2TokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2TokenDTO[]**](../Model/UniswapV2TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2TransactionsCurrent()`

```php
uniswapV2TransactionsCurrent(): \OpenAPI\Client\Model\UniswapV2TransactionDTO[]
```

Transactions (current)

Gets transactions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2TransactionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2TransactionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2TransactionDTO[]**](../Model/UniswapV2TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2UniswapDayDataCurrent()`

```php
uniswapV2UniswapDayDataCurrent(): \OpenAPI\Client\Model\UniswapV2UniswapDayDataDTO[]
```

UniswapDayData (current)

Gets uniswapDayData.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2UniswapDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2UniswapDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2UniswapDayDataDTO[]**](../Model/UniswapV2UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2UniswapFactoriesCurrent()`

```php
uniswapV2UniswapFactoriesCurrent(): \OpenAPI\Client\Model\UniswapV2UniswapFactoryDTO[]
```

UniswapFactories (current)

Gets uniswapFactories.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2UniswapFactoriesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2UniswapFactoriesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2UniswapFactoryDTO[]**](../Model/UniswapV2UniswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2UsersCurrent()`

```php
uniswapV2UsersCurrent(): \OpenAPI\Client\Model\UniswapV2UserDTO[]
```

Users (current)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2UsersCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2UsersCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2UserDTO[]**](../Model/UniswapV2UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
