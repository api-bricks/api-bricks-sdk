# NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#V1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages
[**V1NativeIexAdminSystemEventGet**](NativeIEXApi.md#V1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events
[**V1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#V1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes
[**V1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#V1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book
[**V1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#V1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book
[**V1NativeIexTradeSymbolGet**](NativeIEXApi.md#V1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades


# **V1NativeIexAdminMessagesSymbolGet**
> array[ModelsAdminMessageModel] V1NativeIexAdminMessagesSymbolGet(symbol, date = var.date, time_start = var.time_start, limit = var.limit)

Get Admin Messages

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```R
library(openapi)

# Get Admin Messages
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (Optional)
var_time_start <- "time_start_example" # character | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (Optional)
var_limit <- 56 # integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (Optional)

api_instance <- NativeIEXApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexAdminMessagesSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1NativeIexAdminMessagesSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **character**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**array[ModelsAdminMessageModel]**](Models.AdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexAdminSystemEventGet**
> array[IEXSystemEventSystemEventModel] V1NativeIexAdminSystemEventGet(date = var.date, time_start = var.time_start, limit = var.limit)

Get System Events

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```R
library(openapi)

# Get System Events
#
# prepare function argument(s)
var_date <- "date_example" # character | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (Optional)
var_time_start <- "time_start_example" # character | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (Optional)
var_limit <- 56 # integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (Optional)

api_instance <- NativeIEXApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexAdminSystemEventGet(date = var_date, time_start = var_time_start, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1NativeIexAdminSystemEventGet(date = var_date, time_start = var_time_start, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **character**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **character**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**array[IEXSystemEventSystemEventModel]**](IEXSystemEvent.SystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexLevel1QuoteSymbolGet**
> array[IEXQuoteUpdateQuoteUpdateModel] V1NativeIexLevel1QuoteSymbolGet(symbol, date = var.date, time_start = var.time_start, limit = var.limit)

Get Level-1 Quotes

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```R
library(openapi)

# Get Level-1 Quotes
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (Optional)
var_time_start <- "time_start_example" # character | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (Optional)
var_limit <- 56 # integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (Optional)

api_instance <- NativeIEXApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexLevel1QuoteSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1NativeIexLevel1QuoteSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **character**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**array[IEXQuoteUpdateQuoteUpdateModel]**](IEXQuoteUpdate.QuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexLevel2PriceLevelUpdateSymbolGet**
> array[IEXPriceLevelUpdatePriceLevelUpdateModel] V1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date = var.date, time_start = var.time_start, limit = var.limit)

Get Level-2 Price Level Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```R
library(openapi)

# Get Level-2 Price Level Book
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (Optional)
var_time_start <- "time_start_example" # character | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (Optional)
var_limit <- 56 # integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (Optional)

api_instance <- NativeIEXApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexLevel2PriceLevelUpdateSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1NativeIexLevel2PriceLevelUpdateSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **character**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**array[IEXPriceLevelUpdatePriceLevelUpdateModel]**](IEXPriceLevelUpdate.PriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexLevel3OrderBookSymbolGet**
> array[ModelsOrderBookModel] V1NativeIexLevel3OrderBookSymbolGet(symbol, date = var.date, time_start = var.time_start, limit = var.limit)

Get Level-3 Order Book

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```R
library(openapi)

# Get Level-3 Order Book
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (Optional)
var_time_start <- "time_start_example" # character | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (Optional)
var_limit <- 56 # integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (Optional)

api_instance <- NativeIEXApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexLevel3OrderBookSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1NativeIexLevel3OrderBookSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **character**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**array[ModelsOrderBookModel]**](Models.OrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **V1NativeIexTradeSymbolGet**
> array[IEXTradeTradeModel] V1NativeIexTradeSymbolGet(symbol, date = var.date, time_start = var.time_start, limit = var.limit)

Get Trades

Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day.

### Example
```R
library(openapi)

# Get Trades
#
# prepare function argument(s)
var_symbol <- "symbol_example" # character | The symbol identifier
var_date <- "date_example" # character | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day. (Optional)
var_time_start <- "time_start_example" # character | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set. (Optional)
var_limit <- 56 # integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day. (Optional)

api_instance <- NativeIEXApi$new()
# Configure API key authorization: APIKey
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: JWT
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$V1NativeIexTradeSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limitdata_file = "result.txt")
result <- api_instance$V1NativeIexTradeSymbolGet(var_symbol, date = var_date, time_start = var_time_start, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| The symbol identifier | 
 **date** | **character**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] 
 **time_start** | **character**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] 
 **limit** | **integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] 

### Return type

[**array[IEXTradeTradeModel]**](IEXTrade.TradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

