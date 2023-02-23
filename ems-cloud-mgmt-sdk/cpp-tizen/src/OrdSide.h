/*
 * OrdSide.h
 *
 * Side of order. 
 */

#ifndef _OrdSide_H_
#define _OrdSide_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Side of order. 
 *
 *  \ingroup Models
 *
 */

class OrdSide : public Object {
public:
	/*! \brief Constructor.
	 */
	OrdSide();
	OrdSide(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrdSide();

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

#endif /* _OrdSide_H_ */
