# CRYPTOPUNKSApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cRYPTOPUNKSBidsCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSBidsCurrent) | **GET** /dapps/cryptopunks/bids/current | Bids (current)
[**cRYPTOPUNKSCollectionDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSCollectionDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current)
[**cRYPTOPUNKSCollectionsCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSCollectionsCurrent) | **GET** /dapps/cryptopunks/collections/current | Collections (current)
[**cRYPTOPUNKSDataSourcesCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSDataSourcesCurrent) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current)
[**cRYPTOPUNKSGetBidsHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetBidsHistorical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical)
[**cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetCollectionDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical)
[**cRYPTOPUNKSGetCollectionsHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetCollectionsHistorical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical)
[**cRYPTOPUNKSGetDataSourcesHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetDataSourcesHistorical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical)
[**cRYPTOPUNKSGetItemsHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetItemsHistorical) | **GET** /dapps/cryptopunks/items/historical | Items (historical)
[**cRYPTOPUNKSGetMarketPlacesHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetMarketPlacesHistorical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical)
[**cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical)
[**cRYPTOPUNKSGetTradesHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetTradesHistorical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical)
[**cRYPTOPUNKSGetUsersHistorical**](CRYPTOPUNKSApi.md#cRYPTOPUNKSGetUsersHistorical) | **GET** /dapps/cryptopunks/users/historical | Users (historical)
[**cRYPTOPUNKSItemsCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSItemsCurrent) | **GET** /dapps/cryptopunks/items/current | Items (current)
[**cRYPTOPUNKSMarketPlacesCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSMarketPlacesCurrent) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current)
[**cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSMarketplaceDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current)
[**cRYPTOPUNKSTradesCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSTradesCurrent) | **GET** /dapps/cryptopunks/trades/current | Trades (current)
[**cRYPTOPUNKSUsersCurrent**](CRYPTOPUNKSApi.md#cRYPTOPUNKSUsersCurrent) | **GET** /dapps/cryptopunks/users/current | Users (current)



## cRYPTOPUNKSBidsCurrent

> List&lt;CRYPTOPUNKSBidDTO&gt; cRYPTOPUNKSBidsCurrent()

Bids (current)

Gets bids.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSBidDTO> result = apiInstance.cRYPTOPUNKSBidsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSBidsCurrent");
    e.printStackTrace();
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


## cRYPTOPUNKSCollectionDailySnapshotsCurrent

> List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt; cRYPTOPUNKSCollectionDailySnapshotsCurrent()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSCollectionDailySnapshotDTO> result = apiInstance.cRYPTOPUNKSCollectionDailySnapshotsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSCollectionDailySnapshotsCurrent");
    e.printStackTrace();
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


## cRYPTOPUNKSCollectionsCurrent

> List&lt;CRYPTOPUNKSCollectionDTO&gt; cRYPTOPUNKSCollectionsCurrent()

Collections (current)

Gets collections.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSCollectionDTO> result = apiInstance.cRYPTOPUNKSCollectionsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSCollectionsCurrent");
    e.printStackTrace();
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


## cRYPTOPUNKSDataSourcesCurrent

> List&lt;CRYPTOPUNKSDataSourcesDTO&gt; cRYPTOPUNKSDataSourcesCurrent()

DataSources (current)

Gets dataSources.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSDataSourcesDTO> result = apiInstance.cRYPTOPUNKSDataSourcesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSDataSourcesCurrent");
    e.printStackTrace();
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


## cRYPTOPUNKSGetBidsHistorical

> List&lt;CRYPTOPUNKSBidDTO&gt; cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id)

Bids (historical)

Gets bids.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<CRYPTOPUNKSBidDTO> result = apiInstance.cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetBidsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetCollectionDailySnapshotsHistorical

> List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt; cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
try {
    List<CRYPTOPUNKSCollectionDailySnapshotDTO> result = apiInstance.cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetCollectionDailySnapshotsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetCollectionsHistorical

> List&lt;CRYPTOPUNKSCollectionDTO&gt; cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id)

Collections (historical)

Gets collections.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<CRYPTOPUNKSCollectionDTO> result = apiInstance.cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetCollectionsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetDataSourcesHistorical

> List&lt;CRYPTOPUNKSDataSourcesDTO&gt; cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id)

DataSources (historical)

Gets dataSources.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<CRYPTOPUNKSDataSourcesDTO> result = apiInstance.cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetDataSourcesHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetItemsHistorical

> List&lt;CRYPTOPUNKSItemDTO&gt; cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate)

Items (historical)

Gets items.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
try {
    List<CRYPTOPUNKSItemDTO> result = apiInstance.cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetItemsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetMarketPlacesHistorical

> List&lt;CRYPTOPUNKSMarketPlaceDTO&gt; cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id)

MarketPlaces (historical)

Gets marketPlaces.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<CRYPTOPUNKSMarketPlaceDTO> result = apiInstance.cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetMarketPlacesHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical

> List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt; cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<CRYPTOPUNKSMarketplaceDailySnapshotDTO> result = apiInstance.cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetTradesHistorical

> List&lt;CRYPTOPUNKSTradeDTO&gt; cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id)

Trades (historical)

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<CRYPTOPUNKSTradeDTO> result = apiInstance.cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetTradesHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetUsersHistorical

> List&lt;CRYPTOPUNKSUserDTO&gt; cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
try {
    List<CRYPTOPUNKSUserDTO> result = apiInstance.cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSGetUsersHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSItemsCurrent

> List&lt;CRYPTOPUNKSItemDTO&gt; cRYPTOPUNKSItemsCurrent()

Items (current)

Gets items.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSItemDTO> result = apiInstance.cRYPTOPUNKSItemsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSItemsCurrent");
    e.printStackTrace();
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


## cRYPTOPUNKSMarketPlacesCurrent

> List&lt;CRYPTOPUNKSMarketPlaceDTO&gt; cRYPTOPUNKSMarketPlacesCurrent()

MarketPlaces (current)

Gets marketPlaces.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSMarketPlaceDTO> result = apiInstance.cRYPTOPUNKSMarketPlacesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSMarketPlacesCurrent");
    e.printStackTrace();
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


## cRYPTOPUNKSMarketplaceDailySnapshotsCurrent

> List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt; cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSMarketplaceDailySnapshotDTO> result = apiInstance.cRYPTOPUNKSMarketplaceDailySnapshotsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSMarketplaceDailySnapshotsCurrent");
    e.printStackTrace();
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


## cRYPTOPUNKSTradesCurrent

> List&lt;CRYPTOPUNKSTradeDTO&gt; cRYPTOPUNKSTradesCurrent()

Trades (current)

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSTradeDTO> result = apiInstance.cRYPTOPUNKSTradesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSTradesCurrent");
    e.printStackTrace();
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


## cRYPTOPUNKSUsersCurrent

> List&lt;CRYPTOPUNKSUserDTO&gt; cRYPTOPUNKSUsersCurrent()

Users (current)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CRYPTOPUNKSApi;

CRYPTOPUNKSApi apiInstance = new CRYPTOPUNKSApi();
try {
    List<CRYPTOPUNKSUserDTO> result = apiInstance.cRYPTOPUNKSUsersCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CRYPTOPUNKSApi#cRYPTOPUNKSUsersCurrent");
    e.printStackTrace();
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

