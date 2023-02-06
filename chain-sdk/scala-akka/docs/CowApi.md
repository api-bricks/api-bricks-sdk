# CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cowGetOrdersHistorical**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetOrdersHistoricalWithHttpInfo**](CowApi.md#cowGetOrdersHistoricalWithHttpInfo) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetSettlementsHistorical**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetSettlementsHistoricalWithHttpInfo**](CowApi.md#cowGetSettlementsHistoricalWithHttpInfo) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetTokensHistorical**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical)
[**cowGetTokensHistoricalWithHttpInfo**](CowApi.md#cowGetTokensHistoricalWithHttpInfo) | **GET** /dapps/cow/tokens/historical | Tokens (historical)
[**cowGetTradesHistorical**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical)
[**cowGetTradesHistoricalWithHttpInfo**](CowApi.md#cowGetTradesHistoricalWithHttpInfo) | **GET** /dapps/cow/trades/historical | Trades (historical)
[**cowGetUsersHistorical**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)
[**cowGetUsersHistoricalWithHttpInfo**](CowApi.md#cowGetUsersHistoricalWithHttpInfo) | **GET** /dapps/cow/users/historical | Users (historical)
[**cowOrdersCurrent**](CowApi.md#cowOrdersCurrent) | **GET** /dapps/cow/orders/current | Orders (current)
[**cowOrdersCurrentWithHttpInfo**](CowApi.md#cowOrdersCurrentWithHttpInfo) | **GET** /dapps/cow/orders/current | Orders (current)
[**cowSettlementsCurrent**](CowApi.md#cowSettlementsCurrent) | **GET** /dapps/cow/settlements/current | Settlements (current)
[**cowSettlementsCurrentWithHttpInfo**](CowApi.md#cowSettlementsCurrentWithHttpInfo) | **GET** /dapps/cow/settlements/current | Settlements (current)
[**cowTokensCurrent**](CowApi.md#cowTokensCurrent) | **GET** /dapps/cow/tokens/current | Tokens (current)
[**cowTokensCurrentWithHttpInfo**](CowApi.md#cowTokensCurrentWithHttpInfo) | **GET** /dapps/cow/tokens/current | Tokens (current)
[**cowTradesCurrent**](CowApi.md#cowTradesCurrent) | **GET** /dapps/cow/trades/current | Trades (current)
[**cowTradesCurrentWithHttpInfo**](CowApi.md#cowTradesCurrentWithHttpInfo) | **GET** /dapps/cow/trades/current | Trades (current)
[**cowUsersCurrent**](CowApi.md#cowUsersCurrent) | **GET** /dapps/cow/users/current | Users (current)
[**cowUsersCurrentWithHttpInfo**](CowApi.md#cowUsersCurrentWithHttpInfo) | **GET** /dapps/cow/users/current | Users (current)



## cowGetOrdersHistorical

> cowGetOrdersHistorical(cowGetOrdersHistoricalRequest): ApiRequest[Seq[OrderDTO]]

Orders (historical)

Gets orders.

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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | User's address.
    
    val request = apiInstance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetOrdersHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetOrdersHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**| User&#39;s address. | [optional]

### Return type

ApiRequest[[**Seq[OrderDTO]**](OrderDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetSettlementsHistorical

> cowGetSettlementsHistorical(cowGetSettlementsHistoricalRequest): ApiRequest[Seq[SettlementDTO]]

Settlements (historical)

Gets settlements.

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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | Transaction hash.
    
    val request = apiInstance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetSettlementsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetSettlementsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**| Transaction hash. | [optional]

### Return type

ApiRequest[[**Seq[SettlementDTO]**](SettlementDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetTokensHistorical

> cowGetTokensHistorical(cowGetTokensHistoricalRequest): ApiRequest[Seq[TokenDTO]]

Tokens (historical)

Gets tokens.

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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | Token's address.

    val address: String = address_example // String | Token's address.

    val name: String = name_example // String | Token name fetched by ERC20 contract call.

    val symbol: String = symbol_example // String | Token symbol fetched by contract call.
    
    val request = apiInstance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetTokensHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetTokensHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**| Token&#39;s address. | [optional]
 **address** | **String**| Token&#39;s address. | [optional]
 **name** | **String**| Token name fetched by ERC20 contract call. | [optional]
 **symbol** | **String**| Token symbol fetched by contract call. | [optional]

### Return type

ApiRequest[[**Seq[TokenDTO]**](TokenDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetTradesHistorical

> cowGetTradesHistorical(cowGetTradesHistoricalRequest): ApiRequest[Seq[TradeDTO]]

Trades (historical)

Gets trades.

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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | Identifier, format: (order id)|(transaction hash)|(event index).

    val sellToken: String = sellToken_example // String | Address of token that is sold.

    val buyToken: String = buyToken_example // String | Address of token that is bought.
    
    val request = apiInstance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetTradesHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetTradesHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional]
 **sellToken** | **String**| Address of token that is sold. | [optional]
 **buyToken** | **String**| Address of token that is bought. | [optional]

### Return type

ApiRequest[[**Seq[TradeDTO]**](TradeDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetUsersHistorical

> cowGetUsersHistorical(cowGetUsersHistoricalRequest): ApiRequest[Seq[UserDTO]]

Users (historical)

Gets users.

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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | User's address.

    val address: String = address_example // String | User's address.
    
    val request = apiInstance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetUsersHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetUsersHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**| User&#39;s address. | [optional]
 **address** | **String**| User&#39;s address. | [optional]

### Return type

ApiRequest[[**Seq[UserDTO]**](UserDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowOrdersCurrent

> cowOrdersCurrent(): ApiRequest[Seq[OrderDTO]]

Orders (current)

Gets orders.

### Example

```scala
// Import classes:
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
    val apiInstance = CowApi("https://onchain.coinapi.io")    
    val request = apiInstance.cowOrdersCurrent()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowOrdersCurrent")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowOrdersCurrent")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[OrderDTO]**](OrderDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowSettlementsCurrent

> cowSettlementsCurrent(): ApiRequest[Seq[SettlementDTO]]

Settlements (current)

Gets settlements.

### Example

```scala
// Import classes:
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
    val apiInstance = CowApi("https://onchain.coinapi.io")    
    val request = apiInstance.cowSettlementsCurrent()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowSettlementsCurrent")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowSettlementsCurrent")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[SettlementDTO]**](SettlementDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowTokensCurrent

> cowTokensCurrent(): ApiRequest[Seq[TokenDTO]]

Tokens (current)

Gets tokens.

### Example

```scala
// Import classes:
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
    val apiInstance = CowApi("https://onchain.coinapi.io")    
    val request = apiInstance.cowTokensCurrent()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowTokensCurrent")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowTokensCurrent")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[TokenDTO]**](TokenDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowTradesCurrent

> cowTradesCurrent(): ApiRequest[Seq[TradeDTO]]

Trades (current)

Gets trades.

### Example

```scala
// Import classes:
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
    val apiInstance = CowApi("https://onchain.coinapi.io")    
    val request = apiInstance.cowTradesCurrent()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowTradesCurrent")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowTradesCurrent")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[TradeDTO]**](TradeDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowUsersCurrent

> cowUsersCurrent(): ApiRequest[Seq[UserDTO]]

Users (current)

Gets users.

### Example

```scala
// Import classes:
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
    val apiInstance = CowApi("https://onchain.coinapi.io")    
    val request = apiInstance.cowUsersCurrent()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowUsersCurrent")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowUsersCurrent")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[UserDTO]**](UserDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

