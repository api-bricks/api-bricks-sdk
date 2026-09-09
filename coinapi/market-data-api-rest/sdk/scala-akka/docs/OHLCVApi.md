# OHLCVApi

All URIs are relative to *https://rest.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OhlcvExchangesExchangeIdHistoryGet**](OHLCVApi.md#v1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**v1OhlcvExchangesExchangeIdHistoryGetWithHttpInfo**](OHLCVApi.md#v1OhlcvExchangesExchangeIdHistoryGetWithHttpInfo) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange
[**v1OhlcvPeriodsGet**](OHLCVApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods
[**v1OhlcvPeriodsGetWithHttpInfo**](OHLCVApi.md#v1OhlcvPeriodsGetWithHttpInfo) | **GET** /v1/ohlcv/periods | List all periods
[**v1OhlcvSymbolIdHistoryGet**](OHLCVApi.md#v1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**v1OhlcvSymbolIdHistoryGetWithHttpInfo**](OHLCVApi.md#v1OhlcvSymbolIdHistoryGetWithHttpInfo) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data
[**v1OhlcvSymbolIdLatestGet**](OHLCVApi.md#v1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data
[**v1OhlcvSymbolIdLatestGetWithHttpInfo**](OHLCVApi.md#v1OhlcvSymbolIdLatestGetWithHttpInfo) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data



## v1OhlcvExchangesExchangeIdHistoryGet

> v1OhlcvExchangesExchangeIdHistoryGet(v1OhlcvExchangesExchangeIdHistoryGetRequest): ApiRequest[Seq[ExchangeTimeseriesItem]]

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg &#x60;BITSTAMP&#x60;              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between &#x60;time_end&#x60; and &#x60;time_start&#x60; cannot be higher than 1 day. The &#x60;period_id&#x60; cannot be higher than &#x60;1DAY&#x60;. :::

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = OHLCVApi("https://rest.coinapi.io")
    val exchangeId: String = exchangeId_example // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)

    val timeStart: String = timeStart_example // String | Timeseries starting time in ISO 8601

    val timeEnd: String = timeEnd_example // String | Timeseries ending time in ISO 8601
    
    val request = apiInstance.v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OHLCVApi#v1OhlcvExchangesExchangeIdHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OHLCVApi#v1OhlcvExchangesExchangeIdHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) |
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) |
 **timeStart** | **String**| Timeseries starting time in ISO 8601 |
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 |

### Return type

ApiRequest[[**Seq[ExchangeTimeseriesItem]**](ExchangeTimeseriesItem.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1OhlcvPeriodsGet

> v1OhlcvPeriodsGet(): ApiRequest[Seq[TimeseriesPeriod]]

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = OHLCVApi("https://rest.coinapi.io")    
    val request = apiInstance.v1OhlcvPeriodsGet()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OHLCVApi#v1OhlcvPeriodsGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OHLCVApi#v1OhlcvPeriodsGet")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[TimeseriesPeriod]**](TimeseriesPeriod.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1OhlcvSymbolIdHistoryGet

> v1OhlcvSymbolIdHistoryGet(v1OhlcvSymbolIdHistoryGetRequest): ApiRequest[Seq[TimeseriesItem]]

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = OHLCVApi("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)

    val timeStart: String = timeStart_example // String | Timeseries starting time in ISO 8601

    val timeEnd: String = timeEnd_example // String | Timeseries ending time in ISO 8601

    val limit: Int = 56 // Int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OHLCVApi#v1OhlcvSymbolIdHistoryGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OHLCVApi#v1OhlcvSymbolIdHistoryGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) |
 **timeStart** | **String**| Timeseries starting time in ISO 8601 | [optional]
 **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional]
 **limit** | **Int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[[**Seq[TimeseriesItem]**](TimeseriesItem.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## v1OhlcvSymbolIdLatestGet

> v1OhlcvSymbolIdLatestGet(v1OhlcvSymbolIdLatestGetRequest): ApiRequest[Seq[TimeseriesItem]]

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

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
    
    // Configure API key authorization: APIKey
    implicit val APIKey: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure HTTP bearer authorization: JWT
    implicit val JWT: BearerToken = BearerToken("BEARER TOKEN")

    val apiInvoker = ApiInvoker()
    val apiInstance = OHLCVApi("https://rest.coinapi.io")
    val symbolId: String = symbolId_example // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)

    val periodId: String = periodId_example // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)

    val limit: Int = 56 // Int | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    
    val request = apiInstance.v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling OHLCVApi#v1OhlcvSymbolIdLatestGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling OHLCVApi#v1OhlcvSymbolIdLatestGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) |
 **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) |
 **limit** | **Int**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional]

### Return type

ApiRequest[[**Seq[TimeseriesItem]**](TimeseriesItem.md)]


### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

