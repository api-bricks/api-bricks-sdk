#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OrderCancelAllRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OrderCancelAllRequest::OrderCancelAllRequest()
{
	//__init();
}

OrderCancelAllRequest::~OrderCancelAllRequest()
{
	//__cleanup();
}

void
OrderCancelAllRequest::__init()
{
	//exchange_id = std::string();
}

void
OrderCancelAllRequest::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//
}

void
OrderCancelAllRequest::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *exchange_idKey = "exchange_id";
	node = json_object_get_member(pJsonObject, exchange_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_id, node, "std::string", "");
		} else {
			
		}
	}
}

OrderCancelAllRequest::OrderCancelAllRequest(char* json)
{
	this->fromJson(json);
}

char*
OrderCancelAllRequest::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_idKey = "exchange_id";
	json_object_set_member(pJsonObject, exchange_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
OrderCancelAllRequest::getExchangeId()
{
	return exchange_id;
}

void
OrderCancelAllRequest::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}


