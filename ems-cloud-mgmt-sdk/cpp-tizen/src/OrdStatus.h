/*
 * OrdStatus.h
 *
 * Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-lifecycle\&quot;&gt;EMS / Starter Guide / Order Lifecycle&lt;/a&gt; 
 */

#ifndef _OrdStatus_H_
#define _OrdStatus_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Order statuses and the lifecycle are documented in the separate section: <a href=\"#ems-order-lifecycle\">EMS / Starter Guide / Order Lifecycle</a> 
 *
 *  \ingroup Models
 *
 */

class OrdStatus : public Object {
public:
	/*! \brief Constructor.
	 */
	OrdStatus();
	OrdStatus(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrdStatus();

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

#endif /* _OrdStatus_H_ */
