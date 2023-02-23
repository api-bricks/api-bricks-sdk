/*
 * OrderExecutionReport_allOf.h
 *
 * The order execution report message.
 */

#ifndef _OrderExecutionReport_allOf_H_
#define _OrderExecutionReport_allOf_H_


#include <string>
#include "Fills.h"
#include "OrdStatus.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief The order execution report message.
 *
 *  \ingroup Models
 *
 */

class OrderExecutionReport_allOf : public Object {
public:
	/*! \brief Constructor.
	 */
	OrderExecutionReport_allOf();
	OrderExecutionReport_allOf(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrderExecutionReport_allOf();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
	 */
	std::string getClientOrderIdFormatExchange();

	/*! \brief Set The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
	 */
	void setClientOrderIdFormatExchange(std::string  client_order_id_format_exchange);
	/*! \brief Get Unique identifier of the order assigned by the exchange or executing system.
	 */
	std::string getExchangeOrderId();

	/*! \brief Set Unique identifier of the order assigned by the exchange or executing system.
	 */
	void setExchangeOrderId(std::string  exchange_order_id);
	/*! \brief Get Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
	 */
	long long getAmountOpen();

	/*! \brief Set Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
	 */
	void setAmountOpen(long long  amount_open);
	/*! \brief Get Total quantity filled.
	 */
	long long getAmountFilled();

	/*! \brief Set Total quantity filled.
	 */
	void setAmountFilled(long long  amount_filled);
	/*! \brief Get Calculated average price of all fills on this order.
	 */
	long long getAvgPx();

	/*! \brief Set Calculated average price of all fills on this order.
	 */
	void setAvgPx(long long  avg_px);
	/*! \brief Get 
	 */
	OrdStatus getStatus();

	/*! \brief Set 
	 */
	void setStatus(OrdStatus  status);
	/*! \brief Get Timestamped history of order status changes.
	 */
	std::list<std::list> getStatusHistory();

	/*! \brief Set Timestamped history of order status changes.
	 */
	void setStatusHistory(std::list <std::list> status_history);
	/*! \brief Get Error message.
	 */
	std::string getErrorMessage();

	/*! \brief Set Error message.
	 */
	void setErrorMessage(std::string  error_message);
	/*! \brief Get Relay fill information on working orders.
	 */
	std::list<Fills> getFills();

	/*! \brief Set Relay fill information on working orders.
	 */
	void setFills(std::list <Fills> fills);

private:
	std::string client_order_id_format_exchange;
	std::string exchange_order_id;
	long long amount_open;
	long long amount_filled;
	long long avg_px;
	OrdStatus status;
	std::list <std::list>status_history;
	std::string error_message;
	std::list <Fills>fills;
	void __init();
	void __cleanup();

};
}
}

#endif /* _OrderExecutionReport_allOf_H_ */
