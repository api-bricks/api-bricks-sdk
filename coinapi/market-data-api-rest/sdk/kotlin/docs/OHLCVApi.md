# OHLCVApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1OhlcvExchangesExchangeIdHistoryGet**](OHLCVApi.md#v1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange |
| [**v1OhlcvPeriodsGet**](OHLCVApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods |
| [**v1OhlcvSymbolIdHistoryGet**](OHLCVApi.md#v1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data |
| [**v1OhlcvSymbolIdLatestGet**](OHLCVApi.md#v1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data |


<a id="v1OhlcvExchangesExchangeIdHistoryGet"></a>
# **v1OhlcvExchangesExchangeIdHistoryGet**
> kotlin.collections.List&lt;OhlcvExchangeTimeseriesItem&gt; v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg &#x60;BITSTAMP&#x60;              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between &#x60;time_end&#x60; and &#x60;time_start&#x60; cannot be higher than 1 day. The &#x60;period_id&#x60; cannot be higher than &#x60;1DAY&#x60;. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OHLCVApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Timeseries starting time in ISO 8601
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601
try {
    val result : kotlin.collections.List<OhlcvExchangeTimeseriesItem> = apiInstance.v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OHLCVApi#v1OhlcvExchangesExchangeIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OHLCVApi#v1OhlcvExchangesExchangeIdHistoryGet")
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

### Return type

[**kotlin.collections.List&lt;OhlcvExchangeTimeseriesItem&gt;**](OhlcvExchangeTimeseriesItem.md)

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
> kotlin.collections.List&lt;V1TimeseriesPeriod&gt; v1OhlcvPeriodsGet()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OHLCVApi()
try {
    val result : kotlin.collections.List<V1TimeseriesPeriod> = apiInstance.v1OhlcvPeriodsGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OHLCVApi#v1OhlcvPeriodsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OHLCVApi#v1OhlcvPeriodsGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;V1TimeseriesPeriod&gt;**](V1TimeseriesPeriod.md)

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

<a id="v1OhlcvSymbolIdHistoryGet"></a>
# **v1OhlcvSymbolIdHistoryGet**
> kotlin.collections.List&lt;V1TimeseriesItem&gt; v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit)

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OHLCVApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Timeseries starting time in ISO 8601
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1TimeseriesItem> = apiInstance.v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OHLCVApi#v1OhlcvSymbolIdHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OHLCVApi#v1OhlcvSymbolIdHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | |
| **timeStart** | **kotlin.String**| Timeseries starting time in ISO 8601 | [optional] |
| **timeEnd** | **kotlin.String**| Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1TimeseriesItem&gt;**](V1TimeseriesItem.md)

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

<a id="v1OhlcvSymbolIdLatestGet"></a>
# **v1OhlcvSymbolIdLatestGet**
> kotlin.collections.List&lt;V1TimeseriesItem&gt; v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OHLCVApi()
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1TimeseriesItem> = apiInstance.v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OHLCVApi#v1OhlcvSymbolIdLatestGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OHLCVApi#v1OhlcvSymbolIdLatestGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | |
| **limit** | **kotlin.Int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1TimeseriesItem&gt;**](V1TimeseriesItem.md)

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

