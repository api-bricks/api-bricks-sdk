#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "MessageReject.h"

using namespace std;
using namespace Tizen::ArtikCloud;

MessageReject::MessageReject()
{
	//__init();
}

MessageReject::~MessageReject()
{
	//__cleanup();
}

void
MessageReject::__init()
{
	//type = std::string();
	//reject_reason = new RejectReason();
	//exchange_id = std::string();
	//message = std::string();
	//rejected_message = std::string();
}

void
MessageReject::__cleanup()
{
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(reject_reason != NULL) {
	//
	//delete reject_reason;
	//reject_reason = NULL;
	//}
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(message != NULL) {
	//
	//delete message;
	//message = NULL;
	//}
	//if(rejected_message != NULL) {
	//
	//delete rejected_message;
	//rejected_message = NULL;
	//}
	//
}

void
MessageReject::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *reject_reasonKey = "reject_reason";
	node = json_object_get_member(pJsonObject, reject_reasonKey);
	if (node !=NULL) {
	

		if (isprimitive("RejectReason")) {
			jsonToValue(&reject_reason, node, "RejectReason", "RejectReason");
		} else {
			
			RejectReason* obj = static_cast<RejectReason*> (&reject_reason);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *exchange_idKey = "exchange_id";
	node = json_object_get_member(pJsonObject, exchange_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *messageKey = "message";
	node = json_object_get_member(pJsonObject, messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&message, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *rejected_messageKey = "rejected_message";
	node = json_object_get_member(pJsonObject, rejected_messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&rejected_message, node, "std::string", "");
		} else {
			
		}
	}
}

MessageReject::MessageReject(char* json)
{
	this->fromJson(json);
}

char*
MessageReject::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("RejectReason")) {
		RejectReason obj = getRejectReason();
		node = converttoJson(&obj, "RejectReason", "");
	}
	else {
		
		RejectReason obj = static_cast<RejectReason> (getRejectReason());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *reject_reasonKey = "reject_reason";
	json_object_set_member(pJsonObject, reject_reasonKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *messageKey = "message";
	json_object_set_member(pJsonObject, messageKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRejectedMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *rejected_messageKey = "rejected_message";
	json_object_set_member(pJsonObject, rejected_messageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
MessageReject::getType()
{
	return type;
}

void
MessageReject::setType(std::string  type)
{
	this->type = type;
}

RejectReason
MessageReject::getRejectReason()
{
	return reject_reason;
}

void
MessageReject::setRejectReason(RejectReason  reject_reason)
{
	this->reject_reason = reject_reason;
}

std::string
MessageReject::getExchangeId()
{
	return exchange_id;
}

void
MessageReject::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
MessageReject::getMessage()
{
	return message;
}

void
MessageReject::setMessage(std::string  message)
{
	this->message = message;
}

std::string
MessageReject::getRejectedMessage()
{
	return rejected_message;
}

void
MessageReject::setRejectedMessage(std::string  rejected_message)
{
	this->rejected_message = rejected_message;
}


