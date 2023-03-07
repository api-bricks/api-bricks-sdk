# OnChainDappsRestApi.CRYPTOPUNKSApi

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

> [CRYPTOPUNKSBidDTO] cRYPTOPUNKSBidsCurrent()

Bids (current)

Gets bids.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSBidsCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSBidDTO]**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSCollectionDailySnapshotsCurrent

> [CRYPTOPUNKSCollectionDailySnapshotDTO] cRYPTOPUNKSCollectionDailySnapshotsCurrent()

CollectionDailySnapshots (current)

Gets collectionDailySnapshots.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSCollectionDailySnapshotsCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSCollectionDailySnapshotDTO]**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSCollectionsCurrent

> [CRYPTOPUNKSCollectionDTO] cRYPTOPUNKSCollectionsCurrent()

Collections (current)

Gets collections.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSCollectionsCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSCollectionDTO]**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSDataSourcesCurrent

> [CRYPTOPUNKSDataSourcesDTO] cRYPTOPUNKSDataSourcesCurrent()

DataSources (current)

Gets dataSources.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSDataSourcesCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSDataSourcesDTO]**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetBidsHistorical

> [CRYPTOPUNKSBidDTO] cRYPTOPUNKSGetBidsHistorical(opts)

Bids (historical)

Gets bids.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.cRYPTOPUNKSGetBidsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[CRYPTOPUNKSBidDTO]**](CRYPTOPUNKSBidDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetCollectionDailySnapshotsHistorical

> [CRYPTOPUNKSCollectionDailySnapshotDTO] cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(opts)

CollectionDailySnapshots (historical)

Gets collectionDailySnapshots.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | The end date of timeframe.
};
apiInstance.cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 

### Return type

[**[CRYPTOPUNKSCollectionDailySnapshotDTO]**](CRYPTOPUNKSCollectionDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetCollectionsHistorical

> [CRYPTOPUNKSCollectionDTO] cRYPTOPUNKSGetCollectionsHistorical(opts)

Collections (historical)

Gets collections.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.cRYPTOPUNKSGetCollectionsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[CRYPTOPUNKSCollectionDTO]**](CRYPTOPUNKSCollectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetDataSourcesHistorical

> [CRYPTOPUNKSDataSourcesDTO] cRYPTOPUNKSGetDataSourcesHistorical(opts)

DataSources (historical)

Gets dataSources.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.cRYPTOPUNKSGetDataSourcesHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[CRYPTOPUNKSDataSourcesDTO]**](CRYPTOPUNKSDataSourcesDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetItemsHistorical

> [CRYPTOPUNKSItemDTO] cRYPTOPUNKSGetItemsHistorical(opts)

Items (historical)

Gets items.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | The end date of timeframe.
};
apiInstance.cRYPTOPUNKSGetItemsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 

### Return type

[**[CRYPTOPUNKSItemDTO]**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetMarketPlacesHistorical

> [CRYPTOPUNKSMarketPlaceDTO] cRYPTOPUNKSGetMarketPlacesHistorical(opts)

MarketPlaces (historical)

Gets marketPlaces.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.cRYPTOPUNKSGetMarketPlacesHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[CRYPTOPUNKSMarketPlaceDTO]**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical

> [CRYPTOPUNKSMarketplaceDailySnapshotDTO] cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(opts)

MarketplaceDailySnapshots (historical)

Gets marketplaceDailySnapshots.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[CRYPTOPUNKSMarketplaceDailySnapshotDTO]**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetTradesHistorical

> [CRYPTOPUNKSTradeDTO] cRYPTOPUNKSGetTradesHistorical(opts)

Trades (historical)

Gets trades.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.cRYPTOPUNKSGetTradesHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[CRYPTOPUNKSTradeDTO]**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSGetUsersHistorical

> [CRYPTOPUNKSUserDTO] cRYPTOPUNKSGetUsersHistorical(opts)

Users (historical)

Gets users.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
let opts = {
  'startBlock': 789, // Number | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  'endBlock': 789, // Number | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | The end date of timeframe.
  'id': "id_example" // String | 
};
apiInstance.cRYPTOPUNKSGetUsersHistorical(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **Number**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **Date**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**[CRYPTOPUNKSUserDTO]**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSItemsCurrent

> [CRYPTOPUNKSItemDTO] cRYPTOPUNKSItemsCurrent()

Items (current)

Gets items.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSItemsCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSItemDTO]**](CRYPTOPUNKSItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSMarketPlacesCurrent

> [CRYPTOPUNKSMarketPlaceDTO] cRYPTOPUNKSMarketPlacesCurrent()

MarketPlaces (current)

Gets marketPlaces.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSMarketPlacesCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSMarketPlaceDTO]**](CRYPTOPUNKSMarketPlaceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSMarketplaceDailySnapshotsCurrent

> [CRYPTOPUNKSMarketplaceDailySnapshotDTO] cRYPTOPUNKSMarketplaceDailySnapshotsCurrent()

MarketplaceDailySnapshots (current)

Gets marketplaceDailySnapshots.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSMarketplaceDailySnapshotsCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSMarketplaceDailySnapshotDTO]**](CRYPTOPUNKSMarketplaceDailySnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSTradesCurrent

> [CRYPTOPUNKSTradeDTO] cRYPTOPUNKSTradesCurrent()

Trades (current)

Gets trades.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSTradesCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSTradeDTO]**](CRYPTOPUNKSTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cRYPTOPUNKSUsersCurrent

> [CRYPTOPUNKSUserDTO] cRYPTOPUNKSUsersCurrent()

Users (current)

Gets users.

### Example

```javascript
import OnChainDappsRestApi from 'on_chain_dapps_rest_api';

let apiInstance = new OnChainDappsRestApi.CRYPTOPUNKSApi();
apiInstance.cRYPTOPUNKSUsersCurrent((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[CRYPTOPUNKSUserDTO]**](CRYPTOPUNKSUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

