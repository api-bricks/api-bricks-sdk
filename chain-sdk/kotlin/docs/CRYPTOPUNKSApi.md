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


<a id="cRYPTOPUNKSBidsCurrent"></a>
# **cRYPTOPUNKSBidsCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSBidDTO&gt; cRYPTOPUNKSBidsCurrent()

Bids (current)

Gets bids.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSBidDTO> = apiInstance.cRYPTOPUNKSBidsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSBidsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSBidsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSCollectionDailySnapshotsCurrent"></a>
# **cRYPTOPUNKSCollectionDailySnapshotsCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt; cRYPTOPUNKSCollectionDailySnapshotsCurrent()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSCollectionDailySnapshotDTO> = apiInstance.cRYPTOPUNKSCollectionDailySnapshotsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSCollectionDailySnapshotsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSCollectionDailySnapshotsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSCollectionsCurrent"></a>
# **cRYPTOPUNKSCollectionsCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSCollectionDTO&gt; cRYPTOPUNKSCollectionsCurrent()

Collections (current)

Gets collections.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSCollectionDTO> = apiInstance.cRYPTOPUNKSCollectionsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSCollectionsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSCollectionsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSDataSourcesCurrent"></a>
# **cRYPTOPUNKSDataSourcesCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSDataSourcesDTO&gt; cRYPTOPUNKSDataSourcesCurrent()

DataSources (current)

Gets dataSources.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSDataSourcesDTO> = apiInstance.cRYPTOPUNKSDataSourcesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSDataSourcesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSDataSourcesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetBidsHistorical"></a>
# **cRYPTOPUNKSGetBidsHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSBidDTO&gt; cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id)

Bids (historical)

Gets bids.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CRYPTOPUNKSBidDTO> = apiInstance.cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetBidsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetBidsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetCollectionDailySnapshotsHistorical"></a>
# **cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt; cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
try {
    val result : kotlin.collections.List<CRYPTOPUNKSCollectionDailySnapshotDTO> = apiInstance.cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetCollectionDailySnapshotsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetCollectionDailySnapshotsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetCollectionsHistorical"></a>
# **cRYPTOPUNKSGetCollectionsHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSCollectionDTO&gt; cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id)

Collections (historical)

Gets collections.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CRYPTOPUNKSCollectionDTO> = apiInstance.cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetCollectionsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetCollectionsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetDataSourcesHistorical"></a>
# **cRYPTOPUNKSGetDataSourcesHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSDataSourcesDTO&gt; cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id)

DataSources (historical)

Gets dataSources.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CRYPTOPUNKSDataSourcesDTO> = apiInstance.cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetDataSourcesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetDataSourcesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetItemsHistorical"></a>
# **cRYPTOPUNKSGetItemsHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSItemDTO&gt; cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate)

Items (historical)

Gets items.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
try {
    val result : kotlin.collections.List<CRYPTOPUNKSItemDTO> = apiInstance.cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetItemsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetItemsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetMarketPlacesHistorical"></a>
# **cRYPTOPUNKSGetMarketPlacesHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSMarketPlaceDTO&gt; cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id)

MarketPlaces (historical)

Gets marketPlaces.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CRYPTOPUNKSMarketPlaceDTO> = apiInstance.cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetMarketPlacesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetMarketPlacesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical"></a>
# **cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt; cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CRYPTOPUNKSMarketplaceDailySnapshotDTO> = apiInstance.cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetTradesHistorical"></a>
# **cRYPTOPUNKSGetTradesHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSTradeDTO&gt; cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id)

Trades (historical)

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CRYPTOPUNKSTradeDTO> = apiInstance.cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetTradesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetTradesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSGetUsersHistorical"></a>
# **cRYPTOPUNKSGetUsersHistorical**
> kotlin.collections.List&lt;CRYPTOPUNKSUserDTO&gt; cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CRYPTOPUNKSUserDTO> = apiInstance.cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetUsersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSGetUsersHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSItemsCurrent"></a>
# **cRYPTOPUNKSItemsCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSItemDTO&gt; cRYPTOPUNKSItemsCurrent()

Items (current)

Gets items.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSItemDTO> = apiInstance.cRYPTOPUNKSItemsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSItemsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSItemsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSMarketPlacesCurrent"></a>
# **cRYPTOPUNKSMarketPlacesCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSMarketPlaceDTO&gt; cRYPTOPUNKSMarketPlacesCurrent()

MarketPlaces (current)

Gets marketPlaces.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSMarketPlaceDTO> = apiInstance.cRYPTOPUNKSMarketPlacesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSMarketPlacesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSMarketPlacesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSMarketplaceDailySnapshotsCurrent"></a>
# **cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt; cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSMarketplaceDailySnapshotDTO> = apiInstance.cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSMarketplaceDailySnapshotsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSMarketplaceDailySnapshotsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSTradesCurrent"></a>
# **cRYPTOPUNKSTradesCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSTradeDTO&gt; cRYPTOPUNKSTradesCurrent()

Trades (current)

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSTradeDTO> = apiInstance.cRYPTOPUNKSTradesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSTradesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSTradesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="cRYPTOPUNKSUsersCurrent"></a>
# **cRYPTOPUNKSUsersCurrent**
> kotlin.collections.List&lt;CRYPTOPUNKSUserDTO&gt; cRYPTOPUNKSUsersCurrent()

Users (current)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CRYPTOPUNKSApi()
try {
    val result : kotlin.collections.List<CRYPTOPUNKSUserDTO> = apiInstance.cRYPTOPUNKSUsersCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSUsersCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CRYPTOPUNKSApi#cRYPTOPUNKSUsersCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

