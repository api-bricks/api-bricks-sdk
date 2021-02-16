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
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    OrderCancelAllRequest orderCancelAllRequest = new OrderCancelAllRequest(); // OrderCancelAllRequest | OrderCancelAllRequest object.
    try {
      Message result = apiInstance.v1OrdersCancelAllPost(orderCancelAllRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#v1OrdersCancelAllPost");
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
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)| OrderCancelAllRequest object. |

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Result |  -  |
**400** | Input model validation errors. |  -  |
**490** | Exchange is unreachable. |  -  |

<a name="v1OrdersCancelPost"></a>
# **v1OrdersCancelPost**
> OrderExecutionReport v1OrdersCancelPost(orderCancelSingleRequest)

Cancel order request

Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    OrderCancelSingleRequest orderCancelSingleRequest = new OrderCancelSingleRequest(); // OrderCancelSingleRequest | OrderCancelSingleRequest object.
    try {
      OrderExecutionReport result = apiInstance.v1OrdersCancelPost(orderCancelSingleRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#v1OrdersCancelPost");
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
 **orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)| OrderCancelSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The last execution report for the order for which cancelation was requested. |  -  |
**400** | Input model validation errors. |  -  |
**490** | Exchange is unreachable. |  -  |

<a name="v1OrdersGet"></a>
# **v1OrdersGet**
> List&lt;OrderExecutionReport&gt; v1OrdersGet(exchangeId)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    String exchangeId = "KRAKEN"; // String | Filter the open orders to the specific exchange.
    try {
      List<OrderExecutionReport> result = apiInstance.v1OrdersGet(exchangeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#v1OrdersGet");
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
 **exchangeId** | **String**| Filter the open orders to the specific exchange. | [optional]

### Return type

[**List&lt;OrderExecutionReport&gt;**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Collection of order execution reports. |  -  |
**490** | Filtered exchange is unreachable. |  -  |

<a name="v1OrdersPost"></a>
# **v1OrdersPost**
> OrderExecutionReport v1OrdersPost(orderNewSingleRequest)

Send new order

This request creating new order for the specific exchange.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    OrderNewSingleRequest orderNewSingleRequest = new OrderNewSingleRequest(); // OrderNewSingleRequest | OrderNewSingleRequest object.
    try {
      OrderExecutionReport result = apiInstance.v1OrdersPost(orderNewSingleRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#v1OrdersPost");
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
 **orderNewSingleRequest** | [**OrderNewSingleRequest**](OrderNewSingleRequest.md)| OrderNewSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Created |  -  |
**400** | Input model validation errors. |  -  |
**490** | Exchange is unreachable. |  -  |
**504** | Exchange didn&#39;t responded in the defined timeout. |  -  |

<a name="v1OrdersStatusClientOrderIdGet"></a>
# **v1OrdersStatusClientOrderIdGet**
> OrderExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.OrdersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io");

    OrdersApi apiInstance = new OrdersApi(defaultClient);
    String clientOrderId = "6ab36bc1-344d-432e-ac6d-0bf44ee64c2b"; // String | The unique identifier of the order assigned by the client.
    try {
      OrderExecutionReport result = apiInstance.v1OrdersStatusClientOrderIdGet(clientOrderId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OrdersApi#v1OrdersStatusClientOrderIdGet");
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
 **clientOrderId** | **String**| The unique identifier of the order assigned by the client. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The last execution report of the requested order. |  -  |
**404** | The requested order was not found. |  -  |

