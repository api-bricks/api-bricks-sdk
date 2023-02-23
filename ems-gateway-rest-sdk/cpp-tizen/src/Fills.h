/*
 * Fills.h
 *
 * 
 */

#ifndef _Fills_H_
#define _Fills_H_


#include <string>
#include "Date.h"
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

class Fills : public Object {
public:
	/*! \brief Constructor.
	 */
	Fills();
	Fills(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Fills();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Execution time.
	 */
	Date getTime();

	/*! \brief Set Execution time.
	 */
	void setTime(Date  time);
	/*! \brief Get Execution price.
	 */
	long long getPrice();

	/*! \brief Set Execution price.
	 */
	void setPrice(long long  price);
	/*! \brief Get Executed quantity.
	 */
	long long getAmount();

	/*! \brief Set Executed quantity.
	 */
	void setAmount(long long  amount);

private:
	Date time;
	long long price;
	long long amount;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Fills_H_ */
