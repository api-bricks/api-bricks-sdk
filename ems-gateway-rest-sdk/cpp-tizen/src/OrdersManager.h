#ifndef _OrdersManager_H_
#define _OrdersManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "MessageError.h"
#include "MessageReject.h"
#include "OrderCancelAllRequest.h"
#include "OrderCancelSingleRequest.h"
#include "OrderExecutionReport.h"
#include "OrderHistory.h"
#include "OrderNewSingleRequest.h"
#include "ValidationError.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Orders Orders
 * \ingroup Operations
 *  @{
 */
class OrdersManager {
public:
	OrdersManager();
	virtual ~OrdersManager();

/*! \brief Cancel all orders request. *Synchronous*
 *
 * This request cancels all open orders on single specified exchange.
 * \param orderCancelAllRequest OrderCancelAllRequest object. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelAllPostSync(char * accessToken,
	std::shared_ptr<OrderCancelAllRequest> orderCancelAllRequest, 
	void(* handler)(MessageReject, Error, void* )
	, void* userData);

/*! \brief Cancel all orders request. *Asynchronous*
 *
 * This request cancels all open orders on single specified exchange.
 * \param orderCancelAllRequest OrderCancelAllRequest object. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelAllPostAsync(char * accessToken,
	std::shared_ptr<OrderCancelAllRequest> orderCancelAllRequest, 
	void(* handler)(MessageReject, Error, void* )
	, void* userData);


/*! \brief Cancel order request. *Synchronous*
 *
 * Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
 * \param orderCancelSingleRequest OrderCancelSingleRequest object. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelPostSync(char * accessToken,
	std::shared_ptr<OrderCancelSingleRequest> orderCancelSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData);

/*! \brief Cancel order request. *Asynchronous*
 *
 * Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
 * \param orderCancelSingleRequest OrderCancelSingleRequest object. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersCancelPostAsync(char * accessToken,
	std::shared_ptr<OrderCancelSingleRequest> orderCancelSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData);


/*! \brief Get open orders. *Synchronous*
 *
 * Get last execution reports for open orders across all or single exchange.
 * \param exchangeId Filter the open orders to the specific exchange.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<OrderExecutionReport>, Error, void* )
	, void* userData);

/*! \brief Get open orders. *Asynchronous*
 *
 * Get last execution reports for open orders across all or single exchange.
 * \param exchangeId Filter the open orders to the specific exchange.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<OrderExecutionReport>, Error, void* )
	, void* userData);


/*! \brief History of order changes. *Synchronous*
 *
 * Based on the date range, all changes registered in the orderbook.
 * \param timeStart Start date *Required*
 * \param timeEnd End date *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersHistoryTimeStartTimeEndGetSync(char * accessToken,
	std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<OrderHistory>, Error, void* )
	, void* userData);

/*! \brief History of order changes. *Asynchronous*
 *
 * Based on the date range, all changes registered in the orderbook.
 * \param timeStart Start date *Required*
 * \param timeEnd End date *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersHistoryTimeStartTimeEndGetAsync(char * accessToken,
	std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<OrderHistory>, Error, void* )
	, void* userData);


/*! \brief Send new order. *Synchronous*
 *
 * This request creating new order for the specific exchange.
 * \param orderNewSingleRequest OrderNewSingleRequest object. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersPostSync(char * accessToken,
	std::shared_ptr<OrderNewSingleRequest> orderNewSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData);

/*! \brief Send new order. *Asynchronous*
 *
 * This request creating new order for the specific exchange.
 * \param orderNewSingleRequest OrderNewSingleRequest object. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersPostAsync(char * accessToken,
	std::shared_ptr<OrderNewSingleRequest> orderNewSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData);


/*! \brief Get order execution report. *Synchronous*
 *
 * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
 * \param clientOrderId The unique identifier of the order assigned by the client. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersStatusClientOrderIdGetSync(char * accessToken,
	std::string clientOrderId, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData);

/*! \brief Get order execution report. *Asynchronous*
 *
 * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
 * \param clientOrderId The unique identifier of the order assigned by the client. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1OrdersStatusClientOrderIdGetAsync(char * accessToken,
	std::string clientOrderId, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://ems-gateway-aws-eu-central-1-dev.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* OrdersManager_H_ */
