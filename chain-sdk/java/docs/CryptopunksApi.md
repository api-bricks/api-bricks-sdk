# CryptopunksApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**cRYPTOPUNKSBidsCurrent**](CryptopunksApi.md#cRYPTOPUNKSBidsCurrent) | **GET** /dapps/cryptopunks/bids/current | Bids (current) |
| [**cRYPTOPUNKSCollectionDailySnapshotsCurrent**](CryptopunksApi.md#cRYPTOPUNKSCollectionDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current) |
| [**cRYPTOPUNKSCollectionsCurrent**](CryptopunksApi.md#cRYPTOPUNKSCollectionsCurrent) | **GET** /dapps/cryptopunks/collections/current | Collections (current) |
| [**cRYPTOPUNKSDataSourcesCurrent**](CryptopunksApi.md#cRYPTOPUNKSDataSourcesCurrent) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current) |
| [**cRYPTOPUNKSGetBidsHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetBidsHistorical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical) |
| [**cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetCollectionDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical) |
| [**cRYPTOPUNKSGetCollectionsHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetCollectionsHistorical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical) |
| [**cRYPTOPUNKSGetDataSourcesHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetDataSourcesHistorical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical) |
| [**cRYPTOPUNKSGetItemsHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetItemsHistorical) | **GET** /dapps/cryptopunks/items/historical | Items (historical) |
| [**cRYPTOPUNKSGetMarketPlacesHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetMarketPlacesHistorical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical) |
| [**cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical) |
| [**cRYPTOPUNKSGetTradesHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetTradesHistorical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical) |
| [**cRYPTOPUNKSGetUsersHistorical**](CryptopunksApi.md#cRYPTOPUNKSGetUsersHistorical) | **GET** /dapps/cryptopunks/users/historical | Users (historical) |
| [**cRYPTOPUNKSItemsCurrent**](CryptopunksApi.md#cRYPTOPUNKSItemsCurrent) | **GET** /dapps/cryptopunks/items/current | Items (current) |
| [**cRYPTOPUNKSMarketPlacesCurrent**](CryptopunksApi.md#cRYPTOPUNKSMarketPlacesCurrent) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current) |
| [**cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**](CryptopunksApi.md#cRYPTOPUNKSMarketplaceDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current) |
| [**cRYPTOPUNKSTradesCurrent**](CryptopunksApi.md#cRYPTOPUNKSTradesCurrent) | **GET** /dapps/cryptopunks/trades/current | Trades (current) |
| [**cRYPTOPUNKSUsersCurrent**](CryptopunksApi.md#cRYPTOPUNKSUsersCurrent) | **GET** /dapps/cryptopunks/users/current | Users (current) |


<a id="cRYPTOPUNKSBidsCurrent"></a>
# **cRYPTOPUNKSBidsCurrent**
> List&lt;CRYPTOPUNKSBidDTO&gt; cRYPTOPUNKSBidsCurrent()

Bids (current)

Gets bids.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSBidDTO> result = apiInstance.cRYPTOPUNKSBidsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSBidsCurrent");
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

[**List&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSCollectionDailySnapshotsCurrent"></a>
# **cRYPTOPUNKSCollectionDailySnapshotsCurrent**
> List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt; cRYPTOPUNKSCollectionDailySnapshotsCurrent()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSCollectionDailySnapshotDTO> result = apiInstance.cRYPTOPUNKSCollectionDailySnapshotsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSCollectionDailySnapshotsCurrent");
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

[**List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSCollectionsCurrent"></a>
# **cRYPTOPUNKSCollectionsCurrent**
> List&lt;CRYPTOPUNKSCollectionDTO&gt; cRYPTOPUNKSCollectionsCurrent()

Collections (current)

Gets collections.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSCollectionDTO> result = apiInstance.cRYPTOPUNKSCollectionsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSCollectionsCurrent");
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

[**List&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSDataSourcesCurrent"></a>
# **cRYPTOPUNKSDataSourcesCurrent**
> List&lt;CRYPTOPUNKSDataSourcesDTO&gt; cRYPTOPUNKSDataSourcesCurrent()

DataSources (current)

Gets dataSources.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSDataSourcesDTO> result = apiInstance.cRYPTOPUNKSDataSourcesCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSDataSourcesCurrent");
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

[**List&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetBidsHistorical"></a>
# **cRYPTOPUNKSGetBidsHistorical**
> List&lt;CRYPTOPUNKSBidDTO&gt; cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id)

Bids (historical)

Gets bids.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    try {
      List<CRYPTOPUNKSBidDTO> result = apiInstance.cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetBidsHistorical");
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
| **id** | **String**|  | [optional] |

### Return type

[**List&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetCollectionDailySnapshotsHistorical"></a>
# **cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**
> List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt; cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    try {
      List<CRYPTOPUNKSCollectionDailySnapshotDTO> result = apiInstance.cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetCollectionDailySnapshotsHistorical");
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

### Return type

[**List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetCollectionsHistorical"></a>
# **cRYPTOPUNKSGetCollectionsHistorical**
> List&lt;CRYPTOPUNKSCollectionDTO&gt; cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id)

Collections (historical)

Gets collections.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    try {
      List<CRYPTOPUNKSCollectionDTO> result = apiInstance.cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetCollectionsHistorical");
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
| **id** | **String**|  | [optional] |

### Return type

[**List&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetDataSourcesHistorical"></a>
# **cRYPTOPUNKSGetDataSourcesHistorical**
> List&lt;CRYPTOPUNKSDataSourcesDTO&gt; cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id)

DataSources (historical)

Gets dataSources.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    try {
      List<CRYPTOPUNKSDataSourcesDTO> result = apiInstance.cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetDataSourcesHistorical");
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
| **id** | **String**|  | [optional] |

### Return type

[**List&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetItemsHistorical"></a>
# **cRYPTOPUNKSGetItemsHistorical**
> List&lt;CRYPTOPUNKSItemDTO&gt; cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate)

Items (historical)

Gets items.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    try {
      List<CRYPTOPUNKSItemDTO> result = apiInstance.cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetItemsHistorical");
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

### Return type

[**List&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetMarketPlacesHistorical"></a>
# **cRYPTOPUNKSGetMarketPlacesHistorical**
> List&lt;CRYPTOPUNKSMarketPlaceDTO&gt; cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id)

MarketPlaces (historical)

Gets marketPlaces.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    try {
      List<CRYPTOPUNKSMarketPlaceDTO> result = apiInstance.cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetMarketPlacesHistorical");
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
| **id** | **String**|  | [optional] |

### Return type

[**List&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical"></a>
# **cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**
> List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt; cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    try {
      List<CRYPTOPUNKSMarketplaceDailySnapshotDTO> result = apiInstance.cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical");
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
| **id** | **String**|  | [optional] |

### Return type

[**List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetTradesHistorical"></a>
# **cRYPTOPUNKSGetTradesHistorical**
> List&lt;CRYPTOPUNKSTradeDTO&gt; cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id)

Trades (historical)

Gets trades.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    try {
      List<CRYPTOPUNKSTradeDTO> result = apiInstance.cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetTradesHistorical");
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
| **id** | **String**|  | [optional] |

### Return type

[**List&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSGetUsersHistorical"></a>
# **cRYPTOPUNKSGetUsersHistorical**
> List&lt;CRYPTOPUNKSUserDTO&gt; cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    try {
      List<CRYPTOPUNKSUserDTO> result = apiInstance.cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSGetUsersHistorical");
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
| **id** | **String**|  | [optional] |

### Return type

[**List&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSItemsCurrent"></a>
# **cRYPTOPUNKSItemsCurrent**
> List&lt;CRYPTOPUNKSItemDTO&gt; cRYPTOPUNKSItemsCurrent()

Items (current)

Gets items.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSItemDTO> result = apiInstance.cRYPTOPUNKSItemsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSItemsCurrent");
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

[**List&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSMarketPlacesCurrent"></a>
# **cRYPTOPUNKSMarketPlacesCurrent**
> List&lt;CRYPTOPUNKSMarketPlaceDTO&gt; cRYPTOPUNKSMarketPlacesCurrent()

MarketPlaces (current)

Gets marketPlaces.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSMarketPlaceDTO> result = apiInstance.cRYPTOPUNKSMarketPlacesCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSMarketPlacesCurrent");
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

[**List&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSMarketplaceDailySnapshotsCurrent"></a>
# **cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**
> List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt; cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSMarketplaceDailySnapshotDTO> result = apiInstance.cRYPTOPUNKSMarketplaceDailySnapshotsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSMarketplaceDailySnapshotsCurrent");
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

[**List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSTradesCurrent"></a>
# **cRYPTOPUNKSTradesCurrent**
> List&lt;CRYPTOPUNKSTradeDTO&gt; cRYPTOPUNKSTradesCurrent()

Trades (current)

Gets trades.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSTradeDTO> result = apiInstance.cRYPTOPUNKSTradesCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSTradesCurrent");
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

[**List&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a id="cRYPTOPUNKSUsersCurrent"></a>
# **cRYPTOPUNKSUsersCurrent**
> List&lt;CRYPTOPUNKSUserDTO&gt; cRYPTOPUNKSUsersCurrent()

Users (current)

Gets users.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CryptopunksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    CryptopunksApi apiInstance = new CryptopunksApi(defaultClient);
    try {
      List<CRYPTOPUNKSUserDTO> result = apiInstance.cRYPTOPUNKSUsersCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptopunksApi#cRYPTOPUNKSUsersCurrent");
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

[**List&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

