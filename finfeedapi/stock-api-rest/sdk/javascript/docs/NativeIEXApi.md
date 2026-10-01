# FinFeedApiStockRestApi.NativeIEXApi

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

> [ModelsAdminMessageModel] v1NativeIexAdminMessagesSymbolGet(symbol, opts)

Get Admin Messages

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let opts = {
  'date': new Date("2013-10-20T19:20:30+01:00"), // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  'timeStart': "timeStart_example", // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  'limit': 56 // Number | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
};
apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **Number**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**[ModelsAdminMessageModel]**](ModelsAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexAdminSystemEventGet

> [IEXSystemEventSystemEventModel] v1NativeIexAdminSystemEventGet(opts)

Get System Events

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.NativeIEXApi();
let opts = {
  'date': new Date("2013-10-20T19:20:30+01:00"), // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  'timeStart': "timeStart_example", // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  'limit': 56 // Number | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
};
apiInstance.v1NativeIexAdminSystemEventGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **Number**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**[IEXSystemEventSystemEventModel]**](IEXSystemEventSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel1QuoteSymbolGet

> [IEXQuoteUpdateQuoteUpdateModel] v1NativeIexLevel1QuoteSymbolGet(symbol, opts)

Get Level-1 Quotes

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let opts = {
  'date': new Date("2013-10-20T19:20:30+01:00"), // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  'timeStart': "timeStart_example", // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  'limit': 56 // Number | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
};
apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **Number**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**[IEXQuoteUpdateQuoteUpdateModel]**](IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel2PriceLevelUpdateSymbolGet

> [IEXPriceLevelUpdatePriceLevelUpdateModel] v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, opts)

Get Level-2 Price Level Book

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let opts = {
  'date': new Date("2013-10-20T19:20:30+01:00"), // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  'timeStart': "timeStart_example", // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  'limit': 56 // Number | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
};
apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **Number**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**[IEXPriceLevelUpdatePriceLevelUpdateModel]**](IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexLevel3OrderBookSymbolGet

> [ModelsOrderBookModel] v1NativeIexLevel3OrderBookSymbolGet(symbol, opts)

Get Level-3 Order Book

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let opts = {
  'date': new Date("2013-10-20T19:20:30+01:00"), // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  'timeStart': "timeStart_example", // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  'limit': 56 // Number | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
};
apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **Number**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**[ModelsOrderBookModel]**](ModelsOrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1NativeIexTradeSymbolGet

> [IEXTradeTradeModel] v1NativeIexTradeSymbolGet(symbol, opts)

Get Trades

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example

```javascript
import FinFeedApiStockRestApi from 'fin_feed_api_stock_rest_api';
let defaultClient = FinFeedApiStockRestApi.ApiClient.instance;
// Configure API key authorization: APIKey
let APIKey = defaultClient.authentications['APIKey'];
APIKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//APIKey.apiKeyPrefix = 'Token';
// Configure Bearer (JWT) access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new FinFeedApiStockRestApi.NativeIEXApi();
let symbol = "symbol_example"; // String | The symbol identifier
let opts = {
  'date': new Date("2013-10-20T19:20:30+01:00"), // Date | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
  'timeStart': "timeStart_example", // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
  'limit': 56 // Number | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
};
apiInstance.v1NativeIexTradeSymbolGet(symbol, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The symbol identifier | 
 **date** | **Date**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **Number**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**[IEXTradeTradeModel]**](IEXTradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

