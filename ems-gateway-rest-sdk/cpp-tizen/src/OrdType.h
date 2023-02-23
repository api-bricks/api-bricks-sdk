/*
 * OrdType.h
 *
 * Order types are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-type\&quot;&gt;EMS / Starter Guide / Order parameters / Order type&lt;/a&gt; 
 */

#ifndef _OrdType_H_
#define _OrdType_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Order types are documented in the separate section: <a href=\"#ems-order-params-type\">EMS / Starter Guide / Order parameters / Order type</a> 
 *
 *  \ingroup Models
 *
 */

class OrdType : public Object {
public:
	/*! \brief Constructor.
	 */
	OrdType();
	OrdType(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrdType();

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

#endif /* _OrdType_H_ */
