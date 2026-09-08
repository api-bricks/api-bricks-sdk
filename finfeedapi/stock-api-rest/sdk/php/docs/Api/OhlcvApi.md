# OpenAPI\Client\OhlcvApi

Provides access to OHLCV (Open, High, Low, Close, Volume) timeseries data.

All URIs are relative to https://api-historical.stock.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1OhlcvExchangeExchangeIdHistoryGet()**](OhlcvApi.md#v1OhlcvExchangeExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange |
| [**v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet()**](OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data |
| [**v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet()**](OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data |
| [**v1OhlcvPeriodsGet()**](OhlcvApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods |


## `v1OhlcvExchangeExchangeIdHistoryGet()`

```php
v1OhlcvExchangeExchangeIdHistoryGet($exchange_id, $period_id, $time_start, $time_end, $limit): \OpenAPI\Client\Model\OHLCVTimeSeriesExchangeTimeseriesItem[]
```

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\OhlcvApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
$time_start = 'time_start_example'; // string | Timeseries starting time in ISO 8601
$time_end = 'time_end_example'; // string | Timeseries ending time in ISO 8601
$limit = 100; // int | Maximum number of symbol rows to return (1-10000, default 100)

try {
    $result = $apiInstance->v1OhlcvExchangeExchangeIdHistoryGet($exchange_id, $period_id, $time_start, $time_end, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OhlcvApi->v1OhlcvExchangeExchangeIdHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | |
| **time_start** | **string**| Timeseries starting time in ISO 8601 | |
| **time_end** | **string**| Timeseries ending time in ISO 8601 | |
| **limit** | **int**| Maximum number of symbol rows to return (1-10000, default 100) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\OHLCVTimeSeriesExchangeTimeseriesItem[]**](../Model/OHLCVTimeSeriesExchangeTimeseriesItem.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet()`

```php
v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet($exchange_id, $symbol_id, $period_id, $time_start, $time_end, $limit): \OpenAPI\Client\Model\OHLCVTimeSeriesTimeseriesItem[]
```

Historical data

Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\OhlcvApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
$symbol_id = 'symbol_id_example'; // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
$time_start = 'time_start_example'; // string | Timeseries starting time in ISO 8601
$time_end = 'time_end_example'; // string | Timeseries ending time in ISO 8601
$limit = 100; // int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet($exchange_id, $symbol_id, $period_id, $time_start, $time_end, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OhlcvApi->v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | |
| **symbol_id** | **string**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | |
| **time_start** | **string**| Timeseries starting time in ISO 8601 | [optional] |
| **time_end** | **string**| Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\OHLCVTimeSeriesTimeseriesItem[]**](../Model/OHLCVTimeSeriesTimeseriesItem.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet()`

```php
v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet($exchange_id, $symbol_id, $period_id, $limit): \OpenAPI\Client\Model\OHLCVTimeSeriesTimeseriesItem[]
```

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\OhlcvApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$exchange_id = 'exchange_id_example'; // string | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
$symbol_id = 'symbol_id_example'; // string | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
$period_id = 'period_id_example'; // string | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
$limit = 100; // int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    $result = $apiInstance->v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet($exchange_id, $symbol_id, $period_id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OhlcvApi->v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchange_id** | **string**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | |
| **symbol_id** | **string**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **period_id** | **string**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | |
| **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**\OpenAPI\Client\Model\OHLCVTimeSeriesTimeseriesItem[]**](../Model/OHLCVTimeSeriesTimeseriesItem.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1OhlcvPeriodsGet()`

```php
v1OhlcvPeriodsGet(): \OpenAPI\Client\Model\OHLCVTimeSeriesTimeseriesPeriod[]
```

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: APIKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('Authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('Authorization', 'Bearer');

// Configure Bearer (JWT) authorization: JWT
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\OhlcvApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->v1OhlcvPeriodsGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OhlcvApi->v1OhlcvPeriodsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\OHLCVTimeSeriesTimeseriesPeriod[]**](../Model/OHLCVTimeSeriesTimeseriesPeriod.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
