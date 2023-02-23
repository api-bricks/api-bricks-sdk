/*
 * RejectReason.h
 *
 * Cause of rejection.
 */

#ifndef _RejectReason_H_
#define _RejectReason_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Cause of rejection.
 *
 *  \ingroup Models
 *
 */

class RejectReason : public Object {
public:
	/*! \brief Constructor.
	 */
	RejectReason();
	RejectReason(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RejectReason();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);


private:
	void __init();
	void __cleanup();

};
}
}

#endif /* _RejectReason_H_ */
