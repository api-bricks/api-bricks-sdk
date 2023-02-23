# OrdersApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelAllPostWithHttpInfo**](OrdersApi.md#v1OrdersCancelAllPostWithHttpInfo) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersCancelPostWithHttpInfo**](OrdersApi.md#v1OrdersCancelPostWithHttpInfo) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
[**v1OrdersGetWithHttpInfo**](OrdersApi.md#v1OrdersGetWithHttpInfo) | **GET** /v1/orders | Get open orders
[**v1OrdersHistoryTimeStartTimeEndGet**](OrdersApi.md#v1OrdersHistoryTimeStartTimeEndGet) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
[**v1OrdersHistoryTimeStartTimeEndGetWithHttpInfo**](OrdersApi.md#v1OrdersHistoryTimeStartTimeEndGetWithHttpInfo) | **GET** /v1/orders/history/{time_start}/{time_end} | History of order changes
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
[**v1OrdersPostWithHttpInfo**](OrdersApi.md#v1OrdersPostWithHttpInfo) | **POST** /v1/orders | Send new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report
[**v1OrdersStatusClientOrderIdGetWithHttpInfo**](OrdersApi.md#v1OrdersStatusClientOrderIdGetWithHttpInfo) | **GET** /v1/orders/status/{client_order_id} | Get order execution report



## v1OrdersCancelAllPost

> v1OrdersCancelAllPost(v1OrdersCancelAllPostRequest): ApiRequest[MessageReject]

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example

```scala
// Import classes:
import 
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = OrdersApi("https://ems-gateway-aws-eu-central-1-dev.coinapi.io")
    val orderCancelAllRequest: OrderCancelAllRequest =  // OrderCancelAllRequest | OrderCancelAllRequest object.
    
    val request = apiInstance.v1OrdersCancelAllPost(orderCancelAllRequest)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrdersApi#v1OrdersCancelAllPost")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrdersApi#v1OrdersCancelAllPost")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. |

### Return type

ApiRequest[[**MessageReject**](MessageReject.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |


## v1OrdersCancelPost

> v1OrdersCancelPost(v1OrdersCancelPostRequest): ApiRequest[OrderExecutionReport]

Cancel order request

Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.

### Example

```scala
// Import classes:
import 
import 
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = OrdersApi("https://ems-gateway-aws-eu-central-1-dev.coinapi.io")
    val orderCancelSingleRequest: OrderCancelSingleRequest =  // OrderCancelSingleRequest | OrderCancelSingleRequest object.
    
    val request = apiInstance.v1OrdersCancelPost(orderCancelSingleRequest)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrdersApi#v1OrdersCancelPost")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrdersApi#v1OrdersCancelPost")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. |

### Return type

ApiRequest[[**OrderExecutionReport**](OrderExecutionReport.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The last execution report for the order for which cancelation was requested. |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |


## v1OrdersGet

> v1OrdersGet(v1OrdersGetRequest): ApiRequest[Seq[OrderExecutionReport]]

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = OrdersApi("https://ems-gateway-aws-eu-central-1-dev.coinapi.io")
    val exchangeId: String = KRAKEN // String | Filter the open orders to the specific exchange.
    
    val request = apiInstance.v1OrdersGet(exchangeId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrdersApi#v1OrdersGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrdersApi#v1OrdersGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the open orders to the specific exchange. | [optional]

### Return type

ApiRequest[[**Seq[OrderExecutionReport]**](OrderExecutionReport.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of order execution reports. |  -  |
| **490** | Filtered exchange is unreachable. |  -  |


## v1OrdersHistoryTimeStartTimeEndGet

> v1OrdersHistoryTimeStartTimeEndGet(v1OrdersHistoryTimeStartTimeEndGetRequest): ApiRequest[Seq[OrderHistory]]

History of order changes

Based on the date range, all changes registered in the orderbook.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = OrdersApi("https://ems-gateway-aws-eu-central-1-dev.coinapi.io")
    val timeStart: String = 2022-05-01T00:00:00 // String | Start date

    val timeEnd: String = 2022-05-01T12:00:00 // String | End date
    
    val request = apiInstance.v1OrdersHistoryTimeStartTimeEndGet(timeStart, timeEnd)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrdersApi#v1OrdersHistoryTimeStartTimeEndGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrdersApi#v1OrdersHistoryTimeStartTimeEndGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeStart** | **String**| Start date |
 **timeEnd** | **String**| End date |

### Return type

ApiRequest[[**Seq[OrderHistory]**](OrderHistory.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The last execution report of the requested order. |  -  |
| **400** | Orders log is not configured. |  -  |


## v1OrdersPost

> v1OrdersPost(v1OrdersPostRequest): ApiRequest[OrderExecutionReport]

Send new order

This request creating new order for the specific exchange.

### Example

```scala
// Import classes:
import 
import 
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = OrdersApi("https://ems-gateway-aws-eu-central-1-dev.coinapi.io")
    val orderNewSingleRequest: OrderNewSingleRequest =  // OrderNewSingleRequest | OrderNewSingleRequest object.
    
    val request = apiInstance.v1OrdersPost(orderNewSingleRequest)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrdersApi#v1OrdersPost")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrdersApi#v1OrdersPost")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. |

### Return type

ApiRequest[[**OrderExecutionReport**](OrderExecutionReport.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Created |  -  |
| **400** | Input model validation errors. |  -  |
| **490** | Exchange is unreachable. |  -  |
| **504** | Exchange didn&#39;t responded in the defined timeout. |  -  |


## v1OrdersStatusClientOrderIdGet

> v1OrdersStatusClientOrderIdGet(v1OrdersStatusClientOrderIdGetRequest): ApiRequest[OrderExecutionReport]

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = OrdersApi("https://ems-gateway-aws-eu-central-1-dev.coinapi.io")
    val clientOrderId: String = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b // String | The unique identifier of the order assigned by the client.
    
    val request = apiInstance.v1OrdersStatusClientOrderIdGet(clientOrderId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OrdersApi#v1OrdersStatusClientOrderIdGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OrdersApi#v1OrdersStatusClientOrderIdGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **String**| The unique identifier of the order assigned by the client. |

### Return type

ApiRequest[[**OrderExecutionReport**](OrderExecutionReport.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The last execution report of the requested order. |  -  |
| **404** | The requested order was not found. |  -  |

