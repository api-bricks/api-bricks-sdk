# MetricsV2Api

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**marketdataListMetricsV2AssetHistory**](MetricsV2Api.md#marketdataListMetricsV2AssetHistory) | **GET** /v2/metrics/asset/history | Historical metrics for the asset |
| [**marketdataListMetricsV2AssetListing**](MetricsV2Api.md#marketdataListMetricsV2AssetListing) | **GET** /v2/metrics/asset/listing | Listing of metrics available for specific asset |
| [**marketdataListMetricsV2ChainHistory**](MetricsV2Api.md#marketdataListMetricsV2ChainHistory) | **GET** /v2/metrics/chain/history | Historical metrics for the chain |
| [**marketdataListMetricsV2ChainListing**](MetricsV2Api.md#marketdataListMetricsV2ChainListing) | **GET** /v2/metrics/chain/listing | Listing of metrics available for specific chain |
| [**marketdataListMetricsV2ExchangeHistory**](MetricsV2Api.md#marketdataListMetricsV2ExchangeHistory) | **GET** /v2/metrics/exchange/history | Historical metrics for the exchange |
| [**marketdataListMetricsV2ExchangeListing**](MetricsV2Api.md#marketdataListMetricsV2ExchangeListing) | **GET** /v2/metrics/exchange/listing | Listing of metrics available for specific exchange |
| [**marketdataListMetricsV2Listing**](MetricsV2Api.md#marketdataListMetricsV2Listing) | **GET** /v2/metrics/listing | Listing of all supported metrics |


<a id="marketdataListMetricsV2AssetHistory"></a>
# **marketdataListMetricsV2AssetHistory**
> kotlin.collections.List&lt;kotlin.Any&gt; marketdataListMetricsV2AssetHistory(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the asset

Get asset metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (e.g., `USDC`, `USDT`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.marketdataListMetricsV2AssetHistory(metricId, assetId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#marketdataListMetricsV2AssetHistory")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#marketdataListMetricsV2AssetHistory")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **assetId** | **kotlin.String**| Asset identifier (e.g., &#x60;USDC&#x60;, &#x60;USDT&#x60;) | |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;kotlin.Any&gt;**](kotlin.Any.md)

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

<a id="marketdataListMetricsV2AssetListing"></a>
# **marketdataListMetricsV2AssetListing**
> kotlin.collections.List&lt;V1MetricInfo&gt; marketdataListMetricsV2AssetListing(assetId)

Listing of metrics available for specific asset

Get all metrics that are actually available for the specified asset.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val assetId : kotlin.String = assetId_example // kotlin.String | Asset identifier (e.g., USDC, USDT)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.marketdataListMetricsV2AssetListing(assetId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#marketdataListMetricsV2AssetListing")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#marketdataListMetricsV2AssetListing")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **assetId** | **kotlin.String**| Asset identifier (e.g., USDC, USDT) | |

### Return type

[**kotlin.collections.List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

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

<a id="marketdataListMetricsV2ChainHistory"></a>
# **marketdataListMetricsV2ChainHistory**
> kotlin.collections.List&lt;kotlin.Any&gt; marketdataListMetricsV2ChainHistory(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the chain

Get chain metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val chainId : kotlin.String = chainId_example // kotlin.String | Chain identifier (e.g., `Ethereum`, `Arbitrum`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.marketdataListMetricsV2ChainHistory(metricId, chainId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#marketdataListMetricsV2ChainHistory")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#marketdataListMetricsV2ChainHistory")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **chainId** | **kotlin.String**| Chain identifier (e.g., &#x60;Ethereum&#x60;, &#x60;Arbitrum&#x60;) | |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;kotlin.Any&gt;**](kotlin.Any.md)

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

<a id="marketdataListMetricsV2ChainListing"></a>
# **marketdataListMetricsV2ChainListing**
> kotlin.collections.List&lt;V1MetricInfo&gt; marketdataListMetricsV2ChainListing(chainId)

Listing of metrics available for specific chain

Get all metrics that are actually available for the specified blockchain chain.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain identifier (e.g., ETHEREUM, ARBITRUM)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.marketdataListMetricsV2ChainListing(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#marketdataListMetricsV2ChainListing")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#marketdataListMetricsV2ChainListing")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chainId** | **kotlin.String**| Chain identifier (e.g., ETHEREUM, ARBITRUM) | |

### Return type

[**kotlin.collections.List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

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

<a id="marketdataListMetricsV2ExchangeHistory"></a>
# **marketdataListMetricsV2ExchangeHistory**
> kotlin.collections.List&lt;kotlin.Any&gt; marketdataListMetricsV2ExchangeHistory(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)

Historical metrics for the exchange

Get exchange metrics history.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val metricId : kotlin.String = metricId_example // kotlin.String | Metric identifier (e.g., `TVL`, `STABLES_BRIDGED_USD`)
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (e.g., `BINANCE`, `UNISWAP-V3-ETHEREUM`)
val timeStart : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Starting time in ISO 8601
val timeEnd : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | Ending time in ISO 8601
val timeFormat : kotlin.String = timeFormat_example // kotlin.String | If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec)
val periodId : kotlin.String = periodId_example // kotlin.String | Identifier of requested timeseries period (e.g. `1MIN` or `2MTH`), default value is `1MIN`
val limit : kotlin.Int = 56 // kotlin.Int | Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
try {
    val result : kotlin.collections.List<kotlin.Any> = apiInstance.marketdataListMetricsV2ExchangeHistory(metricId, exchangeId, timeStart, timeEnd, timeFormat, periodId, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#marketdataListMetricsV2ExchangeHistory")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#marketdataListMetricsV2ExchangeHistory")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **metricId** | **kotlin.String**| Metric identifier (e.g., &#x60;TVL&#x60;, &#x60;STABLES_BRIDGED_USD&#x60;) | |
| **exchangeId** | **kotlin.String**| Exchange identifier (e.g., &#x60;BINANCE&#x60;, &#x60;UNISWAP-V3-ETHEREUM&#x60;) | |
| **timeStart** | **java.time.OffsetDateTime**| Starting time in ISO 8601 | [optional] |
| **timeEnd** | **java.time.OffsetDateTime**| Ending time in ISO 8601 | [optional] |
| **timeFormat** | **kotlin.String**| If set, returned values will be in unix timestamp format (valid values: unix_sec, unix_millisec, unix_microsec, unix_nanosec) | [optional] |
| **periodId** | **kotlin.String**| Identifier of requested timeseries period (e.g. &#x60;1MIN&#x60; or &#x60;2MTH&#x60;), default value is &#x60;1MIN&#x60; | [optional] |
| **limit** | **kotlin.Int**| Amount of items to return (optional, mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**kotlin.collections.List&lt;kotlin.Any&gt;**](kotlin.Any.md)

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

<a id="marketdataListMetricsV2ExchangeListing"></a>
# **marketdataListMetricsV2ExchangeListing**
> kotlin.collections.List&lt;V1MetricInfo&gt; marketdataListMetricsV2ExchangeListing(exchangeId)

Listing of metrics available for specific exchange

Get all metrics that are actually available for the specified exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM)
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.marketdataListMetricsV2ExchangeListing(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#marketdataListMetricsV2ExchangeListing")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#marketdataListMetricsV2ExchangeListing")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| Exchange identifier (e.g., BINANCE, UNISWAP-V3-ETHEREUM) | |

### Return type

[**kotlin.collections.List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

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

<a id="marketdataListMetricsV2Listing"></a>
# **marketdataListMetricsV2Listing**
> kotlin.collections.List&lt;V1MetricInfo&gt; marketdataListMetricsV2Listing()

Listing of all supported metrics

Get all metrics available in the system.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetricsV2Api()
try {
    val result : kotlin.collections.List<V1MetricInfo> = apiInstance.marketdataListMetricsV2Listing()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetricsV2Api#marketdataListMetricsV2Listing")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetricsV2Api#marketdataListMetricsV2Listing")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;V1MetricInfo&gt;**](V1MetricInfo.md)

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

