#ifndef _DexManager_H_
#define _DexManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Dex.BatchDTO.h"
#include "Dex.DepositDTO.h"
#include "Dex.OrderDTO.h"
#include "Dex.PriceDTO.h"
#include "Dex.SolutionDTO.h"
#include "Dex.StatsDTO.h"
#include "Dex.TokenDTO.h"
#include "Dex.TradeDTO.h"
#include "Dex.UserDTO.h"
#include "Dex.WithdrawDTO.h"
#include "Dex.WithdrawRequestDTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Dex Dex
 * \ingroup Operations
 *  @{
 */
class DexManager {
public:
	DexManager();
	virtual ~DexManager();

/*! \brief Batches (current). *Synchronous*
 *
 * Gets batches.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexBatches (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	, void* userData);

/*! \brief Batches (current). *Asynchronous*
 *
 * Gets batches.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexBatches (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	, void* userData);


/*! \brief Deposits (current). *Synchronous*
 *
 * Gets deposits.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexDeposits (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	, void* userData);

/*! \brief Deposits (current). *Asynchronous*
 *
 * Gets deposits.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexDeposits (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	, void* userData);


/*! \brief Batches (historical). *Synchronous*
 *
 * Gets batches.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetBatches (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	, void* userData);

/*! \brief Batches (historical). *Asynchronous*
 *
 * Gets batches.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetBatches (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.BatchDTO>, Error, void* )
	, void* userData);


/*! \brief Deposits (historical). *Synchronous*
 *
 * Gets deposits.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (transaction hash)-(token id).
 * \param user User address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetDeposits (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	, void* userData);

/*! \brief Deposits (historical). *Asynchronous*
 *
 * Gets deposits.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (transaction hash)-(token id).
 * \param user User address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetDeposits (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Dex.DepositDTO>, Error, void* )
	, void* userData);


/*! \brief Orders (historical). *Synchronous*
 *
 * Gets orders.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (owner address)-(order id)
 * \param buyToken Identifier of token that was bought.
 * \param sellToken Identifier of token that was sold.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetOrders (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string buyToken, std::string sellToken, 
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	, void* userData);

/*! \brief Orders (historical). *Asynchronous*
 *
 * Gets orders.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (owner address)-(order id)
 * \param buyToken Identifier of token that was bought.
 * \param sellToken Identifier of token that was sold.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetOrders (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string buyToken, std::string sellToken, 
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	, void* userData);


/*! \brief Prices (historical). *Synchronous*
 *
 * Gets prices.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (token id)-(batch id).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetPrices (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	, void* userData);

/*! \brief Prices (historical). *Asynchronous*
 *
 * Gets prices.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (token id)-(batch id).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetPrices (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	, void* userData);


/*! \brief Solutions (historical). *Synchronous*
 *
 * Gets solutions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetSolutions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	, void* userData);

/*! \brief Solutions (historical). *Asynchronous*
 *
 * Gets solutions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetSolutions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	, void* userData);


/*! \brief Stats (historical). *Synchronous*
 *
 * Gets stats.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetStats (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	, void* userData);

/*! \brief Stats (historical). *Asynchronous*
 *
 * Gets stats.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetStats (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (historical). *Synchronous*
 *
 * Gets tokens.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param symbol 
 * \param name 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, std::string symbol, std::string name, 
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (historical). *Asynchronous*
 *
 * Gets tokens.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param symbol 
 * \param name 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, std::string symbol, std::string name, 
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Trades (historical). *Synchronous*
 *
 * Gets trades.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param buyToken 
 * \param sellToken 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetTrades (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string buyToken, std::string sellToken, 
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData);

/*! \brief Trades (historical). *Asynchronous*
 *
 * Gets trades.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param buyToken 
 * \param sellToken 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetTrades (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string buyToken, std::string sellToken, 
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
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
bool dexGetUsers (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
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
bool dexGetUsers (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	, void* userData);


/*! \brief WithdrawRequests (historical). *Synchronous*
 *
 * Gets withdrawRequests.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (transaction hash)-(id).
 * \param user 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetWithdrawRequests (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	, void* userData);

/*! \brief WithdrawRequests (historical). *Asynchronous*
 *
 * Gets withdrawRequests.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (transaction hash)-(id).
 * \param user 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetWithdrawRequests (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	, void* userData);


/*! \brief Withdraws (historical). *Synchronous*
 *
 * Gets withdraws.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (transaction hash)-(id).
 * \param user 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetWithdraws (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	, void* userData);

/*! \brief Withdraws (historical). *Asynchronous*
 *
 * Gets withdraws.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (transaction hash)-(id).
 * \param user 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetWithdraws (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	, void* userData);


/*! \brief Orders (current). *Synchronous*
 *
 * Gets orders.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexOrders (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	, void* userData);

/*! \brief Orders (current). *Asynchronous*
 *
 * Gets orders.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexOrders (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.OrderDTO>, Error, void* )
	, void* userData);


/*! \brief Prices (current). *Synchronous*
 *
 * Gets prices.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexPrices (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	, void* userData);

/*! \brief Prices (current). *Asynchronous*
 *
 * Gets prices.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexPrices (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.PriceDTO>, Error, void* )
	, void* userData);


/*! \brief Solutions (current). *Synchronous*
 *
 * Gets solutions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexSolutions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	, void* userData);

/*! \brief Solutions (current). *Asynchronous*
 *
 * Gets solutions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexSolutions (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.SolutionDTO>, Error, void* )
	, void* userData);


/*! \brief Stats (current). *Synchronous*
 *
 * Gets stats.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexStats (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	, void* userData);

/*! \brief Stats (current). *Asynchronous*
 *
 * Gets stats.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexStats (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.StatsDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current). *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexTokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current). *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexTokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Trades (current). *Synchronous*
 *
 * Gets trades.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexTrades (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData);

/*! \brief Trades (current). *Asynchronous*
 *
 * Gets trades.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexTrades (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData);


/*! \brief Users (current). *Synchronous*
 *
 * Gets users.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexUsers (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	, void* userData);

/*! \brief Users (current). *Asynchronous*
 *
 * Gets users.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexUsers (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.UserDTO>, Error, void* )
	, void* userData);


/*! \brief WithdrawRequests (current). *Synchronous*
 *
 * Gets withdrawRequests.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexWithdrawRequests (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	, void* userData);

/*! \brief WithdrawRequests (current). *Asynchronous*
 *
 * Gets withdrawRequests.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexWithdrawRequests (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.WithdrawRequestDTO>, Error, void* )
	, void* userData);


/*! \brief Withdraws (current). *Synchronous*
 *
 * Gets withdraws.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexWithdraws (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	, void* userData);

/*! \brief Withdraws (current). *Asynchronous*
 *
 * Gets withdraws.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexWithdraws (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.WithdrawDTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* DexManager_H_ */
