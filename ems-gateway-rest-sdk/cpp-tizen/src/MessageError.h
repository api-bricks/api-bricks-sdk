/*
 * MessageError.h
 *
 * 
 */

#ifndef _MessageError_H_
#define _MessageError_H_


#include <string>
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

class MessageError : public Object {
public:
	/*! \brief Constructor.
	 */
	MessageError();
	MessageError(char* str);

	/*! \brief Destructor.
	 */
	virtual ~MessageError();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Message text.
	 */
	std::string getMessage();

	/*! \brief Set Message text.
	 */
	void setMessage(std::string  message);

private:
	std::string message;
	void __init();
	void __cleanup();

};
}
}

#endif /* _MessageError_H_ */
