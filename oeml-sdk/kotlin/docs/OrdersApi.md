# OrdersApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


<a name="v1OrdersCancelAllPost"></a>
# **v1OrdersCancelAllPost**
> Message v1OrdersCancelAllPost(orderCancelAllRequest)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val orderCancelAllRequest : OrderCancelAllRequest =  // OrderCancelAllRequest | OrderCancelAllRequest object.
try {
    val result : Message = apiInstance.v1OrdersCancelAllPost(orderCancelAllRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersCancelAllPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersCancelAllPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. |

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

<a name="v1OrdersCancelPost"></a>
# **v1OrdersCancelPost**
> OrderExecutionReport v1OrdersCancelPost(orderCancelSingleRequest)

Cancel order request

Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val orderCancelSingleRequest : OrderCancelSingleRequest =  // OrderCancelSingleRequest | OrderCancelSingleRequest object.
try {
    val result : OrderExecutionReport = apiInstance.v1OrdersCancelPost(orderCancelSingleRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersCancelPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersCancelPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

<a name="v1OrdersGet"></a>
# **v1OrdersGet**
> kotlin.collections.List&lt;OrderExecutionReport&gt; v1OrdersGet(exchangeId)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val exchangeId : kotlin.String = KRAKEN // kotlin.String | Filter the open orders to the specific exchange.
try {
    val result : kotlin.collections.List<OrderExecutionReport> = apiInstance.v1OrdersGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **kotlin.String**| Filter the open orders to the specific exchange. | [optional]

### Return type

[**kotlin.collections.List&lt;OrderExecutionReport&gt;**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

<a name="v1OrdersPost"></a>
# **v1OrdersPost**
> OrderExecutionReport v1OrdersPost(orderNewSingleRequest)

Send new order

This request creating new order for the specific exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val orderNewSingleRequest : OrderNewSingleRequest =  // OrderNewSingleRequest | OrderNewSingleRequest object.
try {
    val result : OrderExecutionReport = apiInstance.v1OrdersPost(orderNewSingleRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

<a name="v1OrdersStatusClientOrderIdGet"></a>
# **v1OrdersStatusClientOrderIdGet**
> OrderExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val clientOrderId : kotlin.String = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b // kotlin.String | The unique identifier of the order assigned by the client.
try {
    val result : OrderExecutionReport = apiInstance.v1OrdersStatusClientOrderIdGet(clientOrderId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersStatusClientOrderIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersStatusClientOrderIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **kotlin.String**| The unique identifier of the order assigned by the client. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

