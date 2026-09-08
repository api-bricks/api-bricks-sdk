# openapi.api.OhlcvApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OhlcvExchangeExchangeIdHistoryGet**](OhlcvApi.md#v1ohlcvexchangeexchangeidhistoryget) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange
[**v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](OhlcvApi.md#v1ohlcvexchangesymbolexchangeidsymbolidhistoryget) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data
[**v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](OhlcvApi.md#v1ohlcvexchangesymbolexchangeidsymbolidlatestget) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data
[**v1OhlcvPeriodsGet**](OhlcvApi.md#v1ohlcvperiodsget) | **GET** /v1/ohlcv/periods | List all periods


# **v1OhlcvExchangeExchangeIdHistoryGet**
> List<OHLCVTimeSeriesExchangeTimeseriesItem> v1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd, limit)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OhlcvApi();
final exchangeId = exchangeId_example; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
final timeStart = timeStart_example; // String | Timeseries starting time in ISO 8601
final timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601
final limit = 56; // int | Maximum number of symbol rows to return (1-10000, default 100)

try {
    final result = api_instance.v1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd, limit);
    print(result);
} catch (e) {
    print('Exception when calling OhlcvApi->v1OhlcvExchangeExchangeIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -> Exchanges) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`) | 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | 
 **limit** | **int**| Maximum number of symbol rows to return (1-10000, default 100) | [optional] [default to 100]

### Return type

[**List<OHLCVTimeSeriesExchangeTimeseriesItem>**](OHLCVTimeSeriesExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**
> List<OHLCVTimeSeriesTimeseriesItem> v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, timeStart, timeEnd, limit)

Historical data

Get OHLCV timeseries data returned in time ascending order. If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OhlcvApi();
final exchangeId = exchangeId_example; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
final symbolId = symbolId_example; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
final timeStart = timeStart_example; // String | Timeseries starting time in ISO 8601
final timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601
final limit = 56; // int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, timeStart, timeEnd, limit);
    print(result);
} catch (e) {
    print('Exception when calling OhlcvApi->v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -> Exchanges) | 
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -> Symbols) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`) | 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<OHLCVTimeSeriesTimeseriesItem>**](OHLCVTimeSeriesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**
> List<OHLCVTimeSeriesTimeseriesItem> v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, limit)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OhlcvApi();
final exchangeId = exchangeId_example; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
final symbolId = symbolId_example; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
final limit = 56; // int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, limit);
    print(result);
} catch (e) {
    print('Exception when calling OhlcvApi->v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -> Exchanges) | 
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -> Symbols) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`) | 
 **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<OHLCVTimeSeriesTimeseriesItem>**](OHLCVTimeSeriesTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OhlcvPeriodsGet**
> List<OHLCVTimeSeriesTimeseriesPeriod> v1OhlcvPeriodsGet()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OhlcvApi();

try {
    final result = api_instance.v1OhlcvPeriodsGet();
    print(result);
} catch (e) {
    print('Exception when calling OhlcvApi->v1OhlcvPeriodsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<OHLCVTimeSeriesTimeseriesPeriod>**](OHLCVTimeSeriesTimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

