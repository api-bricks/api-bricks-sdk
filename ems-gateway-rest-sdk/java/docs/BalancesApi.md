# BalancesApi

All URIs are relative to *https://ems-gateway-aws-eu-central-1-dev.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances |


<a name="v1BalancesGet"></a>
# **v1BalancesGet**
> List&lt;Balance&gt; v1BalancesGet(exchangeId)

Get balances

Get current currency balance from all or single exchange.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.BalancesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://ems-gateway-aws-eu-central-1-dev.coinapi.io");

    BalancesApi apiInstance = new BalancesApi(defaultClient);
    String exchangeId = "KRAKEN"; // String | Filter the balances to the specific exchange.
    try {
      List<Balance> result = apiInstance.v1BalancesGet(exchangeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BalancesApi#v1BalancesGet");
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
| **exchangeId** | **String**| Filter the balances to the specific exchange. | [optional] |

### Return type

[**List&lt;Balance&gt;**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of balances. |  -  |
| **490** | Exchange is unreachable. |  -  |

