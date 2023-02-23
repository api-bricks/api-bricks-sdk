/*
 * OrderCancelSingleRequest.h
 *
 * Cancel single order request object.
 */

#ifndef _OrderCancelSingleRequest_H_
#define _OrderCancelSingleRequest_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Cancel single order request object.
 *
 *  \ingroup Models
 *
 */

class OrderCancelSingleRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	OrderCancelSingleRequest();
	OrderCancelSingleRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrderCancelSingleRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Exchange identifier used to identify the routing destination.
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange identifier used to identify the routing destination.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
	 */
	std::string getExchangeOrderId();

	/*! \brief Set Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
	 */
	void setExchangeOrderId(std::string  exchange_order_id);
	/*! \brief Get The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
	 */
	std::string getClientOrderId();

	/*! \brief Set The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
	 */
	void setClientOrderId(std::string  client_order_id);

private:
	std::string exchange_id;
	std::string exchange_order_id;
	std::string client_order_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _OrderCancelSingleRequest_H_ */
