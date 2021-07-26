#ifndef _PositionsManager_H_
#define _PositionsManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "MessageReject.h"
#include "Position.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Positions Positions
 * \ingroup Operations
 *  @{
 */
class PositionsManager {
public:
	PositionsManager();
	virtual ~PositionsManager();

/*! \brief Get open positions. *Synchronous*
 *
 * Get current open positions across all or single exchange.
 * \param exchangeId Filter the balances to the specific exchange.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1PositionsGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Position>, Error, void* )
	, void* userData);

/*! \brief Get open positions. *Asynchronous*
 *
 * Get current open positions across all or single exchange.
 * \param exchangeId Filter the balances to the specific exchange.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1PositionsGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Position>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io";
	}
};
/** @}*/

}
}
#endif /* PositionsManager_H_ */
