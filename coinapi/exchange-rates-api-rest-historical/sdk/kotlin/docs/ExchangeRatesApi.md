# ExchangeRatesApi

All URIs are relative to *https://api-historical.exrates.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate |
| [**v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote}/history | Timeseries data |
| [**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates |
| [**v1ExchangerateHistoryPeriodsGet**](ExchangeRatesApi.md#v1ExchangerateHistoryPeriodsGet) | **GET** /v1/exchangerate/history/periods | Timeseries periods |


<a id="getSpecificRate"></a>
# **getSpecificRate**
> V1ExchangeRate getSpecificRate(assetIdBase, assetIdQuote, time)

Get specific rate

Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExchangeRatesApi()
val assetIdBase : kotlin.String = assetIdBase_example // kotlin.String | Requested exchange rate base asset identifier (from the Metadata -> Assets)
val assetIdQuote : kotlin.String = assetIdQuote_example // kotlin.String | Requested exchange rate quote asset identifier (from the Metadata -> Assets)
val time : kotlin.String = time_example // kotlin.String | Time at which exchange rate is calculated (optional, if not supplied then current rate is returned)
try {
    val result : V1ExchangeRate = apiInstance.getSpecificRate(assetIdBase, assetIdQuote, time)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExchangeRatesApi#getSpecificRate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExchangeRatesApi#getSpecificRate")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **assetIdBase** | **kotlin.String**| Requested exchange rate base asset identifier (from the Metadata -&gt; Assets) | |
| **assetIdQuote** | **kotlin.String**| Requested exchange rate quote asset identifier (from the Metadata -&gt; Assets) | |
| **time** | **kotlin.String**| Time at which exchange rate is calculated (optional, if not supplied then current rate is returned) | [optional] |

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet"></a>
# **v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet**
> kotlin.collections.List&lt;V1ExchangeRatesTimeseriesItem&gt; v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit, extendedGapFilling)

Timeseries data

Get the historical exchange rates between two assets in the form of the timeseries.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExchangeRatesApi()
val assetIdBase : kotlin.String = assetIdBase_example // kotlin.String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
val assetIdQuote : kotlin.String = assetIdQuote_example // kotlin.String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (required, e.g. `5SEC` or `1HRS`)
val timeStart : kotlin.String = timeStart_example // kotlin.String | Timeseries starting time in ISO 8601 (required)
val timeEnd : kotlin.String = timeEnd_example // kotlin.String | Timeseries ending time in ISO 8601 (required)
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
val extendedGapFilling : kotlin.Boolean = true // kotlin.Boolean | If true, enables extended gap filling that considers rates before time_start and after time_end for proper gap filling at boundaries (optional, default is false)
try {
    val result : kotlin.collections.List<V1ExchangeRatesTimeseriesItem> = apiInstance.v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(assetIdBase, assetIdQuote, periodId, timeStart, timeEnd, limit, extendedGapFilling)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExchangeRatesApi#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExchangeRatesApi#v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **assetIdBase** | **kotlin.String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | |
| **assetIdQuote** | **kotlin.String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (required, e.g. &#x60;5SEC&#x60; or &#x60;1HRS&#x60;) | [optional] |
| **timeStart** | **kotlin.String**| Timeseries starting time in ISO 8601 (required) | [optional] |
| **timeEnd** | **kotlin.String**| Timeseries ending time in ISO 8601 (required) | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |
| **extendedGapFilling** | **kotlin.Boolean**| If true, enables extended gap filling that considers rates before time_start and after time_end for proper gap filling at boundaries (optional, default is false) | [optional] [default to false] |

### Return type

[**kotlin.collections.List&lt;V1ExchangeRatesTimeseriesItem&gt;**](V1ExchangeRatesTimeseriesItem.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1ExchangerateAssetIdBaseGet"></a>
# **v1ExchangerateAssetIdBaseGet**
> V1ExchangeRates v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert, time)

Get all current rates

Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y &#x3D; 1 / X equation, for example BTC/USD &#x3D; 1 / (USD/BTC); :::

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExchangeRatesApi()
val assetIdBase : kotlin.String = assetIdBase_example // kotlin.String | Requested exchange rates base asset identifier (from the Metadata -> Assets)
val filterAssetId : kotlin.String = filterAssetId_example // kotlin.String | Comma or semicolon delimited asset identifiers used to filter response (optional)
val invert : kotlin.Boolean = true // kotlin.Boolean | True will invert all the rates (optional, if true then rates will be calculated as `rate = 1 / actual_rate` eg. `USD/BTC` as `BTC/USD`)
val time : kotlin.String = time_example // kotlin.String | Time for historical rates (optional)
try {
    val result : V1ExchangeRates = apiInstance.v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert, time)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExchangeRatesApi#v1ExchangerateAssetIdBaseGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExchangeRatesApi#v1ExchangerateAssetIdBaseGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **assetIdBase** | **kotlin.String**| Requested exchange rates base asset identifier (from the Metadata -&gt; Assets) | |
| **filterAssetId** | **kotlin.String**| Comma or semicolon delimited asset identifiers used to filter response (optional) | [optional] |
| **invert** | **kotlin.Boolean**| True will invert all the rates (optional, if true then rates will be calculated as &#x60;rate &#x3D; 1 / actual_rate&#x60; eg. &#x60;USD/BTC&#x60; as &#x60;BTC/USD&#x60;) | [optional] [default to false] |
| **time** | **kotlin.String**| Time for historical rates (optional) | [optional] |

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

<a id="v1ExchangerateHistoryPeriodsGet"></a>
# **v1ExchangerateHistoryPeriodsGet**
> kotlin.collections.List&lt;V1TimeseriesPeriod&gt; v1ExchangerateHistoryPeriodsGet()

Timeseries periods

You can also obtain historical exchange rates of any asset pair, grouped into time periods. Get full list of supported time periods available for requesting exchange rates historical timeseries data.              ## Timeseries periods Time unit | Period identifiers --- | --- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ExchangeRatesApi()
try {
    val result : kotlin.collections.List<V1TimeseriesPeriod> = apiInstance.v1ExchangerateHistoryPeriodsGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ExchangeRatesApi#v1ExchangerateHistoryPeriodsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ExchangeRatesApi#v1ExchangerateHistoryPeriodsGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;V1TimeseriesPeriod&gt;**](V1TimeseriesPeriod.md)

### Authorization


Configure APIKey:
    ApiClient.apiKey["X-CoinAPI-Key"] = ""
    ApiClient.apiKeyPrefix["X-CoinAPI-Key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

