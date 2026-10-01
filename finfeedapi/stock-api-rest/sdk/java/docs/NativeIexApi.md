# NativeIexApi

All URIs are relative to *https://api-historical.stock.finfeedapi.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1NativeIexAdminMessagesSymbolGet**](NativeIexApi.md#v1NativeIexAdminMessagesSymbolGet) | **GET** /v1/native/iex/admin/messages/{symbol} | Get Admin Messages |
| [**v1NativeIexAdminSystemEventGet**](NativeIexApi.md#v1NativeIexAdminSystemEventGet) | **GET** /v1/native/iex/admin/system-event | Get System Events |
| [**v1NativeIexLevel1QuoteSymbolGet**](NativeIexApi.md#v1NativeIexLevel1QuoteSymbolGet) | **GET** /v1/native/iex/level1-quote/{symbol} | Get Level-1 Quotes |
| [**v1NativeIexLevel2PriceLevelUpdateSymbolGet**](NativeIexApi.md#v1NativeIexLevel2PriceLevelUpdateSymbolGet) | **GET** /v1/native/iex/level2-price-level-update/{symbol} | Get Level-2 Price Level Book |
| [**v1NativeIexLevel3OrderBookSymbolGet**](NativeIexApi.md#v1NativeIexLevel3OrderBookSymbolGet) | **GET** /v1/native/iex/level3-order-book/{symbol} | Get Level-3 Order Book |
| [**v1NativeIexTradeSymbolGet**](NativeIexApi.md#v1NativeIexTradeSymbolGet) | **GET** /v1/native/iex/trade/{symbol} | Get Trades |


<a id="v1NativeIexAdminMessagesSymbolGet"></a>
# **v1NativeIexAdminMessagesSymbolGet**
> List&lt;ModelsAdminMessageModel&gt; v1NativeIexAdminMessagesSymbolGet(symbol, date, timeStart, limit)

Get Admin Messages

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
    String timeStart = "timeStart_example"; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
    Integer limit = 56; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
    try {
      List<ModelsAdminMessageModel> result = apiInstance.v1NativeIexAdminMessagesSymbolGet(symbol, date, timeStart, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexAdminMessagesSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**List&lt;ModelsAdminMessageModel&gt;**](ModelsAdminMessageModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexAdminSystemEventGet"></a>
# **v1NativeIexAdminSystemEventGet**
> List&lt;IEXSystemEventSystemEventModel&gt; v1NativeIexAdminSystemEventGet(date, timeStart, limit)

Get System Events

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
    String timeStart = "timeStart_example"; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
    Integer limit = 56; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
    try {
      List<IEXSystemEventSystemEventModel> result = apiInstance.v1NativeIexAdminSystemEventGet(date, timeStart, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexAdminSystemEventGet");
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
| **date** | **OffsetDateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**List&lt;IEXSystemEventSystemEventModel&gt;**](IEXSystemEventSystemEventModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexLevel1QuoteSymbolGet"></a>
# **v1NativeIexLevel1QuoteSymbolGet**
> List&lt;IEXQuoteUpdateQuoteUpdateModel&gt; v1NativeIexLevel1QuoteSymbolGet(symbol, date, timeStart, limit)

Get Level-1 Quotes

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
    String timeStart = "timeStart_example"; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
    Integer limit = 56; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
    try {
      List<IEXQuoteUpdateQuoteUpdateModel> result = apiInstance.v1NativeIexLevel1QuoteSymbolGet(symbol, date, timeStart, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexLevel1QuoteSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**List&lt;IEXQuoteUpdateQuoteUpdateModel&gt;**](IEXQuoteUpdateQuoteUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexLevel2PriceLevelUpdateSymbolGet"></a>
# **v1NativeIexLevel2PriceLevelUpdateSymbolGet**
> List&lt;IEXPriceLevelUpdatePriceLevelUpdateModel&gt; v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, timeStart, limit)

Get Level-2 Price Level Book

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
    String timeStart = "timeStart_example"; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
    Integer limit = 56; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
    try {
      List<IEXPriceLevelUpdatePriceLevelUpdateModel> result = apiInstance.v1NativeIexLevel2PriceLevelUpdateSymbolGet(symbol, date, timeStart, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexLevel2PriceLevelUpdateSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**List&lt;IEXPriceLevelUpdatePriceLevelUpdateModel&gt;**](IEXPriceLevelUpdatePriceLevelUpdateModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexLevel3OrderBookSymbolGet"></a>
# **v1NativeIexLevel3OrderBookSymbolGet**
> List&lt;ModelsOrderBookModel&gt; v1NativeIexLevel3OrderBookSymbolGet(symbol, date, timeStart, limit)

Get Level-3 Order Book

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
    String timeStart = "timeStart_example"; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
    Integer limit = 56; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
    try {
      List<ModelsOrderBookModel> result = apiInstance.v1NativeIexLevel3OrderBookSymbolGet(symbol, date, timeStart, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexLevel3OrderBookSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**List&lt;ModelsOrderBookModel&gt;**](ModelsOrderBookModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="v1NativeIexTradeSymbolGet"></a>
# **v1NativeIexTradeSymbolGet**
> List&lt;IEXTradeTradeModel&gt; v1NativeIexTradeSymbolGet(symbol, date, timeStart, limit)

Get Trades

Streams one UTC day. &#x60;time_start&#x60; may be a full timestamp (&#x60;2026-09-28T13:31:14.8560065Z&#x60;) or a time of day (&#x60;13:31:14.8560065Z&#x60;) when &#x60;date&#x60; is set. Events start at that instant, inclusive. Omit &#x60;limit&#x60; to stream through the end of the day.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NativeIexApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api-historical.stock.finfeedapi.com");
    
    // Configure API key authorization: APIKey
    ApiKeyAuth APIKey = (ApiKeyAuth) defaultClient.getAuthentication("APIKey");
    APIKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //APIKey.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: JWT
    HttpBearerAuth JWT = (HttpBearerAuth) defaultClient.getAuthentication("JWT");
    JWT.setBearerToken("BEARER TOKEN");

    NativeIexApi apiInstance = new NativeIexApi(defaultClient);
    String symbol = "symbol_example"; // String | The symbol identifier
    OffsetDateTime date = OffsetDateTime.now(); // OffsetDateTime | UTC day (`YYYY-MM-DD`). Optional when `time_start` includes a calendar day.
    String timeStart = "timeStart_example"; // String | Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when `date` is set.
    Integer limit = 56; // Integer | Optional cap on the number of records (1-10000). Omit to stream through the end of the day.
    try {
      List<IEXTradeTradeModel> result = apiInstance.v1NativeIexTradeSymbolGet(symbol, date, timeStart, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NativeIexApi#v1NativeIexTradeSymbolGet");
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
| **symbol** | **String**| The symbol identifier | |
| **date** | **OffsetDateTime**| UTC day (&#x60;YYYY-MM-DD&#x60;). Optional when &#x60;time_start&#x60; includes a calendar day. | [optional] |
| **timeStart** | **String**| Inclusive start. Full ISO-8601 timestamp, or a UTC time of day when &#x60;date&#x60; is set. | [optional] |
| **limit** | **Integer**| Optional cap on the number of records (1-10000). Omit to stream through the end of the day. | [optional] |

### Return type

[**List&lt;IEXTradeTradeModel&gt;**](IEXTradeTradeModel.md)

### Authorization

[APIKey](../README.md#APIKey), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

