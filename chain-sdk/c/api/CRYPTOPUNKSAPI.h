#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cryptopunks_bid_dto.h"
#include "../model/cryptopunks_collection_daily_snapshot_dto.h"
#include "../model/cryptopunks_collection_dto.h"
#include "../model/cryptopunks_data_sources_dto.h"
#include "../model/cryptopunks_item_dto.h"
#include "../model/cryptopunks_market_place_dto.h"
#include "../model/cryptopunks_marketplace_daily_snapshot_dto.h"
#include "../model/cryptopunks_trade_dto.h"
#include "../model/cryptopunks_user_dto.h"


// Bids (current)
//
// Gets bids.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSBidsCurrent(apiClient_t *apiClient);


// CollectionDailySnapshots (current)
//
// Gets collectionDailySnapshots.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionDailySnapshotsCurrent(apiClient_t *apiClient);


// Collections (current)
//
// Gets collections.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSCollectionsCurrent(apiClient_t *apiClient);


// DataSources (current)
//
// Gets dataSources.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSDataSourcesCurrent(apiClient_t *apiClient);


// Bids (historical)
//
// Gets bids.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetBidsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// CollectionDailySnapshots (historical)
//
// Gets collectionDailySnapshots.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Collections (historical)
//
// Gets collections.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetCollectionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// DataSources (historical)
//
// Gets dataSources.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetDataSourcesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Items (historical)
//
// Gets items.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetItemsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// MarketPlaces (historical)
//
// Gets marketPlaces.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketPlacesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// MarketplaceDailySnapshots (historical)
//
// Gets marketplaceDailySnapshots.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Trades (historical)
//
// Gets trades.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetTradesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Users (historical)
//
// Gets users.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Items (current)
//
// Gets items.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSItemsCurrent(apiClient_t *apiClient);


// MarketPlaces (current)
//
// Gets marketPlaces.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSMarketPlacesCurrent(apiClient_t *apiClient);


// MarketplaceDailySnapshots (current)
//
// Gets marketplaceDailySnapshots.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSMarketplaceDailySnapshotsCurrent(apiClient_t *apiClient);


// Trades (current)
//
// Gets trades.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSTradesCurrent(apiClient_t *apiClient);


// Users (current)
//
// Gets users.
//
list_t*
CRYPTOPUNKSAPI_cRYPTOPUNKSUsersCurrent(apiClient_t *apiClient);


