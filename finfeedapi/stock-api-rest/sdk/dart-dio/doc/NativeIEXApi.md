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
> BuiltList<ModelsAdminMessageModel> v1NativeIexAdminMessagesSymbolGet(symbol, date, timeStart, limit)

Get Admin Messages

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final String timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final int limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final response = api.v1NativeIexAdminMessagesSymbolGet(symbol, date, timeStart, limit);
    print(response);
} on DioException catch (e) {
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

[**BuiltList&lt;ModelsAdminMessageModel&gt;**](ModelsAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexAdminSystemEventGet**
> BuiltList<IEXSystemEventSystemEventModel> v1NativeIexAdminSystemEventGet(date, timeStart, limit)

Get System Events

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final String timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final int limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final response = api.v1NativeIexAdminSystemEventGet(date, timeStart, limit);
    print(response);
} on DioException catch (e) {
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

[**BuiltList&lt;IEXSystemEventSystemEventModel&gt;**](IEXSystemEventSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel1QuoteSymbolGet**
> BuiltList<IEXQuoteUpdateQuoteUpdateModel> v1NativeIexLevel1QuoteSymbolGet(symbol, date, timeStart, limit)

Get Level-1 Quotes

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final String timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final int limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final response = api.v1NativeIexLevel1QuoteSymbolGet(symbol, date, timeStart, limit);
    print(response);
} on DioException catch (e) {
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

[**BuiltList&lt;IEXQuoteUpdateQuoteUpdateModel&gt;**](IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel2PriceLevelUpdateSymbolGet**
> BuiltList<IEXPriceLevelUpdatePriceLevelUpdateModel> v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, timeStart, limit)

Get Level-2 Price Level Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final String timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final int limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final response = api.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, timeStart, limit);
    print(response);
} on DioException catch (e) {
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

[**BuiltList&lt;IEXPriceLevelUpdatePriceLevelUpdateModel&gt;**](IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexLevel3OrderBookSymbolGet**
> BuiltList<ModelsOrderBookModel> v1NativeIexLevel3OrderBookSymbolGet(symbol, date, timeStart, limit)

Get Level-3 Order Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final String timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final int limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final response = api.v1NativeIexLevel3OrderBookSymbolGet(symbol, date, timeStart, limit);
    print(response);
} on DioException catch (e) {
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

[**BuiltList&lt;ModelsOrderBookModel&gt;**](ModelsOrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1NativeIexTradeSymbolGet**
> BuiltList<IEXTradeTradeModel> v1NativeIexTradeSymbolGet(symbol, date, timeStart, limit)

Get Trades

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

final api = Openapi().getNativeIEXApi();
final String symbol = symbol_example; // String | The symbol identifier
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
final String timeStart = timeStart_example; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
final int limit = 56; // int | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.

try {
    final response = api.v1NativeIexTradeSymbolGet(symbol, date, timeStart, limit);
    print(response);
} on DioException catch (e) {
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

[**BuiltList&lt;IEXTradeTradeModel&gt;**](IEXTradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

