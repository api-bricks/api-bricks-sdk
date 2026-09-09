# OhlcvApi

All URIs are relative to *https://rest.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1OhlcvExchangesExchangeIdHistoryGet**](OhlcvApi.md#v1OhlcvExchangesExchangeIdHistoryGet) | **GET** /v1/ohlcv/exchanges/{exchange_id}/history | Historical data by exchange |
| [**v1OhlcvPeriodsGet**](OhlcvApi.md#v1OhlcvPeriodsGet) | **GET** /v1/ohlcv/periods | List all periods |
| [**v1OhlcvSymbolIdHistoryGet**](OhlcvApi.md#v1OhlcvSymbolIdHistoryGet) | **GET** /v1/ohlcv/{symbol_id}/history | Historical data |
| [**v1OhlcvSymbolIdLatestGet**](OhlcvApi.md#v1OhlcvSymbolIdLatestGet) | **GET** /v1/ohlcv/{symbol_id}/latest | Latest data |


<a id="v1OhlcvExchangesExchangeIdHistoryGet"></a>
# **v1OhlcvExchangesExchangeIdHistoryGet**
> List&lt;OhlcvExchangeTimeseriesItem&gt; v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd)

Historical data by exchange

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange eg &#x60;BITSTAMP&#x60;              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. The difference between &#x60;time_end&#x60; and &#x60;time_start&#x60; cannot be higher than 1 day. The &#x60;period_id&#x60; cannot be higher than &#x60;1DAY&#x60;. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OhlcvApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    OhlcvApi apiInstance = new OhlcvApi(defaultClient);
    String exchangeId = "exchangeId_example"; // String | Exchange identifier of requested timeseries (from the Metadata -> Exchanges)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `1DAY`)
    String timeStart = "timeStart_example"; // String | Timeseries starting time in ISO 8601
    String timeEnd = "timeEnd_example"; // String | Timeseries ending time in ISO 8601
    try {
      List<OhlcvExchangeTimeseriesItem> result = apiInstance.v1OhlcvExchangesExchangeIdHistoryGet(exchangeId, periodId, timeStart, timeEnd);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OhlcvApi#v1OhlcvExchangesExchangeIdHistoryGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **exchangeId** | **String**| Exchange identifier of requested timeseries (from the Metadata -&gt; Exchanges) | |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;1DAY&#x60;) | |
| **timeStart** | **String**| Timeseries starting time in ISO 8601 | |
| **timeEnd** | **String**| Timeseries ending time in ISO 8601 | |

### Return type

[**List&lt;OhlcvExchangeTimeseriesItem&gt;**](OhlcvExchangeTimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1OhlcvPeriodsGet"></a>
# **v1OhlcvPeriodsGet**
> List&lt;V1TimeseriesPeriod&gt; v1OhlcvPeriodsGet()

List all periods

Get full list of supported time periods available for requesting OHLCV timeseries data.              ### Available periods              Time unit | Period identifiers --------- | ----------- Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS              :::tip You can assume that we will not remove any periods from this response, however, we may add new ones. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OhlcvApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    OhlcvApi apiInstance = new OhlcvApi(defaultClient);
    try {
      List<V1TimeseriesPeriod> result = apiInstance.v1OhlcvPeriodsGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OhlcvApi#v1OhlcvPeriodsGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;V1TimeseriesPeriod&gt;**](V1TimeseriesPeriod.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1OhlcvSymbolIdHistoryGet"></a>
# **v1OhlcvSymbolIdHistoryGet**
> List&lt;V1TimeseriesItem&gt; v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit)

Historical data

Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist.              :::info The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OhlcvApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    OhlcvApi apiInstance = new OhlcvApi(defaultClient);
    String symbolId = "symbolId_example"; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
    String timeStart = "timeStart_example"; // String | Timeseries starting time in ISO 8601
    String timeEnd = "timeEnd_example"; // String | Timeseries ending time in ISO 8601
    Integer limit = 100; // Integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<V1TimeseriesItem> result = apiInstance.v1OhlcvSymbolIdHistoryGet(symbolId, periodId, timeStart, timeEnd, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OhlcvApi#v1OhlcvSymbolIdHistoryGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | |
| **timeStart** | **String**| Timeseries starting time in ISO 8601 | [optional] |
| **timeEnd** | **String**| Timeseries ending time in ISO 8601 | [optional] |
| **limit** | **Integer**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1TimeseriesItem&gt;**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1OhlcvSymbolIdLatestGet"></a>
# **v1OhlcvSymbolIdLatestGet**
> List&lt;V1TimeseriesItem&gt; v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit)

Latest data

Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg &#x60;BITSTAMP_SPOT_BTC_USD&#x60;, if you need to query timeseries by asset pairs eg. &#x60;BTC/USD&#x60;, then please reffer to the Exchange Rates Timeseries data              :::info OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted &#x60;time_start&#x60; and &#x60;time_end&#x60; parameters.  The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay. :::

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OhlcvApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://rest.coinapi.io");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    OhlcvApi apiInstance = new OhlcvApi(defaultClient);
    String symbolId = "symbolId_example"; // String | Symbol identifier of requested timeseries (from the Metadata -> Symbols)
    String periodId = "periodId_example"; // String | Identifier of requested timeseries period (e.g. `5SEC` or `2MTH`)
    Integer limit = 100; // Integer | Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request)
    try {
      List<V1TimeseriesItem> result = apiInstance.v1OhlcvSymbolIdLatestGet(symbolId, periodId, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OhlcvApi#v1OhlcvSymbolIdLatestGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **symbolId** | **String**| Symbol identifier of requested timeseries (from the Metadata -&gt; Symbols) | |
| **periodId** | **String**| Identifier of requested timeseries period (e.g. &#x60;5SEC&#x60; or &#x60;2MTH&#x60;) | |
| **limit** | **Integer**| Amount of items to return (mininum is 1, maximum is 100000, default value is 100, if the parameter is used then every 100 output items are counted as one request) | [optional] [default to 100] |

### Return type

[**List&lt;V1TimeseriesItem&gt;**](V1TimeseriesItem.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

