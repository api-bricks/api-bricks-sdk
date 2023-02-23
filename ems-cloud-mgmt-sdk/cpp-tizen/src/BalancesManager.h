#ifndef _BalancesManager_H_
#define _BalancesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Balance.h"
#include "MessageReject.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Balances Balances
 * \ingroup Operations
 *  @{
 */
class BalancesManager {
public:
	BalancesManager();
	virtual ~BalancesManager();

/*! \brief Get balances. *Synchronous*
 *
 * Get current currency balance from all or single exchange.
 * \param exchangeId Filter the balances to the specific exchange.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1BalancesGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Balance>, Error, void* )
	, void* userData);

/*! \brief Get balances. *Asynchronous*
 *
 * Get current currency balance from all or single exchange.
 * \param exchangeId Filter the balances to the specific exchange.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1BalancesGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<Balance>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://ems-gateway-aws-eu-central-1-dev.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* BalancesManager_H_ */
