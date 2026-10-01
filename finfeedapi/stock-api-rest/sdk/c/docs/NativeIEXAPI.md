# NativeIEXAPI

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**NativeIEXAPI_v1NativeIexAdminSystemEventGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**NativeIEXAPI_v1NativeIexTradeSymbolGet**](NativeIEXAPI.md#NativeIEXAPI_v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet**
```c
// Get Admin Messages
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t* NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
**time_start** | **char \*** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
**limit** | **int \*** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[list_t](models_admin_message_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexAdminSystemEventGet**
```c
// Get System Events
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t* NativeIEXAPI_v1NativeIexAdminSystemEventGet(apiClient_t *apiClient, char date, char *time_start, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**date** | **char** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
**time_start** | **char \*** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
**limit** | **int \*** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[list_t](iex_system_event_system_event_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet**
```c
// Get Level-1 Quotes
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t* NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
**time_start** | **char \*** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
**limit** | **int \*** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[list_t](iex_quote_update_quote_update_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet**
```c
// Get Level-2 Price Level Book
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t* NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
**time_start** | **char \*** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
**limit** | **int \*** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[list_t](iex_price_level_update_price_level_update_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet**
```c
// Get Level-3 Order Book
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t* NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
**time_start** | **char \*** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
**limit** | **int \*** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[list_t](models_order_book_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NativeIEXAPI_v1NativeIexTradeSymbolGet**
```c
// Get Trades
//
// Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.
//
list_t* NativeIEXAPI_v1NativeIexTradeSymbolGet(apiClient_t *apiClient, char *symbol, char date, char *time_start, int *limit);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**symbol** | **char \*** | The symbol identifier | 
**date** | **char** | UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
**time_start** | **char \*** | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
**limit** | **int \*** | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[list_t](iex_trade_trade_model.md) *


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

