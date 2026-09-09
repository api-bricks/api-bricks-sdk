# openapi.api.OHLCVApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OhlcvExchangesExchangeIdHistoryGet**](OHLCVApi.md#v1ohlcvexchangesexchangeidhistoryget) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**v1OhlcvPeriodsGet**](OHLCVApi.md#v1ohlcvperiodsget) | **GET** /v1/ohlcv/periods | List all periods
[**v1OhlcvSymbolIdHistoryGet**](OHLCVApi.md#v1ohlcvsymbolidhistoryget) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**v1OhlcvSymbolIdLatestGet**](OHLCVApi.md#v1ohlcvsymbolidlatestget) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data


# **v1OhlcvExchangesExchangeIdHistoryGet**
> List<OhlcvExchangeTimeseriesItem> v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg `BITSTAMP`              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between `time_end` and `time_start` cannot be higher than 1 day. The `period_id` cannot be higher than `1DAY`. :::

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

final api_instance = OHLCVApi();
final exchangeId = exchangeId_example; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
final timeStart = timeStart_example; // String | Timeseries starting time in ISO 8601
final timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601

try {
    final result = api_instance.v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd);
    print(result);
} catch (e) {
    print('Exception when calling OHLCVApi->v1OhlcvExchangesExchangeIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -> Exchanges) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`) | 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | 

### Return type

[**List<OhlcvExchangeTimeseriesItem>**](OhlcvExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OhlcvPeriodsGet**
> List<V1TimeseriesPeriod> v1OhlcvPeriodsGet()

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

final api_instance = OHLCVApi();

try {
    final result = api_instance.v1OhlcvPeriodsGet();
    print(result);
} catch (e) {
    print('Exception when calling OHLCVApi->v1OhlcvPeriodsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<V1TimeseriesPeriod>**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OhlcvSymbolIdHistoryGet**
> List<V1TimeseriesItem> v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit)

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

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

final api_instance = OHLCVApi();
final symbolId = symbolId_example; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
final timeStart = timeStart_example; // String | Timeseries starting time in ISO 8601
final timeEnd = timeEnd_example; // String | Timeseries ending time in ISO 8601
final limit = 56; // int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit);
    print(result);
} catch (e) {
    print('Exception when calling OHLCVApi->v1OhlcvSymbolIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -> Symbols) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`) | 
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | [optional] 
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] 
 **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<V1TimeseriesItem>**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OhlcvSymbolIdLatestGet**
> List<V1TimeseriesItem> v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit)

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

final api_instance = OHLCVApi();
final symbolId = symbolId_example; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
final periodId = periodId_example; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
final limit = 56; // int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)

try {
    final result = api_instance.v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit);
    print(result);
} catch (e) {
    print('Exception when calling OHLCVApi->v1OhlcvSymbolIdLatestGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -> Symbols) | 
 **periodId** | **String**| Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`) | 
 **limit** | **int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100]

### Return type

[**List<V1TimeseriesItem>**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

