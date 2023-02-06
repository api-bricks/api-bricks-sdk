#ifndef _UniswapV2Manager_H_
#define _UniswapV2Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "UniswapV2.BundleDTO.h"
#include "UniswapV2.BurnDTO.h"
#include "UniswapV2.LiquidityPositionDTO.h"
#include "UniswapV2.LiquidityPositionSnapshotDTO.h"
#include "UniswapV2.MintDTO.h"
#include "UniswapV2.PairDTO.h"
#include "UniswapV2.PairDayDataDTO.h"
#include "UniswapV2.PairHourDataDTO.h"
#include "UniswapV2.SwapDTO.h"
#include "UniswapV2.TokenDTO.h"
#include "UniswapV2.TokenDayDataDTO.h"
#include "UniswapV2.TransactionDTO.h"
#include "UniswapV2.UniswapDayDataDTO.h"
#include "UniswapV2.UniswapFactoryDTO.h"
#include "UniswapV2.UserDTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup UniswapV2 UniswapV2
 * \ingroup Operations
 *  @{
 */
class UniswapV2Manager {
public:
	UniswapV2Manager();
	virtual ~UniswapV2Manager();

/*! \brief Bundles (current). *Synchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Bundles (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (current). *Asynchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Bundles (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Burns (current). *Synchronous*
 *
 * Gets burns.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Burns (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief Burns (current). *Asynchronous*
 *
 * Gets burns.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Burns (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief Bundles (historical). *Synchronous*
 *
 * Gets bundles.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Constant 1.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBundles (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (historical). *Asynchronous*
 *
 * Gets bundles.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Constant 1.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBundles (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Burns (historical). *Synchronous*
 *
 * Gets burns.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash plus index in the transaction burn array
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBurns (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<UniswapV2.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief Burns (historical). *Asynchronous*
 *
 * Gets burns.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash plus index in the transaction burn array
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBurns (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<UniswapV2.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionSnapshots (historical). *Synchronous*
 *
 * Gets liquidityPositionSnapshots.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pair address)-(user address)
 * \param user Reference to user.
 * \param pair Reference to the pair liquidity is being provided on.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositionSnapshots (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, std::string pair, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionSnapshots (historical). *Asynchronous*
 *
 * Gets liquidityPositionSnapshots.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pair address)-(user address)
 * \param user Reference to user.
 * \param pair Reference to the pair liquidity is being provided on.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositionSnapshots (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, std::string pair, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositions (historical). *Synchronous*
 *
 * Gets liquidityPositions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id User address and pair address concatenated with a dash.
 * \param user Reference to user.
 * \param pair Reference to the pair liquidity is being provided on.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, std::string pair, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositions (historical). *Asynchronous*
 *
 * Gets liquidityPositions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id User address and pair address concatenated with a dash.
 * \param user Reference to user.
 * \param pair Reference to the pair liquidity is being provided on.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, std::string pair, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionDTO>, Error, void* )
	, void* userData);


/*! \brief Mints (historical). *Synchronous*
 *
 * Gets mints.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash plus index in the transaction mint array.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetMints (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<UniswapV2.MintDTO>, Error, void* )
	, void* userData);

/*! \brief Mints (historical). *Asynchronous*
 *
 * Gets mints.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash plus index in the transaction mint array.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetMints (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<UniswapV2.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PairDayData (historical). *Synchronous*
 *
 * Gets pairDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param token0 Reference to token0.
 * \param token1 Reference to token1.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV2.PairDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairDayData (historical). *Asynchronous*
 *
 * Gets pairDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param token0 Reference to token0.
 * \param token1 Reference to token1.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV2.PairDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PairHourData (historical). *Synchronous*
 *
 * Gets pairHourData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pair Address for pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairHourData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<UniswapV2.PairHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairHourData (historical). *Asynchronous*
 *
 * Gets pairHourData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pair Address for pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairHourData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<UniswapV2.PairHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pairs (historical). *Synchronous*
 *
 * Gets pairs.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Pair contract address.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV2.PairDTO>, Error, void* )
	, void* userData);

/*! \brief Pairs (historical). *Asynchronous*
 *
 * Gets pairs.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Pair contract address.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV2.PairDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (historical). *Synchronous*
 *
 * Gets swaps.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash plus index in Transaction swap array.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetSwaps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<UniswapV2.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (historical). *Asynchronous*
 *
 * Gets swaps.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash plus index in Transaction swap array.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetSwaps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<UniswapV2.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TokenDayData (historical). *Synchronous*
 *
 * Gets tokenDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokenDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.TokenDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenDayData (historical). *Asynchronous*
 *
 * Gets tokenDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokenDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.TokenDayDataDTO>, Error, void* )
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
bool uniswapV2GetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV2.TokenDTO>, Error, void* )
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
bool uniswapV2GetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV2.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (historical). *Synchronous*
 *
 * Gets transactions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Ethereum transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTransactions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (historical). *Asynchronous*
 *
 * Gets transactions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Ethereum transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTransactions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief UniswapDayData (historical). *Synchronous*
 *
 * Gets uniswapDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Unix timestamp for start of day / 86400 giving a unique day index.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUniswapDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.UniswapDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief UniswapDayData (historical). *Asynchronous*
 *
 * Gets uniswapDayData.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Unix timestamp for start of day / 86400 giving a unique day index.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUniswapDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.UniswapDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief UniswapFactories (historical). *Synchronous*
 *
 * Gets uniswapFactories.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Factory address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUniswapFactories (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.UniswapFactoryDTO>, Error, void* )
	, void* userData);

/*! \brief UniswapFactories (historical). *Asynchronous*
 *
 * Gets uniswapFactories.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Factory address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUniswapFactories (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.UniswapFactoryDTO>, Error, void* )
	, void* userData);


/*! \brief Users (historical). *Synchronous*
 *
 * Gets users.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id User address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUsers (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.UserDTO>, Error, void* )
	, void* userData);

/*! \brief Users (historical). *Asynchronous*
 *
 * Gets users.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id User address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUsers (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV2.UserDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionSnapshots (current). *Synchronous*
 *
 * Gets liquidityPositionSnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2LiquidityPositionSnapshots (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionSnapshots (current). *Asynchronous*
 *
 * Gets liquidityPositionSnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2LiquidityPositionSnapshots (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositions (current). *Synchronous*
 *
 * Gets liquidityPositions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2LiquidityPositions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.LiquidityPositionDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositions (current). *Asynchronous*
 *
 * Gets liquidityPositions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2LiquidityPositions (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.LiquidityPositionDTO>, Error, void* )
	, void* userData);


/*! \brief Mints (current). *Synchronous*
 *
 * Gets mints.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Mints (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.MintDTO>, Error, void* )
	, void* userData);

/*! \brief Mints (current). *Asynchronous*
 *
 * Gets mints.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Mints (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PairDayData (current). *Synchronous*
 *
 * Gets pairDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2PairDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.PairDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairDayData (current). *Asynchronous*
 *
 * Gets pairDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2PairDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.PairDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PairHourData (current). *Synchronous*
 *
 * Gets pairHourData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2PairHourData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.PairHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairHourData (current). *Asynchronous*
 *
 * Gets pairHourData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2PairHourData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.PairHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pairs (current). *Synchronous*
 *
 * Gets pairs.
 * \param id Pair contract address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Pairs (current)Sync(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV2.PairDTO>, Error, void* )
	, void* userData);

/*! \brief Pairs (current). *Asynchronous*
 *
 * Gets pairs.
 * \param id Pair contract address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Pairs (current)Async(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV2.PairDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (current). *Synchronous*
 *
 * Gets swaps.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Swaps (current)Sync(char * accessToken,
	std::string pair, 
	void(* handler)(std::list<UniswapV2.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (current). *Asynchronous*
 *
 * Gets swaps.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Swaps (current)Async(char * accessToken,
	std::string pair, 
	void(* handler)(std::list<UniswapV2.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TokenDayData (current). *Synchronous*
 *
 * Gets tokenDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2TokenDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenDayData (current). *Asynchronous*
 *
 * Gets tokenDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2TokenDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current). *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Tokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current). *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Tokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (current). *Synchronous*
 *
 * Gets transactions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Transactions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (current). *Asynchronous*
 *
 * Gets transactions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Transactions (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief UniswapDayData (current). *Synchronous*
 *
 * Gets uniswapDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2UniswapDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.UniswapDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief UniswapDayData (current). *Asynchronous*
 *
 * Gets uniswapDayData.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2UniswapDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.UniswapDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief UniswapFactories (current). *Synchronous*
 *
 * Gets uniswapFactories.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2UniswapFactories (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.UniswapFactoryDTO>, Error, void* )
	, void* userData);

/*! \brief UniswapFactories (current). *Asynchronous*
 *
 * Gets uniswapFactories.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2UniswapFactories (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.UniswapFactoryDTO>, Error, void* )
	, void* userData);


/*! \brief Users (current). *Synchronous*
 *
 * Gets users.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Users (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.UserDTO>, Error, void* )
	, void* userData);

/*! \brief Users (current). *Asynchronous*
 *
 * Gets users.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2Users (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.UserDTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* UniswapV2Manager_H_ */
