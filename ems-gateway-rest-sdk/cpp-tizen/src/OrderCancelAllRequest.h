/*
 * OrderCancelAllRequest.h
 *
 * Cancel all orders request object.
 */

#ifndef _OrderCancelAllRequest_H_
#define _OrderCancelAllRequest_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Cancel all orders request object.
 *
 *  \ingroup Models
 *
 */

class OrderCancelAllRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	OrderCancelAllRequest();
	OrderCancelAllRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrderCancelAllRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Identifier of the exchange from which active orders should be canceled.
	 */
	std::string getExchangeId();

	/*! \brief Set Identifier of the exchange from which active orders should be canceled.
	 */
	void setExchangeId(std::string  exchange_id);

private:
	std::string exchange_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _OrderCancelAllRequest_H_ */
