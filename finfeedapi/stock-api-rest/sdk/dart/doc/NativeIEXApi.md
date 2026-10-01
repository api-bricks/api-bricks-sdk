# openapi.api.NativeIEXApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#v1nativeiexadminmessagessymbolget) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1NativeIexAdminSystemEventGet**](NativeIEXApi.md#v1nativeiexadminsystemeventget) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#v1nativeiexlevel1quotesymbolget) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#v1nativeiexlevel2pricelevelupdatesymbolget) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#v1nativeiexlevel3orderbooksymbolget) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1NativeIexTradeSymbolGet**](NativeIEXApi.md#v1nativeiextradesymbolget) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **v1NativeIexAdminMessagesSymbolGet**
> List<ModelsAdminMessageModel> v1NativeIexAdminMessagesSymbolGet(symbol, date, timeStart, limit)

Get Admin Messages

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final result = api_instance.v1NativeIexAdminMessagesSymbolGet(symbol, date, timeStart, limit);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexAdminMessagesSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List<ModelsAdminMessageModel>**](ModelsAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexAdminSystemEventGet**
> List<IEXSystemEventSystemEventModel> v1NativeIexAdminSystemEventGet(date, timeStart, limit)

Get System Events

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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

final api_instance = NativeIEXApi();
final date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final result = api_instance.v1NativeIexAdminSystemEventGet(date, timeStart, limit);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexAdminSystemEventGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List<IEXSystemEventSystemEventModel>**](IEXSystemEventSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel1QuoteSymbolGet**
> List<IEXQuoteUpdateQuoteUpdateModel> v1NativeIexLevel1QuoteSymbolGet(symbol, date, timeStart, limit)

Get Level-1 Quotes

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final result = api_instance.v1NativeIexLevel1QuoteSymbolGet(symbol, date, timeStart, limit);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel1QuoteSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List<IEXQuoteUpdateQuoteUpdateModel>**](IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel2PriceLevelUpdateSymbolGet**
> List<IEXPriceLevelUpdatePriceLevelUpdateModel> v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, timeStart, limit)

Get Level-2 Price Level Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final result = api_instance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, timeStart, limit);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel2PriceLevelUpdateSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List<IEXPriceLevelUpdatePriceLevelUpdateModel>**](IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel3OrderBookSymbolGet**
> List<ModelsOrderBookModel> v1NativeIexLevel3OrderBookSymbolGet(symbol, date, timeStart, limit)

Get Level-3 Order Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final result = api_instance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date, timeStart, limit);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexLevel3OrderBookSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List<ModelsOrderBookModel>**](ModelsOrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexTradeSymbolGet**
> List<IEXTradeTradeModel> v1NativeIexTradeSymbolGet(symbol, date, timeStart, limit)

Get Trades

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

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

final api_instance = NativeIEXApi();
final symbol = symbol_example; // String | The symbol identifier
final date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final result = api_instance.v1NativeIexTradeSymbolGet(symbol, date, timeStart, limit);
    print(result);
} catch (e) {
    print('Exception when calling NativeIEXApi->v1NativeIexTradeSymbolGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **DateTime**| UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. | [optional] 
 **limit** | **int**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**List<IEXTradeTradeModel>**](IEXTradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

