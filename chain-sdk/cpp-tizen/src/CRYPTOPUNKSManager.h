#ifndef _CRYPTOPUNKSManager_H_
#define _CRYPTOPUNKSManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "CRYPTOPUNKS.BidDTO.h"
#include "CRYPTOPUNKS.CollectionDTO.h"
#include "CRYPTOPUNKS.CollectionDailySnapshotDTO.h"
#include "CRYPTOPUNKS.DataSourcesDTO.h"
#include "CRYPTOPUNKS.ItemDTO.h"
#include "CRYPTOPUNKS.MarketPlaceDTO.h"
#include "CRYPTOPUNKS.MarketplaceDailySnapshotDTO.h"
#include "CRYPTOPUNKS.TradeDTO.h"
#include "CRYPTOPUNKS.UserDTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup CRYPTOPUNKS CRYPTOPUNKS
 * \ingroup Operations
 *  @{
 */
class CRYPTOPUNKSManager {
public:
	CRYPTOPUNKSManager();
	virtual ~CRYPTOPUNKSManager();

/*! \brief Bids (current). *Synchronous*
 *
 * Gets bids.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSBids (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.BidDTO>, Error, void* )
	, void* userData);

/*! \brief Bids (current). *Asynchronous*
 *
 * Gets bids.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSBids (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.BidDTO>, Error, void* )
	, void* userData);


/*! \brief CollectionDailySnapshots (current). *Synchronous*
 *
 * Gets collectionDailySnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSCollectionDailySnapshots (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.CollectionDailySnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief CollectionDailySnapshots (current). *Asynchronous*
 *
 * Gets collectionDailySnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSCollectionDailySnapshots (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.CollectionDailySnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief Collections (current). *Synchronous*
 *
 * Gets collections.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSCollections (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.CollectionDTO>, Error, void* )
	, void* userData);

/*! \brief Collections (current). *Asynchronous*
 *
 * Gets collections.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSCollections (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.CollectionDTO>, Error, void* )
	, void* userData);


/*! \brief DataSources (current). *Synchronous*
 *
 * Gets dataSources.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSDataSources (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.DataSourcesDTO>, Error, void* )
	, void* userData);

/*! \brief DataSources (current). *Asynchronous*
 *
 * Gets dataSources.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSDataSources (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.DataSourcesDTO>, Error, void* )
	, void* userData);


/*! \brief Bids (historical). *Synchronous*
 *
 * Gets bids.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetBids (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.BidDTO>, Error, void* )
	, void* userData);

/*! \brief Bids (historical). *Asynchronous*
 *
 * Gets bids.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetBids (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.BidDTO>, Error, void* )
	, void* userData);


/*! \brief CollectionDailySnapshots (historical). *Synchronous*
 *
 * Gets collectionDailySnapshots.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetCollectionDailySnapshots (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<CRYPTOPUNKS.CollectionDailySnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief CollectionDailySnapshots (historical). *Asynchronous*
 *
 * Gets collectionDailySnapshots.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetCollectionDailySnapshots (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<CRYPTOPUNKS.CollectionDailySnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief Collections (historical). *Synchronous*
 *
 * Gets collections.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetCollections (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.CollectionDTO>, Error, void* )
	, void* userData);

/*! \brief Collections (historical). *Asynchronous*
 *
 * Gets collections.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetCollections (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.CollectionDTO>, Error, void* )
	, void* userData);


/*! \brief DataSources (historical). *Synchronous*
 *
 * Gets dataSources.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetDataSources (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.DataSourcesDTO>, Error, void* )
	, void* userData);

/*! \brief DataSources (historical). *Asynchronous*
 *
 * Gets dataSources.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetDataSources (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.DataSourcesDTO>, Error, void* )
	, void* userData);


/*! \brief Items (historical). *Synchronous*
 *
 * Gets items.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetItems (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<CRYPTOPUNKS.ItemDTO>, Error, void* )
	, void* userData);

/*! \brief Items (historical). *Asynchronous*
 *
 * Gets items.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetItems (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<CRYPTOPUNKS.ItemDTO>, Error, void* )
	, void* userData);


/*! \brief MarketPlaces (historical). *Synchronous*
 *
 * Gets marketPlaces.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetMarketPlaces (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.MarketPlaceDTO>, Error, void* )
	, void* userData);

/*! \brief MarketPlaces (historical). *Asynchronous*
 *
 * Gets marketPlaces.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetMarketPlaces (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.MarketPlaceDTO>, Error, void* )
	, void* userData);


/*! \brief MarketplaceDailySnapshots (historical). *Synchronous*
 *
 * Gets marketplaceDailySnapshots.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetMarketplaceDailySnapshots (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.MarketplaceDailySnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief MarketplaceDailySnapshots (historical). *Asynchronous*
 *
 * Gets marketplaceDailySnapshots.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetMarketplaceDailySnapshots (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.MarketplaceDailySnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief Trades (historical). *Synchronous*
 *
 * Gets trades.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetTrades (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.TradeDTO>, Error, void* )
	, void* userData);

/*! \brief Trades (historical). *Asynchronous*
 *
 * Gets trades.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetTrades (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.TradeDTO>, Error, void* )
	, void* userData);


/*! \brief Users (historical). *Synchronous*
 *
 * Gets users.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetUsers (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.UserDTO>, Error, void* )
	, void* userData);

/*! \brief Users (historical). *Asynchronous*
 *
 * Gets users.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSGetUsers (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<CRYPTOPUNKS.UserDTO>, Error, void* )
	, void* userData);


/*! \brief Items (current). *Synchronous*
 *
 * Gets items.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSItems (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.ItemDTO>, Error, void* )
	, void* userData);

/*! \brief Items (current). *Asynchronous*
 *
 * Gets items.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSItems (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.ItemDTO>, Error, void* )
	, void* userData);


/*! \brief MarketPlaces (current). *Synchronous*
 *
 * Gets marketPlaces.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSMarketPlaces (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.MarketPlaceDTO>, Error, void* )
	, void* userData);

/*! \brief MarketPlaces (current). *Asynchronous*
 *
 * Gets marketPlaces.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSMarketPlaces (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.MarketPlaceDTO>, Error, void* )
	, void* userData);


/*! \brief MarketplaceDailySnapshots (current). *Synchronous*
 *
 * Gets marketplaceDailySnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSMarketplaceDailySnapshots (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.MarketplaceDailySnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief MarketplaceDailySnapshots (current). *Asynchronous*
 *
 * Gets marketplaceDailySnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSMarketplaceDailySnapshots (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.MarketplaceDailySnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief Trades (current). *Synchronous*
 *
 * Gets trades.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSTrades (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.TradeDTO>, Error, void* )
	, void* userData);

/*! \brief Trades (current). *Asynchronous*
 *
 * Gets trades.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSTrades (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.TradeDTO>, Error, void* )
	, void* userData);


/*! \brief Users (current). *Synchronous*
 *
 * Gets users.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSUsers (current)Sync(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.UserDTO>, Error, void* )
	, void* userData);

/*! \brief Users (current). *Asynchronous*
 *
 * Gets users.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cRYPTOPUNKSUsers (current)Async(char * accessToken,
	
	void(* handler)(std::list<CRYPTOPUNKS.UserDTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* CRYPTOPUNKSManager_H_ */
