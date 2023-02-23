/*
 * MessageReject.h
 *
 * 
 */

#ifndef _MessageReject_H_
#define _MessageReject_H_


#include <string>
#include "RejectReason.h"
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

class MessageReject : public Object {
public:
	/*! \brief Constructor.
	 */
	MessageReject();
	MessageReject(char* str);

	/*! \brief Destructor.
	 */
	virtual ~MessageReject();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Message type, constant.
	 */
	std::string getType();

	/*! \brief Set Message type, constant.
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	RejectReason getRejectReason();

	/*! \brief Set 
	 */
	void setRejectReason(RejectReason  reject_reason);
	/*! \brief Get If the message related to exchange, then the identifier of the exchange will be provided.
	 */
	std::string getExchangeId();

	/*! \brief Set If the message related to exchange, then the identifier of the exchange will be provided.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get Message text.
	 */
	std::string getMessage();

	/*! \brief Set Message text.
	 */
	void setMessage(std::string  message);
	/*! \brief Get Value of rejected request, if available.
	 */
	std::string getRejectedMessage();

	/*! \brief Set Value of rejected request, if available.
	 */
	void setRejectedMessage(std::string  rejected_message);

private:
	std::string type;
	RejectReason reject_reason;
	std::string exchange_id;
	std::string message;
	std::string rejected_message;
	void __init();
	void __cleanup();

};
}
}

#endif /* _MessageReject_H_ */
