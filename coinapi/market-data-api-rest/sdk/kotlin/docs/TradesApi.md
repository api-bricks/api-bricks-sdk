# TradesApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1TradesLatestGet**](TradesApi.md#v1TradesLatestGet) | **GET** /v1/trades/latest | Latest data |
| [**v1TradesSymbolIdHistoryGet**](TradesApi.md#v1TradesSymbolIdHistoryGet) | **GET** /v1/trades/{symbol_id}/history | Historical data |
| [**v1TradesSymbolIdLatestGet**](TradesApi.md#v1TradesSymbolIdLatestGet) | **GET** /v1/trades/{symbol_id}/latest | Latest data by symbol_id |


<a id="v1TradesLatestGet"></a>
# **v1TradesLatestGet**
> kotlin.collections.List&lt;V1Trade&gt; v1TradesLatestGet(filterSymbolId, includeId, limit)

Latest data

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = TradesApi()
val filterSymbolId : kotlin.String = filterSymbolId_example // kotlin.String | Comma or semicolon delimited parts of symbol identifier used to filter response. (optional)
val includeId : kotlin.Boolean = true // kotlin.Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1Trade> = apiInstance.v1TradesLatestGet(filterSymbolId, includeId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TradesApi#v1TradesLatestGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TradesApi#v1TradesLatestGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterSymbolId** | **kotlin.String**| Comma or semicolon delimited parts of symbol identifier used to filter response. (optional) | [optional] |
| **includeId** | **kotlin.Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1Trade&gt;**](V1Trade.md)

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

<a id="v1TradesSymbolIdHistoryGet"></a>
# **v1TradesSymbolIdHistoryGet**
> kotlin.collections.List&lt;V1Trade&gt; v1TradesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, includeId)

Historical data

Get history transactions from specific symbol, returned in time ascending order.              This endpoint supports hourly granularity for APITP data with automatic fallback to daily data for older records. Timestamps are normalized to hour boundaries, and data is fetched per hour with precise filtering to your exact time range.              :::tip For querying a full day of data, use the &#39;date&#39; parameter. For specific time ranges (including cross-day or multi-hour queries), use &#39;time_start&#39; and &#39;time_end&#39;. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = TradesApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
val date : kotlin.String = date_example // kotlin.String | Date in ISO 8601, returned data is for the whole given day (required if 'time_start' is not provided)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Starting time in ISO 8601 (supports hourly precision, e.g., 2026-01-16T11:00:00Z)
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601 (optional, supports cross-day queries)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, minimum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
val includeId : kotlin.Boolean = true // kotlin.Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
try {
    val result : kotlin.collections.List<V1Trade> = apiInstance.v1TradesSymbolIdHistoryGet(symbolId, date, timeStart, timeEnd, limit, includeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TradesApi#v1TradesSymbolIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TradesApi#v1TradesSymbolIdHistoryGet")
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
| **includeId** | **kotlin.Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |

### Return type

[**kotlin.collections.List&lt;V1Trade&gt;**](V1Trade.md)

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

<a id="v1TradesSymbolIdLatestGet"></a>
# **v1TradesSymbolIdLatestGet**
> kotlin.collections.List&lt;V1Trade&gt; v1TradesSymbolIdLatestGet(symbolId, limit, includeId)

Latest data by symbol_id

Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = TradesApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier for requested timeseries (from the Metadata -> Symbols)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
val includeId : kotlin.Boolean = true // kotlin.Boolean | Information that additional exchange trade identifier should be included in the `id_trade` parameter of the trade if exchange providing identifiers.
try {
    val result : kotlin.collections.List<V1Trade> = apiInstance.v1TradesSymbolIdLatestGet(symbolId, limit, includeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TradesApi#v1TradesSymbolIdLatestGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TradesApi#v1TradesSymbolIdLatestGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String**| Symbol identifier for requested timeseries (from the Metadata -&gt; Symbols) | |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **includeId** | **kotlin.Boolean**| Information that additional exchange trade identifier should be included in the &#x60;id_trade&#x60; parameter of the trade if exchange providing identifiers. | [optional] [default to false] |

### Return type

[**kotlin.collections.List&lt;V1Trade&gt;**](V1Trade.md)

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

