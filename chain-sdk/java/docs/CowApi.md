# CowApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**cowGetOrdersHistorical**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical) |
| [**cowGetSettlementsHistorical**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical) |
| [**cowGetTokensHistorical**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) |
| [**cowGetTradesHistorical**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) |
| [**cowGetUsersHistorical**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical) |
| [**cowOrdersCurrent**](CowApi.md#cowOrdersCurrent) | **GET** /dapps/cow/orders/current | Orders (current) |
| [**cowSettlementsCurrent**](CowApi.md#cowSettlementsCurrent) | **GET** /dapps/cow/settlements/current | Settlements (current) |
| [**cowTokensCurrent**](CowApi.md#cowTokensCurrent) | **GET** /dapps/cow/tokens/current | Tokens (current) |
| [**cowTradesCurrent**](CowApi.md#cowTradesCurrent) | **GET** /dapps/cow/trades/current | Trades (current) |
| [**cowUsersCurrent**](CowApi.md#cowUsersCurrent) | **GET** /dapps/cow/users/current | Users (current) |


<a id="cowGetOrdersHistorical"></a>
# **cowGetOrdersHistorical**
> List&lt;CowOrderDTO&gt; cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id)

Orders (historical)

Gets orders.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | User's address.
    try {
      List<CowOrderDTO> result = apiInstance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowGetOrdersHistorical");
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
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| User&#39;s address. | [optional] |

### Return type

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowGetSettlementsHistorical"></a>
# **cowGetSettlementsHistorical**
> List&lt;CowSettlementDTO&gt; cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id)

Settlements (historical)

Gets settlements.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Transaction hash.
    try {
      List<CowSettlementDTO> result = apiInstance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowGetSettlementsHistorical");
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
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Transaction hash. | [optional] |

### Return type

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowGetTokensHistorical"></a>
# **cowGetTokensHistorical**
> List&lt;CowTokenDTO&gt; cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol)

Tokens (historical)

Gets tokens.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Token's address.
    String address = "address_example"; // String | Token's address.
    String name = "name_example"; // String | Token name fetched by ERC20 contract call.
    String symbol = "symbol_example"; // String | Token symbol fetched by contract call.
    try {
      List<CowTokenDTO> result = apiInstance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, name, symbol);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowGetTokensHistorical");
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
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Token&#39;s address. | [optional] |
| **address** | **String**| Token&#39;s address. | [optional] |
| **name** | **String**| Token name fetched by ERC20 contract call. | [optional] |
| **symbol** | **String**| Token symbol fetched by contract call. | [optional] |

### Return type

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowGetTradesHistorical"></a>
# **cowGetTradesHistorical**
> List&lt;CowTradeDTO&gt; cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken)

Trades (historical)

Gets trades.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Identifier, format: (order id)|(transaction hash)|(event index).
    String sellToken = "sellToken_example"; // String | Address of token that is sold.
    String buyToken = "buyToken_example"; // String | Address of token that is bought.
    try {
      List<CowTradeDTO> result = apiInstance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, sellToken, buyToken);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowGetTradesHistorical");
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
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Identifier, format: (order id)|(transaction hash)|(event index). | [optional] |
| **sellToken** | **String**| Address of token that is sold. | [optional] |
| **buyToken** | **String**| Address of token that is bought. | [optional] |

### Return type

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowGetUsersHistorical"></a>
# **cowGetUsersHistorical**
> List&lt;CowUserDTO&gt; cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address)

Users (historical)

Gets users.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | User's address.
    String address = "address_example"; // String | User's address.
    try {
      List<CowUserDTO> result = apiInstance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate, id, address);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowGetUsersHistorical");
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
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| User&#39;s address. | [optional] |
| **address** | **String**| User&#39;s address. | [optional] |

### Return type

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowOrdersCurrent"></a>
# **cowOrdersCurrent**
> List&lt;CowOrderDTO&gt; cowOrdersCurrent()

Orders (current)

Gets orders.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    try {
      List<CowOrderDTO> result = apiInstance.cowOrdersCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowOrdersCurrent");
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

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowSettlementsCurrent"></a>
# **cowSettlementsCurrent**
> List&lt;CowSettlementDTO&gt; cowSettlementsCurrent()

Settlements (current)

Gets settlements.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    try {
      List<CowSettlementDTO> result = apiInstance.cowSettlementsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowSettlementsCurrent");
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

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowTokensCurrent"></a>
# **cowTokensCurrent**
> List&lt;CowTokenDTO&gt; cowTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    try {
      List<CowTokenDTO> result = apiInstance.cowTokensCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowTokensCurrent");
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

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowTradesCurrent"></a>
# **cowTradesCurrent**
> List&lt;CowTradeDTO&gt; cowTradesCurrent()

Trades (current)

Gets trades.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    try {
      List<CowTradeDTO> result = apiInstance.cowTradesCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowTradesCurrent");
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

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cowUsersCurrent"></a>
# **cowUsersCurrent**
> List&lt;CowUserDTO&gt; cowUsersCurrent()

Users (current)

Gets users.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CowApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CowApi apiInstance = new CowApi(defaultClient);
    try {
      List<CowUserDTO> result = apiInstance.cowUsersCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CowApi#cowUsersCurrent");
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

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

