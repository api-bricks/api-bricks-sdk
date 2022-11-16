#ifndef _UniswapV3Manager_H_
#define _UniswapV3Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "UniswapV3.BundleV3DTO.h"
#include "UniswapV3.BurnV3DTO.h"
#include "UniswapV3.FactoryV3DTO.h"
#include "UniswapV3.MintV3DTO.h"
#include "UniswapV3.PoolDayDataV3DTO.h"
#include "UniswapV3.PoolHourDataV3DTO.h"
#include "UniswapV3.PoolV3DTO.h"
#include "UniswapV3.PositionSnapshotV3DTO.h"
#include "UniswapV3.PositionV3DTO.h"
#include "UniswapV3.SwapV3DTO.h"
#include "UniswapV3.TickDayDataV3DTO.h"
#include "UniswapV3.TickV3DTO.h"
#include "UniswapV3.TokenHourDataV3DTO.h"
#include "UniswapV3.TokenV3DTO.h"
#include "UniswapV3.TokenV3DayDataDTO.h"
#include "UniswapV3.UniswapDayDataV3DTO.h"
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
bool uniswapV3GetBundles (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (current). *Asynchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundles (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	, void* userData);


/*! \brief Burns (current). *Synchronous*
 *
 * Gets burns.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBurns (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	, void* userData);

/*! \brief Burns (current). *Asynchronous*
 *
 * Gets burns.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBurns (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	, void* userData);


/*! \brief DayData (current). *Synchronous*
 *
 * Gets uniswapv3 day data.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief DayData (current). *Asynchronous*
 *
 * Gets uniswapv3 day data.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief Factory (current). *Synchronous*
 *
 * Gets factory.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactory (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	, void* userData);

/*! \brief Factory (current). *Asynchronous*
 *
 * Gets factory.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactory (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	, void* userData);


/*! \brief Mints (current). *Synchronous*
 *
 * Gets mints.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetMints (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	, void* userData);

/*! \brief Mints (current). *Asynchronous*
 *
 * Gets mints.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetMints (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	, void* userData);


/*! \brief Pools (current) 🔥. *Synchronous*
 *
 * Gets pools.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPools (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	, void* userData);

/*! \brief Pools (current) 🔥. *Asynchronous*
 *
 * Gets pools.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPools (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	, void* userData);


/*! \brief PoolsDayData (current). *Synchronous*
 *
 * Gets pools day data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolsDayData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief PoolsDayData (current). *Asynchronous*
 *
 * Gets pools day data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolsDayData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief PoolsHourData (current). *Synchronous*
 *
 * Gets pools hour data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolsHourData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief PoolsHourData (current). *Asynchronous*
 *
 * Gets pools hour data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolsHourData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief Positions (current). *Synchronous*
 *
 * Gets positions.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositions (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	, void* userData);

/*! \brief Positions (current). *Asynchronous*
 *
 * Gets positions.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositions (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	, void* userData);


/*! \brief PositionsSnapshots (current). *Synchronous*
 *
 * Gets positions snapshots.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionsSnapshots (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	, void* userData);

/*! \brief PositionsSnapshots (current). *Asynchronous*
 *
 * Gets positions snapshots.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionsSnapshots (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (current) 🔥. *Synchronous*
 *
 * Gets swaps.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetSwaps (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (current) 🔥. *Asynchronous*
 *
 * Gets swaps.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetSwaps (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	, void* userData);


/*! \brief Ticks (current). *Synchronous*
 *
 * Gets ticks.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicks (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	, void* userData);

/*! \brief Ticks (current). *Asynchronous*
 *
 * Gets ticks.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicks (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	, void* userData);


/*! \brief TicksDayData (current). *Synchronous*
 *
 * Gets ticks day data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicksDayData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief TicksDayData (current). *Asynchronous*
 *
 * Gets ticks day data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicksDayData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current) 🔥. *Synchronous*
 *
 * Gets tokens.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokens (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current) 🔥. *Asynchronous*
 *
 * Gets tokens.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokens (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	, void* userData);


/*! \brief TokensDayData (current). *Synchronous*
 *
 * Gets tokens day data.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokensDayData (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokensDayData (current). *Asynchronous*
 *
 * Gets tokens day data.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokensDayData (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief TokensHourData (current). *Synchronous*
 *
 * Gets tokens hour data.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokensHourData (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief TokensHourData (current). *Asynchronous*
 *
 * Gets tokens hour data.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokensHourData (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
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
