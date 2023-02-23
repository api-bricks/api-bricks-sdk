# BalancesApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances


<a name="v1BalancesGet"></a>
# **v1BalancesGet**
> kotlin.collections.List&lt;Balance&gt; v1BalancesGet(exchangeId)

Get balances

Get current currency balance from all or single exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BalancesApi()
val exchangeId : kotlin.String = KRAKEN // kotlin.String | Filter the balances to the specific exchange.
try {
    val result : kotlin.collections.List<Balance> = apiInstance.v1BalancesGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BalancesApi#v1BalancesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BalancesApi#v1BalancesGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **kotlin.String**| Filter the balances to the specific exchange. | [optional]

### Return type

[**kotlin.collections.List&lt;Balance&gt;**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

