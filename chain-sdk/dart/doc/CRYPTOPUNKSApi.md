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
> List<CRYPTOPUNKSBidDTO> cRYPTOPUNKSBidsCurrent()

Bids (current)

Gets bids.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSBidsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSBidsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSBidDTO>**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSCollectionDailySnapshotsCurrent**
> List<CRYPTOPUNKSCollectionDailySnapshotDTO> cRYPTOPUNKSCollectionDailySnapshotsCurrent()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSCollectionDailySnapshotsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSCollectionDailySnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSCollectionDailySnapshotDTO>**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSCollectionsCurrent**
> List<CRYPTOPUNKSCollectionDTO> cRYPTOPUNKSCollectionsCurrent()

Collections (current)

Gets collections.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSCollectionsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSCollectionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSCollectionDTO>**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSDataSourcesCurrent**
> List<CRYPTOPUNKSDataSourcesDTO> cRYPTOPUNKSDataSourcesCurrent()

DataSources (current)

Gets dataSources.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSDataSourcesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSDataSourcesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSDataSourcesDTO>**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetBidsHistorical**
> List<CRYPTOPUNKSBidDTO> cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id)

Bids (historical)

Gets bids.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.cRYPTOPUNKSGetBidsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSBidDTO>**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**
> List<CRYPTOPUNKSCollectionDailySnapshotDTO> cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.

try {
    final result = api_instance.cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSCollectionDailySnapshotDTO>**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetCollectionsHistorical**
> List<CRYPTOPUNKSCollectionDTO> cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id)

Collections (historical)

Gets collections.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.cRYPTOPUNKSGetCollectionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSCollectionDTO>**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetDataSourcesHistorical**
> List<CRYPTOPUNKSDataSourcesDTO> cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id)

DataSources (historical)

Gets dataSources.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.cRYPTOPUNKSGetDataSourcesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSDataSourcesDTO>**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetItemsHistorical**
> List<CRYPTOPUNKSItemDTO> cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate)

Items (historical)

Gets items.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.

try {
    final result = api_instance.cRYPTOPUNKSGetItemsHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSItemDTO>**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetMarketPlacesHistorical**
> List<CRYPTOPUNKSMarketPlaceDTO> cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id)

MarketPlaces (historical)

Gets marketPlaces.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.cRYPTOPUNKSGetMarketPlacesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSMarketPlaceDTO>**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**
> List<CRYPTOPUNKSMarketplaceDailySnapshotDTO> cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSMarketplaceDailySnapshotDTO>**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetTradesHistorical**
> List<CRYPTOPUNKSTradeDTO> cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id)

Trades (historical)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.cRYPTOPUNKSGetTradesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSTradeDTO>**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSGetUsersHistorical**
> List<CRYPTOPUNKSUserDTO> cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.cRYPTOPUNKSGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
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

[**List<CRYPTOPUNKSUserDTO>**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSItemsCurrent**
> List<CRYPTOPUNKSItemDTO> cRYPTOPUNKSItemsCurrent()

Items (current)

Gets items.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSItemsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSItemsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSItemDTO>**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSMarketPlacesCurrent**
> List<CRYPTOPUNKSMarketPlaceDTO> cRYPTOPUNKSMarketPlacesCurrent()

MarketPlaces (current)

Gets marketPlaces.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSMarketPlacesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSMarketPlacesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSMarketPlaceDTO>**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**
> List<CRYPTOPUNKSMarketplaceDailySnapshotDTO> cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSMarketplaceDailySnapshotsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSMarketplaceDailySnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSMarketplaceDailySnapshotDTO>**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSTradesCurrent**
> List<CRYPTOPUNKSTradeDTO> cRYPTOPUNKSTradesCurrent()

Trades (current)

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSTradesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSTradesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSTradeDTO>**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cRYPTOPUNKSUsersCurrent**
> List<CRYPTOPUNKSUserDTO> cRYPTOPUNKSUsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CRYPTOPUNKSApi();

try {
    final result = api_instance.cRYPTOPUNKSUsersCurrent();
    print(result);
} catch (e) {
    print('Exception when calling CRYPTOPUNKSApi->cRYPTOPUNKSUsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CRYPTOPUNKSUserDTO>**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

