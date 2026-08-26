# NativeIEXApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1NativeIexAdminMessagesSymbolGet**](NativeIEXApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages |
| [**v1NativeIexAdminSystemEventGet**](NativeIEXApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events |
| [**v1NativeIexLevel1QuoteSymbolGet**](NativeIEXApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes |
| [**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIEXApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book |
| [**v1NativeIexLevel3OrderBookSymbolGet**](NativeIEXApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book |
| [**v1NativeIexTradeSymbolGet**](NativeIEXApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades |


<a id="v1NativeIexAdminMessagesSymbolGet"></a>
# **v1NativeIexAdminMessagesSymbolGet**
> kotlin.collections.List&lt;ModelsAdminMessageModel&gt; v1NativeIexAdminMessagesSymbolGet(symbol, date, limit)

Get Admin Messages

Streaming endpoint. Use &#x60;limit&#x60; to cap the number of records returned (default 100, max 10000).

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Date in format YYYY-MM-DD
val limit : kotlin.Int = 56 // kotlin.Int | Maximum number of records to return (1-10000, default 100)
try {
    val result : kotlin.collections.List<ModelsAdminMessageModel> = apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, date, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexAdminMessagesSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexAdminMessagesSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String**| The symbol identifier | |
| **date** | **java.time.OffsetDateTime**| Date in format YYYY-MM-DD | |
| **limit** | **kotlin.Int**| Maximum number of records to return (1-10000, default 100) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;ModelsAdminMessageModel&gt;**](ModelsAdminMessageModel.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT statically:
```kotlin
ApiClient.accessToken = ""
```
Configure JWT dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexAdminSystemEventGet"></a>
# **v1NativeIexAdminSystemEventGet**
> kotlin.collections.List&lt;IEXSystemEventSystemEventModel&gt; v1NativeIexAdminSystemEventGet(date, limit)

Get System Events

Streaming endpoint. Use &#x60;limit&#x60; to cap the number of records returned (default 100, max 10000).

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Date in format YYYY-MM-DD
val limit : kotlin.Int = 56 // kotlin.Int | Maximum number of records to return (1-10000, default 100)
try {
    val result : kotlin.collections.List<IEXSystemEventSystemEventModel> = apiInstance.v1NativeIexAdminSystemEventGet(date, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexAdminSystemEventGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexAdminSystemEventGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **date** | **java.time.OffsetDateTime**| Date in format YYYY-MM-DD | |
| **limit** | **kotlin.Int**| Maximum number of records to return (1-10000, default 100) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;IEXSystemEventSystemEventModel&gt;**](IEXSystemEventSystemEventModel.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT statically:
```kotlin
ApiClient.accessToken = ""
```
Configure JWT dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexLevel1QuoteSymbolGet"></a>
# **v1NativeIexLevel1QuoteSymbolGet**
> kotlin.collections.List&lt;IEXQuoteUpdateQuoteUpdateModel&gt; v1NativeIexLevel1QuoteSymbolGet(symbol, date, limit)

Get Level-1 Quotes

Streaming endpoint. Use &#x60;limit&#x60; to cap the number of records returned (default 100, max 10000).

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Date in format YYYY-MM-DD
val limit : kotlin.Int = 56 // kotlin.Int | Maximum number of records to return (1-10000, default 100)
try {
    val result : kotlin.collections.List<IEXQuoteUpdateQuoteUpdateModel> = apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, date, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexLevel1QuoteSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexLevel1QuoteSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String**| The symbol identifier | |
| **date** | **java.time.OffsetDateTime**| Date in format YYYY-MM-DD | |
| **limit** | **kotlin.Int**| Maximum number of records to return (1-10000, default 100) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;IEXQuoteUpdateQuoteUpdateModel&gt;**](IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT statically:
```kotlin
ApiClient.accessToken = ""
```
Configure JWT dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexLevel2PriceLevelUpdateSymbolGet"></a>
# **v1NativeIexLevel2PriceLevelUpdateSymbolGet**
> kotlin.collections.List&lt;IEXPriceLevelUpdatePriceLevelUpdateModel&gt; v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, limit)

Get Level-2 Price Level Book

Streaming endpoint. Use &#x60;limit&#x60; to cap the number of records returned (default 100, max 10000).

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Date in format YYYY-MM-DD
val limit : kotlin.Int = 56 // kotlin.Int | Maximum number of records to return (1-10000, default 100)
try {
    val result : kotlin.collections.List<IEXPriceLevelUpdatePriceLevelUpdateModel> = apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String**| The symbol identifier | |
| **date** | **java.time.OffsetDateTime**| Date in format YYYY-MM-DD | |
| **limit** | **kotlin.Int**| Maximum number of records to return (1-10000, default 100) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;IEXPriceLevelUpdatePriceLevelUpdateModel&gt;**](IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT statically:
```kotlin
ApiClient.accessToken = ""
```
Configure JWT dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexLevel3OrderBookSymbolGet"></a>
# **v1NativeIexLevel3OrderBookSymbolGet**
> kotlin.collections.List&lt;ModelsOrderBookModel&gt; v1NativeIexLevel3OrderBookSymbolGet(symbol, date, limit)

Get Level-3 Order Book

Streaming endpoint. Use &#x60;limit&#x60; to cap the number of records returned (default 100, max 10000).

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Date in format YYYY-MM-DD
val limit : kotlin.Int = 56 // kotlin.Int | Maximum number of records to return (1-10000, default 100)
try {
    val result : kotlin.collections.List<ModelsOrderBookModel> = apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexLevel3OrderBookSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexLevel3OrderBookSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String**| The symbol identifier | |
| **date** | **java.time.OffsetDateTime**| Date in format YYYY-MM-DD | |
| **limit** | **kotlin.Int**| Maximum number of records to return (1-10000, default 100) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;ModelsOrderBookModel&gt;**](ModelsOrderBookModel.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT statically:
```kotlin
ApiClient.accessToken = ""
```
Configure JWT dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="v1NativeIexTradeSymbolGet"></a>
# **v1NativeIexTradeSymbolGet**
> kotlin.collections.List&lt;IEXTradeTradeModel&gt; v1NativeIexTradeSymbolGet(symbol, date, limit)

Get Trades

Streaming endpoint. Use &#x60;limit&#x60; to cap the number of trade records returned (default 100, max 10000).

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NativeIEXApi()
val symbol : kotlin.String = symbol_example // kotlin.String | The symbol identifier
val date : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Date in format YYYY-MM-DD
val limit : kotlin.Int = 56 // kotlin.Int | Maximum number of records to return (1-10000, default 100)
try {
    val result : kotlin.collections.List<IEXTradeTradeModel> = apiInstance.v1NativeIexTradeSymbolGet(symbol, date, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NativeIEXApi#v1NativeIexTradeSymbolGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NativeIEXApi#v1NativeIexTradeSymbolGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String**| The symbol identifier | |
| **date** | **java.time.OffsetDateTime**| Date in format YYYY-MM-DD | |
| **limit** | **kotlin.Int**| Maximum number of records to return (1-10000, default 100) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;IEXTradeTradeModel&gt;**](IEXTradeTradeModel.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["Authorization"] = ""
    ApiClient.apiKeyPrefix["Authorization"] = ""
Configure JWT statically:
```kotlin
ApiClient.accessToken = ""
```
Configure JWT dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

