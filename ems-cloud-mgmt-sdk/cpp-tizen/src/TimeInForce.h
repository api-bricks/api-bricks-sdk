/*
 * TimeInForce.h
 *
 * Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-tif\&quot;&gt;EMS / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
 */

#ifndef _TimeInForce_H_
#define _TimeInForce_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Order time in force options are documented in the separate section: <a href=\"#ems-order-params-tif\">EMS / Starter Guide / Order parameters / Time in force</a> 
 *
 *  \ingroup Models
 *
 */

class TimeInForce : public Object {
public:
	/*! \brief Constructor.
	 */
	TimeInForce();
	TimeInForce(char* str);

	/*! \brief Destructor.
	 */
	virtual ~TimeInForce();

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

#endif /* _TimeInForce_H_ */
