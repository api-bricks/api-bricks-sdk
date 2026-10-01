# NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1NativeIexAdminSystemEventGet**](NativeIEXApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**v1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1NativeIexTradeSymbolGet**](NativeIEXApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades



## v1NativeIexAdminMessagesSymbolGet

> List&lt;ModelsAdminMessageModel&gt; v1NativeIexAdminMessagesSymbolGet(symbol, date, timeStart, limit)

Get Admin Messages

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
String timeStart = null; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
Integer limit = null; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
try {
    List<ModelsAdminMessageModel> result = apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, date, timeStart, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexAdminMessagesSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**List&lt;ModelsAdminMessageModel&gt;**](ModelsAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexAdminSystemEventGet

> List&lt;IEXSystemEventSystemEventModel&gt; v1NativeIexAdminSystemEventGet(date, timeStart, limit)

Get System Events

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
Date date = null; // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
String timeStart = null; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
Integer limit = null; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
try {
    List<IEXSystemEventSystemEventModel> result = apiInstance.v1NativeIexAdminSystemEventGet(date, timeStart, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexAdminSystemEventGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**List&lt;IEXSystemEventSystemEventModel&gt;**](IEXSystemEventSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel1QuoteSymbolGet

> List&lt;IEXQuoteUpdateQuoteUpdateModel&gt; v1NativeIexLevel1QuoteSymbolGet(symbol, date, timeStart, limit)

Get Level-1 Quotes

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
String timeStart = null; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
Integer limit = null; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
try {
    List<IEXQuoteUpdateQuoteUpdateModel> result = apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, date, timeStart, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel1QuoteSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**List&lt;IEXQuoteUpdateQuoteUpdateModel&gt;**](IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel2PriceLevelUpdateSymbolGet

> List&lt;IEXPriceLevelUpdatePriceLevelUpdateModel&gt; v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, timeStart, limit)

Get Level-2 Price Level Book

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
String timeStart = null; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
Integer limit = null; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
try {
    List<IEXPriceLevelUpdatePriceLevelUpdateModel> result = apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, timeStart, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**List&lt;IEXPriceLevelUpdatePriceLevelUpdateModel&gt;**](IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel3OrderBookSymbolGet

> List&lt;ModelsOrderBookModel&gt; v1NativeIexLevel3OrderBookSymbolGet(symbol, date, timeStart, limit)

Get Level-3 Order Book

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
String timeStart = null; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
Integer limit = null; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
try {
    List<ModelsOrderBookModel> result = apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date, timeStart, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexLevel3OrderBookSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**List&lt;ModelsOrderBookModel&gt;**](ModelsOrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexTradeSymbolGet

> List&lt;IEXTradeTradeModel&gt; v1NativeIexTradeSymbolGet(symbol, date, timeStart, limit)

Get Trades

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```java
// Import classes:
//import org.openapitools.client.api.NativeIEXApi;

NativeIEXApi apiInstance = new NativeIEXApi();
String symbol = null; // String | The symbol identifier
Date date = null; // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
String timeStart = null; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
Integer limit = null; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
try {
    List<IEXTradeTradeModel> result = apiInstance.v1NativeIexTradeSymbolGet(symbol, date, timeStart, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NativeIEXApi#v1NativeIexTradeSymbolGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | [default to null]
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**List&lt;IEXTradeTradeModel&gt;**](IEXTradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

