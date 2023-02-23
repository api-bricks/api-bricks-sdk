# PositionsApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions


<a name="v1PositionsGet"></a>
# **v1PositionsGet**
> kotlin.collections.List&lt;Position&gt; v1PositionsGet(exchangeId)

Get open positions

Get current open positions across all or single exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = PositionsApi()
val exchangeId : kotlin.String = KRAKEN // kotlin.String | Filter the balances to the specific exchange.
try {
    val result : kotlin.collections.List<Position> = apiInstance.v1PositionsGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PositionsApi#v1PositionsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PositionsApi#v1PositionsGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **kotlin.String**| Filter the balances to the specific exchange. | [optional]

### Return type

[**kotlin.collections.List&lt;Position&gt;**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

