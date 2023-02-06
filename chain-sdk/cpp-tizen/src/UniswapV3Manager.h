#ifndef _UniswapV3Manager_H_
#define _UniswapV3Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "UniswapV3.BundleDTO.h"
#include "UniswapV3.BurnDTO.h"
#include "UniswapV3.FactoryDTO.h"
#include "UniswapV3.MintDTO.h"
#include "UniswapV3.PoolDTO.h"
#include "UniswapV3.PoolDayDataDTO.h"
#include "UniswapV3.PoolHourDataDTO.h"
#include "UniswapV3.PositionDTO.h"
#include "UniswapV3.PositionSnapshotDTO.h"
#include "UniswapV3.SwapDTO.h"
#include "UniswapV3.TickDTO.h"
#include "UniswapV3.TickDayDataDTO.h"
#include "UniswapV3.TokenDTO.h"
#include "UniswapV3.TokenHourDataDTO.h"
#include "UniswapV3.TokenV3DayDataDTO.h"
#include "UniswapV3.TransactionDTO.h"
#include "UniswapV3.UniswapDayDataDTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup UniswapV3 UniswapV3
 * \ingroup Operations
 *  @{
 */
class UniswapV3Manager {
public:
	UniswapV3Manager();
	virtual ~UniswapV3Manager();

/*! \brief Bundles (current). *Synchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Bundles (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (current). *Asynchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Bundles (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Burns (current). *Synchronous*
 *
 * Gets burns.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Burns (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief Burns (current). *Asynchronous*
 *
 * Gets burns.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Burns (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief Factories (current). *Synchronous*
 *
 * Gets factories.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Factories (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData);

/*! \brief Factories (current). *Asynchronous*
 *
 * Gets factories.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Factories (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData);


/*! \brief Bundles (historical). *Synchronous*
 *
 * Gets bundles.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundles (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (historical). *Asynchronous*
 *
 * Gets bundles.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundles (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Burns (historical). *Synchronous*
 *
 * Gets burns.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash + '#' + index in mints Transaction array.
 * \param pool Pool position is within.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBurns (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief Burns (historical). *Asynchronous*
 *
 * Gets burns.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash + '#' + index in mints Transaction array.
 * \param pool Pool position is within.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBurns (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief Factories (historical). *Synchronous*
 *
 * Gets factories.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Factory address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactories (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData);

/*! \brief Factories (historical). *Asynchronous*
 *
 * Gets factories.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Factory address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactories (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData);


/*! \brief Mints (historical). *Synchronous*
 *
 * Gets mints.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash + '#' + index in mints Transaction array.
 * \param pool Pool address.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetMints (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData);

/*! \brief Mints (historical). *Asynchronous*
 *
 * Gets mints.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash + '#' + index in mints Transaction array.
 * \param pool Pool address.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetMints (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PoolDayData (historical). *Synchronous*
 *
 * Gets poolDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool address)-(day id).
 * \param pool Pointer to pool.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PoolDayData (historical). *Asynchronous*
 *
 * Gets poolDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool address)-(day id).
 * \param pool Pointer to pool.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PoolHourData (historical). *Synchronous*
 *
 * Gets poolHourData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool address)-(day id)
 * \param pool Pointer to pool.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolHourData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PoolHourData (historical). *Asynchronous*
 *
 * Gets poolHourData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool address)-(day id)
 * \param pool Pointer to pool.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolHourData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (historical). *Synchronous*
 *
 * Gets pools.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Pool address.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPools (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData);

/*! \brief Pools (historical). *Asynchronous*
 *
 * Gets pools.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Pool address.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPools (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData);


/*! \brief PositionSnapshots (historical). *Synchronous*
 *
 * Gets positionSnapshots.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id NFT token identifier, format: (NFT token id)#(block number).
 * \param pool Pool the position is within.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionSnapshots (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief PositionSnapshots (historical). *Asynchronous*
 *
 * Gets positionSnapshots.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id NFT token identifier, format: (NFT token id)#(block number).
 * \param pool Pool the position is within.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionSnapshots (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief Positions (historical). *Synchronous*
 *
 * Gets positions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id NFT token identifier.
 * \param pool Pool position is within.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData);

/*! \brief Positions (historical). *Asynchronous*
 *
 * Gets positions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id NFT token identifier.
 * \param pool Pool position is within.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (historical). *Synchronous*
 *
 * Gets swaps.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
 * \param pool Pool swap occured within.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetSwaps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (historical). *Asynchronous*
 *
 * Gets swaps.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
 * \param pool Pool swap occured within.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetSwaps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TickDayData (historical). *Synchronous*
 *
 * Gets tickDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool address)-(tick index)-(timestamp).
 * \param pool Pointer to pool.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTickDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TickDayData (historical). *Asynchronous*
 *
 * Gets tickDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool address)-(tick index)-(timestamp).
 * \param pool Pointer to pool.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTickDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Ticks (historical). *Synchronous*
 *
 * Gets ticks.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool address)#(tick index)
 * \param pool Pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicks (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData);

/*! \brief Ticks (historical). *Asynchronous*
 *
 * Gets ticks.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool address)#(tick index)
 * \param pool Pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicks (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData);


/*! \brief TokenHourData (historical). *Synchronous*
 *
 * Gets tokenHourData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenHourData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenHourData (historical). *Asynchronous*
 *
 * Gets tokenHourData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenHourData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief TokenV3DayData (historical). *Synchronous*
 *
 * Gets tokenV3DayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenV3DayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenV3DayData (historical). *Asynchronous*
 *
 * Gets tokenV3DayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenV3DayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (historical). *Synchronous*
 *
 * Gets tokens.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address.
 * \param symbol Token symbol.
 * \param name Token name.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (historical). *Asynchronous*
 *
 * Gets tokens.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address.
 * \param symbol Token symbol.
 * \param name Token name.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (historical). *Synchronous*
 *
 * Gets transactions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTransactions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (historical). *Asynchronous*
 *
 * Gets transactions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTransactions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief UniswapDayData (historical). *Synchronous*
 *
 * Gets uniswapDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Timestamp rounded to current day by dividing by 86400.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetUniswapDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief UniswapDayData (historical). *Asynchronous*
 *
 * Gets uniswapDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Timestamp rounded to current day by dividing by 86400.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetUniswapDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Mints (current). *Synchronous*
 *
 * Gets mints.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Mints (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData);

/*! \brief Mints (current). *Asynchronous*
 *
 * Gets mints.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Mints (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PoolDayData (current). *Synchronous*
 *
 * Gets poolDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PoolDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PoolDayData (current). *Asynchronous*
 *
 * Gets poolDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PoolDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PoolHourData (current). *Synchronous*
 *
 * Gets poolHourData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PoolHourData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PoolHourData (current). *Asynchronous*
 *
 * Gets poolHourData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PoolHourData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (current). *Synchronous*
 *
 * Gets pools.
 * \param id Pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Pools (current)Sync(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData);

/*! \brief Pools (current). *Asynchronous*
 *
 * Gets pools.
 * \param id Pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Pools (current)Async(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData);


/*! \brief PositionSnapshots (current). *Synchronous*
 *
 * Gets positionSnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PositionSnapshots (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief PositionSnapshots (current). *Asynchronous*
 *
 * Gets positionSnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PositionSnapshots (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief Positions (current). *Synchronous*
 *
 * Gets positions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Positions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData);

/*! \brief Positions (current). *Asynchronous*
 *
 * Gets positions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Positions (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (current). *Synchronous*
 *
 * Gets swaps.
 * \param pool Pool swap occured within.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Swaps (current)Sync(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (current). *Asynchronous*
 *
 * Gets swaps.
 * \param pool Pool swap occured within.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Swaps (current)Async(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TickDayData (current). *Synchronous*
 *
 * Gets tickDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TickDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TickDayData (current). *Asynchronous*
 *
 * Gets tickDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TickDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Ticks (current). *Synchronous*
 *
 * Gets ticks.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Ticks (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData);

/*! \brief Ticks (current). *Asynchronous*
 *
 * Gets ticks.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Ticks (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData);


/*! \brief TokenHourData (current). *Synchronous*
 *
 * Gets tokenHourData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TokenHourData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenHourData (current). *Asynchronous*
 *
 * Gets tokenHourData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TokenHourData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief TokenV3DayData (current). *Synchronous*
 *
 * Gets tokenV3DayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TokenV3DayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenV3DayData (current). *Asynchronous*
 *
 * Gets tokenV3DayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TokenV3DayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current). *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Tokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current). *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Tokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (current). *Synchronous*
 *
 * Gets transactions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Transactions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (current). *Asynchronous*
 *
 * Gets transactions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Transactions (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief UniswapDayData (current). *Synchronous*
 *
 * Gets uniswapDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3UniswapDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief UniswapDayData (current). *Asynchronous*
 *
 * Gets uniswapDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3UniswapDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* UniswapV3Manager_H_ */
