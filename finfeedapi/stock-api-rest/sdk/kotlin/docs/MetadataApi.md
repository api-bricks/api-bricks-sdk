# MetadataApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1ExchangesGet**](MetadataApi.md#v1ExchangesGet) | **GET** /v1/exchanges | List of exchanges |
| [**v1SymbolsExchangeIdGet**](MetadataApi.md#v1SymbolsExchangeIdGet) | **GET** /v1/symbols/{exchange_id} | List of symbols for the exchange |


<a id="v1ExchangesGet"></a>
# **v1ExchangesGet**
> kotlin.collections.List&lt;FinFeedAPIExchangeModel&gt; v1ExchangesGet()

List of exchanges

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
try {
    val result : kotlin.collections.List<FinFeedAPIExchangeModel> = apiInstance.v1ExchangesGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1ExchangesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1ExchangesGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;FinFeedAPIExchangeModel&gt;**](FinFeedAPIExchangeModel.md)

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

<a id="v1SymbolsExchangeIdGet"></a>
# **v1SymbolsExchangeIdGet**
> kotlin.collections.List&lt;FinFeedAPISymbolModel&gt; v1SymbolsExchangeIdGet(exchangeId, filterSymbolId, limit, page)

List of symbols for the exchange

Results are paginated. Use &#x60;limit&#x60; and &#x60;page&#x60; to control page size and offset (default limit: 100, max: 10000, default page: 1).

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = MetadataApi()
val exchangeId : kotlin.String = exchangeId_example // kotlin.String | The ID of the exchange (from the Metadata -> Exchanges)
val filterSymbolId : kotlin.String = filterSymbolId_example // kotlin.String | Comma or semicolon delimited symbol identifiers used to filter response (optional, eg. `TSLA` or `TSLA,NVDA`)
val limit : kotlin.Int = 56 // kotlin.Int | Maximum number of symbols to return (1-10000, default 100)
val page : kotlin.Int = 56 // kotlin.Int | Page number (1-based, default 1)
try {
    val result : kotlin.collections.List<FinFeedAPISymbolModel> = apiInstance.v1SymbolsExchangeIdGet(exchangeId, filterSymbolId, limit, page)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MetadataApi#v1SymbolsExchangeIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MetadataApi#v1SymbolsExchangeIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **exchangeId** | **kotlin.String**| The ID of the exchange (from the Metadata -&gt; Exchanges) | |
| **filterSymbolId** | **kotlin.String**| Comma or semicolon delimited symbol identifiers used to filter response (optional, eg. &#x60;TSLA&#x60; or &#x60;TSLA,NVDA&#x60;) | [optional] |
| **limit** | **kotlin.Int**| Maximum number of symbols to return (1-10000, default 100) | [optional] [default to 100] |
| **page** | **kotlin.Int**| Page number (1-based, default 1) | [optional] [default to 1] |

### Return type

[**kotlin.collections.List&lt;FinFeedAPISymbolModel&gt;**](FinFeedAPISymbolModel.md)

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

