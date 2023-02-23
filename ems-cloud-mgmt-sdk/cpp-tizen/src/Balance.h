/*
 * Balance.h
 *
 * 
 */

#ifndef _Balance_H_
#define _Balance_H_


#include <string>
#include "Balance_data_inner.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Balance : public Object {
public:
	/*! \brief Constructor.
	 */
	Balance();
	Balance(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Balance();

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
	/*! \brief Get 
	 */
	std::list<Balance_data_inner> getData();

	/*! \brief Set 
	 */
	void setData(std::list <Balance_data_inner> data);

private:
	std::string exchange_id;
	std::list <Balance_data_inner>data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Balance_H_ */
