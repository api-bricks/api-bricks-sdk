# OrderBookApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1OrderbooksSymbolIdCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/current | Get current order book |
| [**v1OrderbooksSymbolIdDepthCurrentGet**](OrderBookApi.md#v1OrderbooksSymbolIdDepthCurrentGet) | **GET** /v1/orderbooks/{symbol_id}/depth/current | Current depth of the order book |
| [**v1OrderbooksSymbolIdHistoryGet**](OrderBookApi.md#v1OrderbooksSymbolIdHistoryGet) | **GET** /v1/orderbooks/{symbol_id}/history | Historical data |


<a id="v1OrderbooksSymbolIdCurrentGet"></a>
# **v1OrderbooksSymbolIdCurrentGet**
> V1OrderBookBase v1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels)

Get current order book

Retrieves the current order book for the specified symbol.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | The symbol ID (from the Metadata -> Symbols)
val limitLevels : kotlin.Int = 56 // kotlin.Int | The maximum number of levels to include in the response.
try {
    val result : V1OrderBookBase = apiInstance.v1OrderbooksSymbolIdCurrentGet(symbolId, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookApi#v1OrderbooksSymbolIdCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookApi#v1OrderbooksSymbolIdCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String**| The symbol ID (from the Metadata -&gt; Symbols) | |
| **limitLevels** | **kotlin.Int**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**V1OrderBookBase**](V1OrderBookBase.md)

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
 - **Accept**: text/plain, application/json

<a id="v1OrderbooksSymbolIdDepthCurrentGet"></a>
# **v1OrderbooksSymbolIdDepthCurrentGet**
> V1OrderBookDepth v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels)

Current depth of the order book

Retrieves the current depth of the order book for the specified symbol.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | The symbol ID (from the Metadata -> Symbols)
val limitLevels : kotlin.Int = 56 // kotlin.Int | The maximum number of levels to include in the response.
try {
    val result : V1OrderBookDepth = apiInstance.v1OrderbooksSymbolIdDepthCurrentGet(symbolId, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookApi#v1OrderbooksSymbolIdDepthCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookApi#v1OrderbooksSymbolIdDepthCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String**| The symbol ID (from the Metadata -&gt; Symbols) | |
| **limitLevels** | **kotlin.Int**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**V1OrderBookDepth**](V1OrderBookDepth.md)

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
 - **Accept**: text/plain, application/json

<a id="v1OrderbooksSymbolIdHistoryGet"></a>
# **v1OrderbooksSymbolIdHistoryGet**
> kotlin.collections.List&lt;V1OrderBook&gt; v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels)

Historical data

Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.              :::info The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 50 levels. :::              This endpoint supports hourly granularity for APITP data with automatic fallback to daily data for older records. Timestamps are normalized to hour boundaries, and data is fetched per hour with precise filtering to your exact time range.              :::tip For querying a full day of data, use the &#39;date&#39; parameter. For specific time ranges (including cross-day or multi-hour queries), use &#39;time_start&#39; and &#39;time_end&#39;. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
val date : kotlin.String = date_example // kotlin.String | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z)
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601 (optional, supports cross-day queries)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
val limitLevels : kotlin.Int = 56 // kotlin.Int | Maximum amount of levels from each side of the book to include in response (optional, maximum is 50)
try {
    val result : kotlin.collections.List<V1OrderBook> = apiInstance.v1OrderbooksSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookApi#v1OrderbooksSymbolIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookApi#v1OrderbooksSymbolIdHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **date** | **kotlin.String**| Date in ISO 8601, returned data is for the whole given day (required if &#39;time_start&#39; is not provided) | [optional] |
| **timeStart** | **kotlin.String**| Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z) | [optional] |
| **timeEnd** | **kotlin.String**| Timeseries ending time in ISO 8601 (optional, supports cross-day queries) | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **limitLevels** | **kotlin.Int**| Maximum amount of levels from each side of the book to include in response (optional, maximum is 50) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1OrderBook&gt;**](V1OrderBook.md)

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
 - **Accept**: text/plain, application/json

