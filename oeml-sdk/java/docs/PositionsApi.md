# PositionsApi

All URIs are relative to *https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PositionsGet**](PositionsApi.md#v1PositionsGet) | **GET** /v1/positions | Get open positions


<a name="v1PositionsGet"></a>
# **v1PositionsGet**
> List&lt;Position&gt; v1PositionsGet(exchangeId)

Get open positions

Get current open positions across all or single exchange.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.PositionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io");

    PositionsApi apiInstance = new PositionsApi(defaultClient);
    String exchangeId = "KRAKEN"; // String | Filter the balances to the specific exchange.
    try {
      List<Position> result = apiInstance.v1PositionsGet(exchangeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PositionsApi#v1PositionsGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the balances to the specific exchange. | [optional]

### Return type

[**List&lt;Position&gt;**](Position.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Collection of positons. |  -  |
**490** | Exchange is unreachable. |  -  |

