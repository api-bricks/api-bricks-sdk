# NATIVEIEX_API

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_native_iex_admin_messages_symbol_get**](NATIVEIEX_API.md#v1_native_iex_admin_messages_symbol_get) | **Get** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**v1_native_iex_admin_system_event_get**](NATIVEIEX_API.md#v1_native_iex_admin_system_event_get) | **Get** /v1/native/iex/admin/system-event | Get System Events
[**v1_native_iex_level1_quote_symbol_get**](NATIVEIEX_API.md#v1_native_iex_level1_quote_symbol_get) | **Get** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**v1_native_iex_level2_price_level_update_symbol_get**](NATIVEIEX_API.md#v1_native_iex_level2_price_level_update_symbol_get) | **Get** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**v1_native_iex_level3_order_book_symbol_get**](NATIVEIEX_API.md#v1_native_iex_level3_order_book_symbol_get) | **Get** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**v1_native_iex_trade_symbol_get**](NATIVEIEX_API.md#v1_native_iex_trade_symbol_get) | **Get** /v1/native/iex/trade/{symbol} | Get Trades


# **v1_native_iex_admin_messages_symbol_get**
> v1_native_iex_admin_messages_symbol_get (symbol: STRING_32 ; date:  detachable DATE_TIME ; time_start:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [MODELS_ADMIN_MESSAGE_MODEL]


Get Admin Messages

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **time_start** | **STRING_32**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **INTEGER_32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**LIST [MODELS_ADMIN_MESSAGE_MODEL]**](Models.AdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_admin_system_event_get**
> v1_native_iex_admin_system_event_get (date:  detachable DATE_TIME ; time_start:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [IEX_SYSTEM_EVENT_SYSTEM_EVENT_MODEL]


Get System Events

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DATE_TIME**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **time_start** | **STRING_32**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **INTEGER_32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**LIST [IEX_SYSTEM_EVENT_SYSTEM_EVENT_MODEL]**](IEXSystemEvent.SystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level1_quote_symbol_get**
> v1_native_iex_level1_quote_symbol_get (symbol: STRING_32 ; date:  detachable DATE_TIME ; time_start:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [IEX_QUOTE_UPDATE_QUOTE_UPDATE_MODEL]


Get Level-1 Quotes

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **time_start** | **STRING_32**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **INTEGER_32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**LIST [IEX_QUOTE_UPDATE_QUOTE_UPDATE_MODEL]**](IEXQuoteUpdate.QuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level2_price_level_update_symbol_get**
> v1_native_iex_level2_price_level_update_symbol_get (symbol: STRING_32 ; date:  detachable DATE_TIME ; time_start:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [IEX_PRICE_LEVEL_UPDATE_PRICE_LEVEL_UPDATE_MODEL]


Get Level-2 Price Level Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **time_start** | **STRING_32**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **INTEGER_32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**LIST [IEX_PRICE_LEVEL_UPDATE_PRICE_LEVEL_UPDATE_MODEL]**](IEXPriceLevelUpdate.PriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_level3_order_book_symbol_get**
> v1_native_iex_level3_order_book_symbol_get (symbol: STRING_32 ; date:  detachable DATE_TIME ; time_start:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [MODELS_ORDER_BOOK_MODEL]


Get Level-3 Order Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **time_start** | **STRING_32**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **INTEGER_32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**LIST [MODELS_ORDER_BOOK_MODEL]**](Models.OrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_native_iex_trade_symbol_get**
> v1_native_iex_trade_symbol_get (symbol: STRING_32 ; date:  detachable DATE_TIME ; time_start:  detachable STRING_32 ; limit:  detachable INTEGER_32 ): detachable LIST [IEX_TRADE_TRADE_MODEL]


Get Trades

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **STRING_32**| The symbol identifier | [default to null]
 **date** | **DATE_TIME**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] [default to null]
 **time_start** | **STRING_32**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] [default to null]
 **limit** | **INTEGER_32**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] [default to null]

### Return type

[**LIST [IEX_TRADE_TRADE_MODEL]**](IEXTrade.TradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

