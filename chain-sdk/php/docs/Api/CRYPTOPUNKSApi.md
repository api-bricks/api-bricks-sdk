# OpenAPI\Client\CRYPTOPUNKSApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**cRYPTOPUNKSBidsCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSBidsCurrent) | **GET** /dapps/cryptopunks/bids/current | Bids (current) |
| [**cRYPTOPUNKSCollectionDailySnapshotsCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSCollectionDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current) |
| [**cRYPTOPUNKSCollectionsCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSCollectionsCurrent) | **GET** /dapps/cryptopunks/collections/current | Collections (current) |
| [**cRYPTOPUNKSDataSourcesCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSDataSourcesCurrent) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current) |
| [**cRYPTOPUNKSGetBidsHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetBidsHistorical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical) |
| [**cRYPTOPUNKSGetCollectionDailySnapshotsHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetCollectionDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical) |
| [**cRYPTOPUNKSGetCollectionsHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetCollectionsHistorical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical) |
| [**cRYPTOPUNKSGetDataSourcesHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetDataSourcesHistorical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical) |
| [**cRYPTOPUNKSGetItemsHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetItemsHistorical) | **GET** /dapps/cryptopunks/items/historical | Items (historical) |
| [**cRYPTOPUNKSGetMarketPlacesHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetMarketPlacesHistorical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical) |
| [**cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical) |
| [**cRYPTOPUNKSGetTradesHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetTradesHistorical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical) |
| [**cRYPTOPUNKSGetUsersHistorical()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetUsersHistorical) | **GET** /dapps/cryptopunks/users/historical | Users (historical) |
| [**cRYPTOPUNKSItemsCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSItemsCurrent) | **GET** /dapps/cryptopunks/items/current | Items (current) |
| [**cRYPTOPUNKSMarketPlacesCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSMarketPlacesCurrent) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current) |
| [**cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSMarketplaceDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current) |
| [**cRYPTOPUNKSTradesCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSTradesCurrent) | **GET** /dapps/cryptopunks/trades/current | Trades (current) |
| [**cRYPTOPUNKSUsersCurrent()**](CRYPTOPUNKSApi.md#cRYPTOPUNKSUsersCurrent) | **GET** /dapps/cryptopunks/users/current | Users (current) |


## `cRYPTOPUNKSBidsCurrent()`

```php
cRYPTOPUNKSBidsCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSBidDTO[]
```

Bids (current)

Gets bids.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSBidsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSBidsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSBidDTO[]**](../Model/CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSCollectionDailySnapshotsCurrent()`

```php
cRYPTOPUNKSCollectionDailySnapshotsCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSCollectionDailySnapshotDTO[]
```

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSCollectionDailySnapshotsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSCollectionDailySnapshotsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSCollectionDailySnapshotDTO[]**](../Model/CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSCollectionsCurrent()`

```php
cRYPTOPUNKSCollectionsCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSCollectionDTO[]
```

Collections (current)

Gets collections.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSCollectionsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSCollectionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSCollectionDTO[]**](../Model/CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSDataSourcesCurrent()`

```php
cRYPTOPUNKSDataSourcesCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSDataSourcesDTO[]
```

DataSources (current)

Gets dataSources.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSDataSourcesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSDataSourcesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSDataSourcesDTO[]**](../Model/CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetBidsHistorical()`

```php
cRYPTOPUNKSGetBidsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CRYPTOPUNKSBidDTO[]
```

Bids (historical)

Gets bids.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
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
    $result = $apiInstance->cRYPTOPUNKSGetBidsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetBidsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CRYPTOPUNKSBidDTO[]**](../Model/CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetCollectionDailySnapshotsHistorical()`

```php
cRYPTOPUNKSGetCollectionDailySnapshotsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CRYPTOPUNKSCollectionDailySnapshotDTO[]
```

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.

try {
    $result = $apiInstance->cRYPTOPUNKSGetCollectionDailySnapshotsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetCollectionDailySnapshotsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSCollectionDailySnapshotDTO[]**](../Model/CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetCollectionsHistorical()`

```php
cRYPTOPUNKSGetCollectionsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CRYPTOPUNKSCollectionDTO[]
```

Collections (historical)

Gets collections.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
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
    $result = $apiInstance->cRYPTOPUNKSGetCollectionsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetCollectionsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CRYPTOPUNKSCollectionDTO[]**](../Model/CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetDataSourcesHistorical()`

```php
cRYPTOPUNKSGetDataSourcesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CRYPTOPUNKSDataSourcesDTO[]
```

DataSources (historical)

Gets dataSources.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
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
    $result = $apiInstance->cRYPTOPUNKSGetDataSourcesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetDataSourcesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CRYPTOPUNKSDataSourcesDTO[]**](../Model/CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetItemsHistorical()`

```php
cRYPTOPUNKSGetItemsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CRYPTOPUNKSItemDTO[]
```

Items (historical)

Gets items.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
$end_block = 56; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | The end date of timeframe.

try {
    $result = $apiInstance->cRYPTOPUNKSGetItemsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetItemsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **\DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **\DateTime**| The end date of timeframe. | [optional] |

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSItemDTO[]**](../Model/CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetMarketPlacesHistorical()`

```php
cRYPTOPUNKSGetMarketPlacesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CRYPTOPUNKSMarketPlaceDTO[]
```

MarketPlaces (historical)

Gets marketPlaces.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
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
    $result = $apiInstance->cRYPTOPUNKSGetMarketPlacesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetMarketPlacesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CRYPTOPUNKSMarketPlaceDTO[]**](../Model/CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical()`

```php
cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CRYPTOPUNKSMarketplaceDailySnapshotDTO[]
```

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
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
    $result = $apiInstance->cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CRYPTOPUNKSMarketplaceDailySnapshotDTO[]**](../Model/CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetTradesHistorical()`

```php
cRYPTOPUNKSGetTradesHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CRYPTOPUNKSTradeDTO[]
```

Trades (historical)

Gets trades.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
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
    $result = $apiInstance->cRYPTOPUNKSGetTradesHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetTradesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CRYPTOPUNKSTradeDTO[]**](../Model/CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSGetUsersHistorical()`

```php
cRYPTOPUNKSGetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id): \OpenAPI\Client\Model\CRYPTOPUNKSUserDTO[]
```

Users (historical)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
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
    $result = $apiInstance->cRYPTOPUNKSGetUsersHistorical($start_block, $end_block, $start_date, $end_date, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetUsersHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CRYPTOPUNKSUserDTO[]**](../Model/CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSItemsCurrent()`

```php
cRYPTOPUNKSItemsCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSItemDTO[]
```

Items (current)

Gets items.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSItemsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSItemsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSItemDTO[]**](../Model/CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSMarketPlacesCurrent()`

```php
cRYPTOPUNKSMarketPlacesCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSMarketPlaceDTO[]
```

MarketPlaces (current)

Gets marketPlaces.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSMarketPlacesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSMarketPlacesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSMarketPlaceDTO[]**](../Model/CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()`

```php
cRYPTOPUNKSMarketplaceDailySnapshotsCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSMarketplaceDailySnapshotDTO[]
```

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSMarketplaceDailySnapshotsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSMarketplaceDailySnapshotsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSMarketplaceDailySnapshotDTO[]**](../Model/CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSTradesCurrent()`

```php
cRYPTOPUNKSTradesCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSTradeDTO[]
```

Trades (current)

Gets trades.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSTradesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSTradesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSTradeDTO[]**](../Model/CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cRYPTOPUNKSUsersCurrent()`

```php
cRYPTOPUNKSUsersCurrent(): \OpenAPI\Client\Model\CRYPTOPUNKSUserDTO[]
```

Users (current)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CRYPTOPUNKSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->cRYPTOPUNKSUsersCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSUsersCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\CRYPTOPUNKSUserDTO[]**](../Model/CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
