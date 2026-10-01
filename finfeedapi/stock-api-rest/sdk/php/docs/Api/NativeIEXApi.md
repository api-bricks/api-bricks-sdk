# OpenAPI\Client\NativeIEXApi

Provides access to IEX market data endpoints.

All URIs are relative to https://api-historical.stock.finfeedapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1NativeIexAdminMessagesSymbolGet()**](NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages |
| [**v1NativeIexAdminSystemEventGet()**](NativeIEXApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events |
| [**v1NativeIexLevel1QuoteSymbolGet()**](NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes |
| [**v1NativeIexLevel2PriceLevelUpdateSymbolGet()**](NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book |
| [**v1NativeIexLevel3OrderBookSymbolGet()**](NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book |
| [**v1NativeIexTradeSymbolGet()**](NativeIEXApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades |


## `v1NativeIexAdminMessagesSymbolGet()`

```php
v1NativeIexAdminMessagesSymbolGet($symbol, $date, $time_start, $limit): \OpenAPI\Client\Model\ModelsAdminMessageModel[]
```

Get Admin Messages

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
$time_start = 'time_start_example'; // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
$limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    $result = $apiInstance->v1NativeIexAdminMessagesSymbolGet($symbol, $date, $time_start, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexAdminMessagesSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **time_start** | **string**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ModelsAdminMessageModel[]**](../Model/ModelsAdminMessageModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexAdminSystemEventGet()`

```php
v1NativeIexAdminSystemEventGet($date, $time_start, $limit): \OpenAPI\Client\Model\IEXSystemEventSystemEventModel[]
```

Get System Events

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
$time_start = 'time_start_example'; // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
$limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    $result = $apiInstance->v1NativeIexAdminSystemEventGet($date, $time_start, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexAdminSystemEventGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **\DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **time_start** | **string**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**\OpenAPI\Client\Model\IEXSystemEventSystemEventModel[]**](../Model/IEXSystemEventSystemEventModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexLevel1QuoteSymbolGet()`

```php
v1NativeIexLevel1QuoteSymbolGet($symbol, $date, $time_start, $limit): \OpenAPI\Client\Model\IEXQuoteUpdateQuoteUpdateModel[]
```

Get Level-1 Quotes

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
$time_start = 'time_start_example'; // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
$limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    $result = $apiInstance->v1NativeIexLevel1QuoteSymbolGet($symbol, $date, $time_start, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexLevel1QuoteSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **time_start** | **string**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**\OpenAPI\Client\Model\IEXQuoteUpdateQuoteUpdateModel[]**](../Model/IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexLevel2PriceLevelUpdateSymbolGet()`

```php
v1NativeIexLevel2PriceLevelUpdateSymbolGet($symbol, $date, $time_start, $limit): \OpenAPI\Client\Model\IEXPriceLevelUpdatePriceLevelUpdateModel[]
```

Get Level-2 Price Level Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
$time_start = 'time_start_example'; // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
$limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    $result = $apiInstance->v1NativeIexLevel2PriceLevelUpdateSymbolGet($symbol, $date, $time_start, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexLevel2PriceLevelUpdateSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **time_start** | **string**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**\OpenAPI\Client\Model\IEXPriceLevelUpdatePriceLevelUpdateModel[]**](../Model/IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexLevel3OrderBookSymbolGet()`

```php
v1NativeIexLevel3OrderBookSymbolGet($symbol, $date, $time_start, $limit): \OpenAPI\Client\Model\ModelsOrderBookModel[]
```

Get Level-3 Order Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
$time_start = 'time_start_example'; // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
$limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    $result = $apiInstance->v1NativeIexLevel3OrderBookSymbolGet($symbol, $date, $time_start, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexLevel3OrderBookSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **time_start** | **string**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**\OpenAPI\Client\Model\ModelsOrderBookModel[]**](../Model/ModelsOrderBookModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1NativeIexTradeSymbolGet()`

```php
v1NativeIexTradeSymbolGet($symbol, $date, $time_start, $limit): \OpenAPI\Client\Model\IEXTradeTradeModel[]
```

Get Trades

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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


$apiInstance = new OpenAPI\Client\Api\NativeIEXApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$symbol = 'symbol_example'; // string | The symbol identifier
$date = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
$time_start = 'time_start_example'; // string | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
$limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    $result = $apiInstance->v1NativeIexTradeSymbolGet($symbol, $date, $time_start, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NativeIEXApi->v1NativeIexTradeSymbolGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **string**| The symbol identifier | |
| **date** | **\DateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **time_start** | **string**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**\OpenAPI\Client\Model\IEXTradeTradeModel[]**](../Model/IEXTradeTradeModel.md)

### Authorization

[APIKey](../../README.md#APIKey), [JWT](../../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
