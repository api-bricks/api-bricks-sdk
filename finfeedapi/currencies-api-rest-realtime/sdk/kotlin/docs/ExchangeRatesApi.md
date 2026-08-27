# ExchangeRatesApi

All URIs are relative to *https://api-realtime.fx.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getSpecificRate**](ExchangeRatesApi.md#getSpecificRate) | **GET** /v1/exchangerate/{asset_id_base}/{asset_id_quote} | Get specific rate |
| [**v1ExchangerateAssetIdBaseGet**](ExchangeRatesApi.md#v1ExchangerateAssetIdBaseGet) | **GET** /v1/exchangerate/{asset_id_base} | Get all current rates |


<a id="getSpecificRate"></a>
# **getSpecificRate**
> V1ExchangeRate getSpecificRate(assetIdBase, assetIdQuote)

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
try {
    val result : V1ExchangeRate = apiInstance.getSpecificRate(assetIdBase, assetIdQuote)
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

### Return type

[**V1ExchangeRate**](V1ExchangeRate.md)

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

<a id="v1ExchangerateAssetIdBaseGet"></a>
# **v1ExchangerateAssetIdBaseGet**
> V1ExchangeRates v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert)

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
try {
    val result : V1ExchangeRates = apiInstance.v1ExchangerateAssetIdBaseGet(assetIdBase, filterAssetId, invert)
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

### Return type

[**V1ExchangeRates**](V1ExchangeRates.md)

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

