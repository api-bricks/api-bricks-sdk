# OrderBookL3Api

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1Orderbooks3CurrentGet**](OrderBookL3Api.md#v1Orderbooks3CurrentGet) | **GET** /v1/orderbooks3/current | Current order books |
| [**v1Orderbooks3SymbolIdCurrentGet**](OrderBookL3Api.md#v1Orderbooks3SymbolIdCurrentGet) | **GET** /v1/orderbooks3/{symbol_id}/current | Current order book by symbol_id |


<a id="v1Orderbooks3CurrentGet"></a>
# **v1Orderbooks3CurrentGet**
> kotlin.collections.List&lt;V1OrderBookBase&gt; v1Orderbooks3CurrentGet(filterSymbolId, limitLevels)

Current order books

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookL3Api()
val filterSymbolId : kotlin.String = filterSymbolId_example // kotlin.String | Comma or semicolon delimited parts of symbol identifier used to filter the response.
val limitLevels : kotlin.Int = 56 // kotlin.Int | The maximum number of levels to include in the response.
try {
    val result : kotlin.collections.List<V1OrderBookBase> = apiInstance.v1Orderbooks3CurrentGet(filterSymbolId, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookL3Api#v1Orderbooks3CurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookL3Api#v1Orderbooks3CurrentGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filterSymbolId** | **kotlin.String**| Comma or semicolon delimited parts of symbol identifier used to filter the response. | [optional] |
| **limitLevels** | **kotlin.Int**| The maximum number of levels to include in the response. | [optional] |

### Return type

[**kotlin.collections.List&lt;V1OrderBookBase&gt;**](V1OrderBookBase.md)

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

<a id="v1Orderbooks3SymbolIdCurrentGet"></a>
# **v1Orderbooks3SymbolIdCurrentGet**
> V1OrderBookBase v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels)

Current order book by symbol_id

Retrieves the current L3 order book for the specified symbol. L3 order books include individual order IDs for each price level.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrderBookL3Api()
val symbolId : kotlin.String = symbolId_example // kotlin.String | The symbol ID (from the Metadata -> Symbols)
val limitLevels : kotlin.Int = 56 // kotlin.Int | The maximum number of levels to include in the response.
try {
    val result : V1OrderBookBase = apiInstance.v1Orderbooks3SymbolIdCurrentGet(symbolId, limitLevels)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrderBookL3Api#v1Orderbooks3SymbolIdCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrderBookL3Api#v1Orderbooks3SymbolIdCurrentGet")
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

