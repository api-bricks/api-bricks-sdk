# openapi.api.CRYPTOPUNKSApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cRYPTOPUNKSBidsCurrent**](CRYPTOPUNKSApi.md#cryptopunksbidscurrent) | **GET** /dapps/cryptopunks/bids/current | Bids (current)
[**cRYPTOPUNKSCollectionDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#cryptopunkscollectiondailysnapshotscurrent) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current)
[**cRYPTOPUNKSCollectionsCurrent**](CRYPTOPUNKSApi.md#cryptopunkscollectionscurrent) | **GET** /dapps/cryptopunks/collections/current | Collections (current)
[**cRYPTOPUNKSDataSourcesCurrent**](CRYPTOPUNKSApi.md#cryptopunksdatasourcescurrent) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current)
[**cRYPTOPUNKSGetBidsHistorical**](CRYPTOPUNKSApi.md#cryptopunksgetbidshistorical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical)
[**cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#cryptopunksgetcollectiondailysnapshotshistorical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical)
[**cRYPTOPUNKSGetCollectionsHistorical**](CRYPTOPUNKSApi.md#cryptopunksgetcollectionshistorical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical)
[**cRYPTOPUNKSGetDataSourcesHistorical**](CRYPTOPUNKSApi.md#cryptopunksgetdatasourceshistorical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical)
[**cRYPTOPUNKSGetItemsHistorical**](CRYPTOPUNKSApi.md#cryptopunksgetitemshistorical) | **GET** /dapps/cryptopunks/items/historical | Items (historical)
[**cRYPTOPUNKSGetMarketPlacesHistorical**](CRYPTOPUNKSApi.md#cryptopunksgetmarketplaceshistorical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical)
[**cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#cryptopunksgetmarketplacedailysnapshotshistorical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical)
[**cRYPTOPUNKSGetTradesHistorical**](CRYPTOPUNKSApi.md#cryptopunksgettradeshistorical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical)
[**cRYPTOPUNKSGetUsersHistorical**](CRYPTOPUNKSApi.md#cryptopunksgetusershistorical) | **GET** /dapps/cryptopunks/users/historical | Users (historical)
[**cRYPTOPUNKSItemsCurrent**](CRYPTOPUNKSApi.md#cryptopunksitemscurrent) | **GET** /dapps/cryptopunks/items/current | Items (current)
[**cRYPTOPUNKSMarketPlacesCurrent**](CRYPTOPUNKSApi.md#cryptopunksmarketplacescurrent) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current)
[**cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#cryptopunksmarketplacedailysnapshotscurrent) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current)
[**cRYPTOPUNKSTradesCurrent**](CRYPTOPUNKSApi.md#cryptopunkstradescurrent) | **GET** /dapps/cryptopunks/trades/current | Trades (current)
[**cRYPTOPUNKSUsersCurrent**](CRYPTOPUNKSApi.md#cryptopunksuserscurrent) | **GET** /dapps/cryptopunks/users/current | Users (current)


# **cRYPTOPUNKSBidsCurrent**
> BuiltList<CRYPTOPUNKSBidDTO> cRYPTOPUNKSBidsCurrent()

Bids (current)

Gets bids.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSBidsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSBidsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSCollectionDailySnapshotsCurrent**
> BuiltList<CRYPTOPUNKSCollectionDailySnapshotDTO> cRYPTOPUNKSCollectionDailySnapshotsCurrent()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSCollectionDailySnapshotsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSCollectionDailySnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSCollectionsCurrent**
> BuiltList<CRYPTOPUNKSCollectionDTO> cRYPTOPUNKSCollectionsCurrent()

Collections (current)

Gets collections.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSCollectionsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSCollectionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSDataSourcesCurrent**
> BuiltList<CRYPTOPUNKSDataSourcesDTO> cRYPTOPUNKSDataSourcesCurrent()

DataSources (current)

Gets dataSources.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSDataSourcesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSDataSourcesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetBidsHistorical**
> BuiltList<CRYPTOPUNKSBidDTO> cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id)

Bids (historical)

Gets bids.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetBidsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSBidDTO&gt;**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**
> BuiltList<CRYPTOPUNKSCollectionDailySnapshotDTO> cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.

try {
    final response = api.cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetCollectionDailySnapshotsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSCollectionDailySnapshotDTO&gt;**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetCollectionsHistorical**
> BuiltList<CRYPTOPUNKSCollectionDTO> cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id)

Collections (historical)

Gets collections.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetCollectionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSCollectionDTO&gt;**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetDataSourcesHistorical**
> BuiltList<CRYPTOPUNKSDataSourcesDTO> cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id)

DataSources (historical)

Gets dataSources.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetDataSourcesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSDataSourcesDTO&gt;**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetItemsHistorical**
> BuiltList<CRYPTOPUNKSItemDTO> cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate)

Items (historical)

Gets items.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.

try {
    final response = api.cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetItemsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetMarketPlacesHistorical**
> BuiltList<CRYPTOPUNKSMarketPlaceDTO> cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id)

MarketPlaces (historical)

Gets marketPlaces.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetMarketPlacesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**
> BuiltList<CRYPTOPUNKSMarketplaceDailySnapshotDTO> cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetTradesHistorical**
> BuiltList<CRYPTOPUNKSTradeDTO> cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id)

Trades (historical)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetTradesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetUsersHistorical**
> BuiltList<CRYPTOPUNKSUserDTO> cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final String id = id_example; // String | 

try {
    final response = api.cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSGetUsersHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSItemsCurrent**
> BuiltList<CRYPTOPUNKSItemDTO> cRYPTOPUNKSItemsCurrent()

Items (current)

Gets items.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSItemsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSItemsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSItemDTO&gt;**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSMarketPlacesCurrent**
> BuiltList<CRYPTOPUNKSMarketPlaceDTO> cRYPTOPUNKSMarketPlacesCurrent()

MarketPlaces (current)

Gets marketPlaces.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSMarketPlacesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSMarketPlacesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSMarketPlaceDTO&gt;**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**
> BuiltList<CRYPTOPUNKSMarketplaceDailySnapshotDTO> cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSMarketplaceDailySnapshotsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSMarketplaceDailySnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSMarketplaceDailySnapshotDTO&gt;**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSTradesCurrent**
> BuiltList<CRYPTOPUNKSTradeDTO> cRYPTOPUNKSTradesCurrent()

Trades (current)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSTradesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSTradesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSTradeDTO&gt;**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSUsersCurrent**
> BuiltList<CRYPTOPUNKSUserDTO> cRYPTOPUNKSUsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCRYPTOPUNKSApi();

try {
    final response = api.cRYPTOPUNKSUsersCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSUsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CRYPTOPUNKSUserDTO&gt;**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

