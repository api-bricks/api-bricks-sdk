# CRYPTOPUNKSApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CRYPTOPUNKSBidsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSBidsCurrent) | **GET** /dapps/cryptopunks/bids/current | Bids (current)
[**CRYPTOPUNKSCollectionDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSCollectionDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/collectionDailySnapshots/current | CollectionDailySnapshots (current)
[**CRYPTOPUNKSCollectionsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSCollectionsCurrent) | **GET** /dapps/cryptopunks/collections/current | Collections (current)
[**CRYPTOPUNKSDataSourcesCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSDataSourcesCurrent) | **GET** /dapps/cryptopunks/dataSources/current | DataSources (current)
[**CRYPTOPUNKSGetBidsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetBidsHistorical) | **GET** /dapps/cryptopunks/bids/historical | Bids (historical)
[**CRYPTOPUNKSGetCollectionDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetCollectionDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/collectionDailySnapshots/historical | CollectionDailySnapshots (historical)
[**CRYPTOPUNKSGetCollectionsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetCollectionsHistorical) | **GET** /dapps/cryptopunks/collections/historical | Collections (historical)
[**CRYPTOPUNKSGetDataSourcesHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetDataSourcesHistorical) | **GET** /dapps/cryptopunks/dataSources/historical | DataSources (historical)
[**CRYPTOPUNKSGetItemsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetItemsHistorical) | **GET** /dapps/cryptopunks/items/historical | Items (historical)
[**CRYPTOPUNKSGetMarketPlacesHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetMarketPlacesHistorical) | **GET** /dapps/cryptopunks/marketPlaces/historical | MarketPlaces (historical)
[**CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/historical | MarketplaceDailySnapshots (historical)
[**CRYPTOPUNKSGetTradesHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetTradesHistorical) | **GET** /dapps/cryptopunks/trades/historical | Trades (historical)
[**CRYPTOPUNKSGetUsersHistorical**](CRYPTOPUNKSApi.md#CRYPTOPUNKSGetUsersHistorical) | **GET** /dapps/cryptopunks/users/historical | Users (historical)
[**CRYPTOPUNKSItemsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSItemsCurrent) | **GET** /dapps/cryptopunks/items/current | Items (current)
[**CRYPTOPUNKSMarketPlacesCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSMarketPlacesCurrent) | **GET** /dapps/cryptopunks/marketPlaces/current | MarketPlaces (current)
[**CRYPTOPUNKSMarketplaceDailySnapshotsCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSMarketplaceDailySnapshotsCurrent) | **GET** /dapps/cryptopunks/marketplaceDailySnapshots/current | MarketplaceDailySnapshots (current)
[**CRYPTOPUNKSTradesCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSTradesCurrent) | **GET** /dapps/cryptopunks/trades/current | Trades (current)
[**CRYPTOPUNKSUsersCurrent**](CRYPTOPUNKSApi.md#CRYPTOPUNKSUsersCurrent) | **GET** /dapps/cryptopunks/users/current | Users (current)


# **CRYPTOPUNKSBidsCurrent**
> array[CRYPTOPUNKSBidDTO] CRYPTOPUNKSBidsCurrent()

Bids (current)

Gets bids.

### Example
```R
library(openapi)

# Bids (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSBidsCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSBidsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSBidDTO]**](CRYPTOPUNKS.BidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSCollectionDailySnapshotsCurrent**
> array[CRYPTOPUNKSCollectionDailySnapshotDTO] CRYPTOPUNKSCollectionDailySnapshotsCurrent()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example
```R
library(openapi)

# CollectionDailySnapshots (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSCollectionDailySnapshotsCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSCollectionDailySnapshotsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSCollectionDailySnapshotDTO]**](CRYPTOPUNKS.CollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSCollectionsCurrent**
> array[CRYPTOPUNKSCollectionDTO] CRYPTOPUNKSCollectionsCurrent()

Collections (current)

Gets collections.

### Example
```R
library(openapi)

# Collections (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSCollectionsCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSCollectionsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSCollectionDTO]**](CRYPTOPUNKS.CollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSDataSourcesCurrent**
> array[CRYPTOPUNKSDataSourcesDTO] CRYPTOPUNKSDataSourcesCurrent()

DataSources (current)

Gets dataSources.

### Example
```R
library(openapi)

# DataSources (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSDataSourcesCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSDataSourcesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSDataSourcesDTO]**](CRYPTOPUNKS.DataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetBidsHistorical**
> array[CRYPTOPUNKSBidDTO] CRYPTOPUNKSGetBidsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Bids (historical)

Gets bids.

### Example
```R
library(openapi)

# Bids (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetBidsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetBidsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[CRYPTOPUNKSBidDTO]**](CRYPTOPUNKS.BidDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetCollectionDailySnapshotsHistorical**
> array[CRYPTOPUNKSCollectionDailySnapshotDTO] CRYPTOPUNKSGetCollectionDailySnapshotsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example
```R
library(openapi)

# CollectionDailySnapshots (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetCollectionDailySnapshotsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetCollectionDailySnapshotsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 

### Return type

[**array[CRYPTOPUNKSCollectionDailySnapshotDTO]**](CRYPTOPUNKS.CollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetCollectionsHistorical**
> array[CRYPTOPUNKSCollectionDTO] CRYPTOPUNKSGetCollectionsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Collections (historical)

Gets collections.

### Example
```R
library(openapi)

# Collections (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetCollectionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetCollectionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[CRYPTOPUNKSCollectionDTO]**](CRYPTOPUNKS.CollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetDataSourcesHistorical**
> array[CRYPTOPUNKSDataSourcesDTO] CRYPTOPUNKSGetDataSourcesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

DataSources (historical)

Gets dataSources.

### Example
```R
library(openapi)

# DataSources (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetDataSourcesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetDataSourcesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[CRYPTOPUNKSDataSourcesDTO]**](CRYPTOPUNKS.DataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetItemsHistorical**
> array[CRYPTOPUNKSItemDTO] CRYPTOPUNKSGetItemsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

Items (historical)

Gets items.

### Example
```R
library(openapi)

# Items (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetItemsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetItemsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 

### Return type

[**array[CRYPTOPUNKSItemDTO]**](CRYPTOPUNKS.ItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetMarketPlacesHistorical**
> array[CRYPTOPUNKSMarketPlaceDTO] CRYPTOPUNKSGetMarketPlacesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

MarketPlaces (historical)

Gets marketPlaces.

### Example
```R
library(openapi)

# MarketPlaces (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetMarketPlacesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetMarketPlacesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[CRYPTOPUNKSMarketPlaceDTO]**](CRYPTOPUNKS.MarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical**
> array[CRYPTOPUNKSMarketplaceDailySnapshotDTO] CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example
```R
library(openapi)

# MarketplaceDailySnapshots (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[CRYPTOPUNKSMarketplaceDailySnapshotDTO]**](CRYPTOPUNKS.MarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetTradesHistorical**
> array[CRYPTOPUNKSTradeDTO] CRYPTOPUNKSGetTradesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Trades (historical)

Gets trades.

### Example
```R
library(openapi)

# Trades (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetTradesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetTradesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[CRYPTOPUNKSTradeDTO]**](CRYPTOPUNKS.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSGetUsersHistorical**
> array[CRYPTOPUNKSUserDTO] CRYPTOPUNKSGetUsersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Users (historical)

Gets users.

### Example
```R
library(openapi)

# Users (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$CRYPTOPUNKSGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[CRYPTOPUNKSUserDTO]**](CRYPTOPUNKS.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSItemsCurrent**
> array[CRYPTOPUNKSItemDTO] CRYPTOPUNKSItemsCurrent()

Items (current)

Gets items.

### Example
```R
library(openapi)

# Items (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSItemsCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSItemsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSItemDTO]**](CRYPTOPUNKS.ItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSMarketPlacesCurrent**
> array[CRYPTOPUNKSMarketPlaceDTO] CRYPTOPUNKSMarketPlacesCurrent()

MarketPlaces (current)

Gets marketPlaces.

### Example
```R
library(openapi)

# MarketPlaces (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSMarketPlacesCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSMarketPlacesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSMarketPlaceDTO]**](CRYPTOPUNKS.MarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSMarketplaceDailySnapshotsCurrent**
> array[CRYPTOPUNKSMarketplaceDailySnapshotDTO] CRYPTOPUNKSMarketplaceDailySnapshotsCurrent()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example
```R
library(openapi)

# MarketplaceDailySnapshots (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSMarketplaceDailySnapshotsCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSMarketplaceDailySnapshotsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSMarketplaceDailySnapshotDTO]**](CRYPTOPUNKS.MarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSTradesCurrent**
> array[CRYPTOPUNKSTradeDTO] CRYPTOPUNKSTradesCurrent()

Trades (current)

Gets trades.

### Example
```R
library(openapi)

# Trades (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSTradesCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSTradesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSTradeDTO]**](CRYPTOPUNKS.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CRYPTOPUNKSUsersCurrent**
> array[CRYPTOPUNKSUserDTO] CRYPTOPUNKSUsersCurrent()

Users (current)

Gets users.

### Example
```R
library(openapi)

# Users (current)
#

api_instance <- CRYPTOPUNKSApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CRYPTOPUNKSUsersCurrent(data_file = "result.txt")
result <- api_instance$CRYPTOPUNKSUsersCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CRYPTOPUNKSUserDTO]**](CRYPTOPUNKS.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

