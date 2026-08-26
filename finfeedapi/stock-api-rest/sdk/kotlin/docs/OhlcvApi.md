# OhlcvApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1OhlcvExchangeExchangeIdHistoryGet**](OhlcvApi.md#v1OhlcvExchangeExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchange/{exchange_id}/history | Historical data by exchange |
| [**v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**](OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history | Historical data |
| [**v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**](OhlcvApi.md#v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet) | **GET** /v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest | Latest data |
| [**v1OhlcvPeriodsGet**](OhlcvApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods |


<a id="v1OhlcvExchangeExchangeIdHistoryGet"></a>
# **v1OhlcvExchangeExchangeIdHistoryGet**
> kotlin.collections.List&lt;OHLCVTimeSeriesExchangeTimeseriesItem&gt; v1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd, limit)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange. Time range is limited to 24 hours. Use &#x60;limit&#x60; to cap the number of symbol rows returned.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OhlcvApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Timeseries starting time in ISO 8601
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601
val limit : kotlin.Int = 56 // kotlin.Int | Maximum number of symbol rows to return (1-10000, default 100)
try {
    val result : kotlin.collections.List<OHLCVTimeSeriesExchangeTimeseriesItem> = apiInstance.v1OhlcvExchangeExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OhlcvApi#v1OhlcvExchangeExchangeIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OhlcvApi#v1OhlcvExchangeExchangeIdHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | |
| **timeStart** | **kotlin.String**| Timeseries starting time in ISO 8601 | |
| **timeEnd** | **kotlin.String**| Timeseries ending time in ISO 8601 | |
| **limit** | **kotlin.Int**| Maximum number of symbol rows to return (1-10000, default 100) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;OHLCVTimeSeriesExchangeTimeseriesItem&gt;**](OHLCVTimeSeriesExchangeTimeseriesItem.md)

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

<a id="v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet"></a>
# **v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet**
> kotlin.collections.List&lt;OHLCVTimeSeriesTimeseriesItem&gt; v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, timeStart, timeEnd, limit)

Historical data

Get OHLCV timeseries data returned in time ascending order.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OhlcvApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Timeseries starting time in ISO 8601
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<OHLCVTimeSeriesTimeseriesItem> = apiInstance.v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet(exchangeId, symbolId, periodId, timeStart, timeEnd, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OhlcvApi#v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OhlcvApi#v1OhlcvExchangeSymbolExchangeIdSymbolIdHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | |
| **symbolId** | **kotlin.String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | |
| **timeStart** | **kotlin.String**| Timeseries starting time in ISO 8601 | [optional] |
| **timeEnd** | **kotlin.String**| Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;OHLCVTimeSeriesTimeseriesItem&gt;**](OHLCVTimeSeriesTimeseriesItem.md)

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

<a id="v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet"></a>
# **v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet**
> kotlin.collections.List&lt;OHLCVTimeSeriesTimeseriesItem&gt; v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, limit)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OhlcvApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<OHLCVTimeSeriesTimeseriesItem> = apiInstance.v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet(exchangeId, symbolId, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OhlcvApi#v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OhlcvApi#v1OhlcvExchangeSymbolExchangeIdSymbolIdLatestGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | |
| **symbolId** | **kotlin.String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | |
| **limit** | **kotlin.Int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;OHLCVTimeSeriesTimeseriesItem&gt;**](OHLCVTimeSeriesTimeseriesItem.md)

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

<a id="v1OhlcvPeriodsGet"></a>
# **v1OhlcvPeriodsGet**
> kotlin.collections.List&lt;OHLCVTimeSeriesTimeseriesPeriod&gt; v1OhlcvPeriodsGet()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OhlcvApi()
try {
    val result : kotlin.collections.List<OHLCVTimeSeriesTimeseriesPeriod> = apiInstance.v1OhlcvPeriodsGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OhlcvApi#v1OhlcvPeriodsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OhlcvApi#v1OhlcvPeriodsGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;OHLCVTimeSeriesTimeseriesPeriod&gt;**](OHLCVTimeSeriesTimeseriesPeriod.md)

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

