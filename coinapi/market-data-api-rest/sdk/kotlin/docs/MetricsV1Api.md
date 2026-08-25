# MetricsV1Api

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1MetricsAssetCurrentGet**](MetricsV1Api.md#v1MetricsAssetCurrentGet) | **GET** /v1/metrics/asset/current | Current metrics for given asset |
| [**v1MetricsAssetHistoryGet**](MetricsV1Api.md#v1MetricsAssetHistoryGet) | **GET** /v1/metrics/asset/history | Historical metrics for asset |
| [**v1MetricsAssetListingGet**](MetricsV1Api.md#v1MetricsAssetListingGet) | **GET** /v1/metrics/asset/listing | Listing of all supported metrics for asset |
| [**v1MetricsExchangeCurrentGet**](MetricsV1Api.md#v1MetricsExchangeCurrentGet) | **GET** /v1/metrics/exchange/current | Current metrics for given exchange |
| [**v1MetricsExchangeHistoryGet**](MetricsV1Api.md#v1MetricsExchangeHistoryGet) | **GET** /v1/metrics/exchange/history | Historical metrics for the exchange |
| [**v1MetricsExchangeListingGet**](MetricsV1Api.md#v1MetricsExchangeListingGet) | **GET** /v1/metrics/exchange/listing | Listing of all supported exchange metrics |
| [**v1MetricsListingGet**](MetricsV1Api.md#v1MetricsListingGet) | **GET** /v1/metrics/listing | Listing of all supported metrics by CoinAPI |
| [**v1MetricsSymbolCurrentGet**](MetricsV1Api.md#v1MetricsSymbolCurrentGet) | **GET** /v1/metrics/symbol/current | Current metrics for given symbol |
| [**v1MetricsSymbolHistoryGet**](MetricsV1Api.md#v1MetricsSymbolHistoryGet) | **GET** /v1/metrics/symbol/history | Historical metrics for symbol |
| [**v1MetricsSymbolListingGet**](MetricsV1Api.md#v1MetricsSymbolListingGet) | **GET** /v1/metrics/symbol/listing | Listing of all supported metrics for symbol |


<a id="v1MetricsAssetCurrentGet"></a>
# **v1MetricsAssetCurrentGet**
> kotlin.collections.List&lt;V1GeneralData&gt; v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId)

Current metrics for given asset

Get current asset metrics.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (from the Metrics -> Listing)
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (from the Metadata -> Assets)
val assetIdExternal : kotlin.String = assetIdExternal_example // kotlin.String | Exchange asset identifier
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (from the Metadata -> Exchanges)
try {
    val result : kotlin.collections.List<V1GeneralData> = apiInstance.v1MetricsAssetCurrentGet(metricId, assetId, assetIdExternal, exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsAssetCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsAssetCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **assetId** | **kotlin.String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **assetIdExternal** | **kotlin.String**| Exchange asset identifier | [optional] |
| **exchangeId** | **kotlin.String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1GeneralData&gt;**](V1GeneralData.md)

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

<a id="v1MetricsAssetHistoryGet"></a>
# **v1MetricsAssetHistoryGet**
> kotlin.collections.List&lt;V1MetricData&gt; v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for asset

Get asset metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (from the Metrics -> Listing)
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (from the Metadata -> Exchanges)
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (from the Metadata -> Assets)
val assetIdExternal : kotlin.String = assetIdExternal_example // kotlin.String | Exchange asset identifier
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1MetricData> = apiInstance.v1MetricsAssetHistoryGet(metricId, exchangeId, assetId, assetIdExternal, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsAssetHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsAssetHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (from the Metrics -&gt; Listing) | |
| **exchangeId** | **kotlin.String**| Exchange identifier (from the Metadata -&gt; Exchanges) | |
| **assetId** | **kotlin.String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **assetIdExternal** | **kotlin.String**| Exchange asset identifier | [optional] |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1MetricData&gt;**](V1MetricData.md)

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

<a id="v1MetricsAssetListingGet"></a>
# **v1MetricsAssetListingGet**
> kotlin.collections.List&lt;V1ListingItem&gt; v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal)

Listing of all supported metrics for asset

Get data metrics for asset.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (from the Metrics -> Listing)
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (from the Metadata -> Exchanges)
val chainId : kotlin.String = chainId_example // kotlin.String | Chain identifier
val networkId : kotlin.String = networkId_example // kotlin.String | Network identifier
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (from the Metadata -> Assets)
val assetIdExternal : kotlin.String = assetIdExternal_example // kotlin.String | The asset external identifier
try {
    val result : kotlin.collections.List<V1ListingItem> = apiInstance.v1MetricsAssetListingGet(metricId, exchangeId, chainId, networkId, assetId, assetIdExternal)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsAssetListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsAssetListingGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **exchangeId** | **kotlin.String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |
| **chainId** | **kotlin.String**| Chain identifier | [optional] |
| **networkId** | **kotlin.String**| Network identifier | [optional] |
| **assetId** | **kotlin.String**| Asset identifier (from the Metadata -&gt; Assets) | [optional] |
| **assetIdExternal** | **kotlin.String**| The asset external identifier | [optional] |

### Return type

[**kotlin.collections.List&lt;V1ListingItem&gt;**](V1ListingItem.md)

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

<a id="v1MetricsExchangeCurrentGet"></a>
# **v1MetricsExchangeCurrentGet**
> kotlin.collections.List&lt;V1GeneralData&gt; v1MetricsExchangeCurrentGet(exchangeId, metricId)

Current metrics for given exchange

Get current exchange metrics values.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | The exchange identifier (from the Metadata -> Exchanges)
val metricId : kotlin.String = metricId_example // kotlin.String | The metric identifier (from the Metrics -> Listing)
try {
    val result : kotlin.collections.List<V1GeneralData> = apiInstance.v1MetricsExchangeCurrentGet(exchangeId, metricId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsExchangeCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsExchangeCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| The exchange identifier (from the Metadata -&gt; Exchanges) | |
| **metricId** | **kotlin.String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1GeneralData&gt;**](V1GeneralData.md)

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

<a id="v1MetricsExchangeHistoryGet"></a>
# **v1MetricsExchangeHistoryGet**
> kotlin.collections.List&lt;V1MetricData&gt; v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (from the Metrics -> Listing)
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (from the Metadata -> Exchanges)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1MetricData> = apiInstance.v1MetricsExchangeHistoryGet(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsExchangeHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsExchangeHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (from the Metrics -&gt; Listing) | |
| **exchangeId** | **kotlin.String**| Exchange identifier (from the Metadata -&gt; Exchanges) | |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1MetricData&gt;**](V1MetricData.md)

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

<a id="v1MetricsExchangeListingGet"></a>
# **v1MetricsExchangeListingGet**
> kotlin.collections.List&lt;V1ListingItem&gt; v1MetricsExchangeListingGet(exchangeId, metricId)

Listing of all supported exchange metrics

Get data metrics for exchange. Returns both exchange-level and symbol-level metrics. For exchange-level metrics, the &#x60;symbol_id&#x60; field will be null. For symbol-level metrics, the &#x60;symbol_id&#x60; field contains the CoinAPI symbol identifier.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | The exchange identifier (from the Metadata -> Exchanges)
val metricId : kotlin.String = metricId_example // kotlin.String | The metric identifier (from the Metrics -> Listing)
try {
    val result : kotlin.collections.List<V1ListingItem> = apiInstance.v1MetricsExchangeListingGet(exchangeId, metricId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsExchangeListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsExchangeListingGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| The exchange identifier (from the Metadata -&gt; Exchanges) | |
| **metricId** | **kotlin.String**| The metric identifier (from the Metrics -&gt; Listing) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1ListingItem&gt;**](V1ListingItem.md)

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

<a id="v1MetricsListingGet"></a>
# **v1MetricsListingGet**
> kotlin.collections.List&lt;V1Metric&gt; v1MetricsListingGet()

Listing of all supported metrics by CoinAPI

Get all data metrics.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
try {
    val result : kotlin.collections.List<V1Metric> = apiInstance.v1MetricsListingGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsListingGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;V1Metric&gt;**](V1Metric.md)

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

<a id="v1MetricsSymbolCurrentGet"></a>
# **v1MetricsSymbolCurrentGet**
> kotlin.collections.List&lt;V1GeneralData&gt; v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId)

Current metrics for given symbol

Get current symbol metrics.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (from the Metrics -> Listing)
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier (from the Metadata -> Symbols)
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange id (from the Metadata -> Exchanges)
try {
    val result : kotlin.collections.List<V1GeneralData> = apiInstance.v1MetricsSymbolCurrentGet(metricId, symbolId, exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsSymbolCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsSymbolCurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **symbolId** | **kotlin.String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] |
| **exchangeId** | **kotlin.String**| Exchange id (from the Metadata -&gt; Exchanges) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1GeneralData&gt;**](V1GeneralData.md)

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

<a id="v1MetricsSymbolHistoryGet"></a>
# **v1MetricsSymbolHistoryGet**
> kotlin.collections.List&lt;V1MetricData&gt; v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for symbol

Get symbol metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (from the Metrics -> Listing)
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier (from the Metadata -> Symbols)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`), default value is `1SEC`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<V1MetricData> = apiInstance.v1MetricsSymbolHistoryGet(metricId, symbolId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsSymbolHistoryGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsSymbolHistoryGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (from the Metrics -&gt; Listing) | |
| **symbolId** | **kotlin.String**| Symbol identifier (from the Metadata -&gt; Symbols) | |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1SEC&#x60; | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;V1MetricData&gt;**](V1MetricData.md)

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

<a id="v1MetricsSymbolListingGet"></a>
# **v1MetricsSymbolListingGet**
> kotlin.collections.List&lt;V1ListingItem&gt; v1MetricsSymbolListingGet(metricId, exchangeId, symbolId)

Listing of all supported metrics for symbol

Get data metrics for symbol. Returns only symbol-level metrics (entries that have a symbol associated). The &#x60;symbol_id&#x60; field is always populated with the CoinAPI symbol identifier.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV1Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (from the Metrics -> Listing)
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (from the Metadata -> Exchanges)
val symbolId : kotlin.String = symbolId_example // kotlin.String | Symbol identifier (from the Metadata -> Symbols)
try {
    val result : kotlin.collections.List<V1ListingItem> = apiInstance.v1MetricsSymbolListingGet(metricId, exchangeId, symbolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV1Api#v1MetricsSymbolListingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV1Api#v1MetricsSymbolListingGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (from the Metrics -&gt; Listing) | [optional] |
| **exchangeId** | **kotlin.String**| Exchange identifier (from the Metadata -&gt; Exchanges) | [optional] |
| **symbolId** | **kotlin.String**| Symbol identifier (from the Metadata -&gt; Symbols) | [optional] |

### Return type

[**kotlin.collections.List&lt;V1ListingItem&gt;**](V1ListingItem.md)

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

