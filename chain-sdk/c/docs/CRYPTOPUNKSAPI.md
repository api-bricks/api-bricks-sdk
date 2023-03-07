# CRYPTOPUNKSAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CRYPTOPUNKSAPI_cRYPTOPUNKSBidsCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSBidsCurrent) | **GET** /dapps/cryptopunks/bids/current | Bids (current)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionDailySnapshotsCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionsCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionsCurrent) | **GET** /dapps/cryptopunks/collections/current | Collections (current)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSDataSourcesCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSDataSourcesCurrent) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetBidsHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetBidsHistorical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionsHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionsHistorical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetDataSourcesHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetDataSourcesHistorical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetItemsHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetItemsHistorical) | **GET** /dapps/cryptopunks/items/historical | Items (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketPlacesHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketPlacesHistorical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetTradesHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetTradesHistorical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSGetUsersHistorical**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSGetUsersHistorical) | **GET** /dapps/cryptopunks/users/historical | Users (historical)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSItemsCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSItemsCurrent) | **GET** /dapps/cryptopunks/items/current | Items (current)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSMarketPlacesCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSMarketPlacesCurrent) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSMarketplaceDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSTradesCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSTradesCurrent) | **GET** /dapps/cryptopunks/trades/current | Trades (current)
[**CRYPTOPUNKSAPI_cRYPTOPUNKSUsersCurrent**](CRYPTOPUNKSAPI.md#CRYPTOPUNKSAPI_cRYPTOPUNKSUsersCurrent) | **GET** /dapps/cryptopunks/users/current | Users (current)


# **CRYPTOPUNKSAPI_cRYPTOPUNKSBidsCurrent**
```c
// Bids (current)
//
// Gets bids.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSBidsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_bid_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionDailySnapshotsCurrent**
```c
// CollectionDailySnapshots (current)
//
// Gets collectionDailySnapshots.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionDailySnapshotsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_collection_daily_snapshot_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionsCurrent**
```c
// Collections (current)
//
// Gets collections.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_collection_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSDataSourcesCurrent**
```c
// DataSources (current)
//
// Gets dataSources.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSDataSourcesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_data_sources_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetBidsHistorical**
```c
// Bids (historical)
//
// Gets bids.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetBidsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](cryptopunks_bid_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionDailySnapshotsHistorical**
```c
// CollectionDailySnapshots (historical)
//
// Gets collectionDailySnapshots.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 

### Return type

[list_t](cryptopunks_collection_daily_snapshot_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionsHistorical**
```c
// Collections (historical)
//
// Gets collections.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](cryptopunks_collection_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetDataSourcesHistorical**
```c
// DataSources (historical)
//
// Gets dataSources.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetDataSourcesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](cryptopunks_data_sources_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetItemsHistorical**
```c
// Items (historical)
//
// Gets items.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetItemsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 

### Return type

[list_t](cryptopunks_item_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketPlacesHistorical**
```c
// MarketPlaces (historical)
//
// Gets marketPlaces.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketPlacesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](cryptopunks_market_place_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**
```c
// MarketplaceDailySnapshots (historical)
//
// Gets marketplaceDailySnapshots.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](cryptopunks_marketplace_daily_snapshot_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetTradesHistorical**
```c
// Trades (historical)
//
// Gets trades.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetTradesHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](cryptopunks_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSGetUsersHistorical**
```c
// Users (historical)
//
// Gets users.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSGetUsersHistorical(apiClient_t *apiClient, long startBlock, long endBlock, char startDate, char endDate, char * id);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**startBlock** | **long** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
**endBlock** | **long** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
**startDate** | **char** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
**endDate** | **char** | The end date of timeframe. | [optional] 
**id** | **char \*** |  | [optional] 

### Return type

[list_t](cryptopunks_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSItemsCurrent**
```c
// Items (current)
//
// Gets items.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSItemsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_item_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSMarketPlacesCurrent**
```c
// MarketPlaces (current)
//
// Gets marketPlaces.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSMarketPlacesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_market_place_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSMarketplaceDailySnapshotsCurrent**
```c
// MarketplaceDailySnapshots (current)
//
// Gets marketplaceDailySnapshots.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSMarketplaceDailySnapshotsCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_marketplace_daily_snapshot_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSTradesCurrent**
```c
// Trades (current)
//
// Gets trades.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSTradesCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_trade_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CRYPTOPUNKSAPI_cRYPTOPUNKSUsersCurrent**
```c
// Users (current)
//
// Gets users.
//
list_t* CRYPTOPUNKSAPI_cRYPTOPUNKSUsersCurrent(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](cryptopunks_user_dto.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

