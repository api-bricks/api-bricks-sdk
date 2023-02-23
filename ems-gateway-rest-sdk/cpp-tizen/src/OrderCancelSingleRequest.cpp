#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OrderCancelSingleRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OrderCancelSingleRequest::OrderCancelSingleRequest()
{
	//__init();
}

OrderCancelSingleRequest::~OrderCancelSingleRequest()
{
	//__cleanup();
}

void
OrderCancelSingleRequest::__init()
{
	//exchange_id = std::string();
	//exchange_order_id = std::string();
	//client_order_id = std::string();
}

void
OrderCancelSingleRequest::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(exchange_order_id != NULL) {
	//
	//delete exchange_order_id;
	//exchange_order_id = NULL;
	//}
	//if(client_order_id != NULL) {
	//
	//delete client_order_id;
	//client_order_id = NULL;
	//}
	//
}

void
OrderCancelSingleRequest::fromJson(char* jsonStr)
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
	const gchar *exchange_order_idKey = "exchange_order_id";
	node = json_object_get_member(pJsonObject, exchange_order_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchange_order_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *client_order_idKey = "client_order_id";
	node = json_object_get_member(pJsonObject, client_order_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&client_order_id, node, "std::string", "");
		} else {
			
		}
	}
}

OrderCancelSingleRequest::OrderCancelSingleRequest(char* json)
{
	this->fromJson(json);
}

char*
OrderCancelSingleRequest::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getExchangeOrderId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_order_idKey = "exchange_order_id";
	json_object_set_member(pJsonObject, exchange_order_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClientOrderId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *client_order_idKey = "client_order_id";
	json_object_set_member(pJsonObject, client_order_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
OrderCancelSingleRequest::getExchangeId()
{
	return exchange_id;
}

void
OrderCancelSingleRequest::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
OrderCancelSingleRequest::getExchangeOrderId()
{
	return exchange_order_id;
}

void
OrderCancelSingleRequest::setExchangeOrderId(std::string  exchange_order_id)
{
	this->exchange_order_id = exchange_order_id;
}

std::string
OrderCancelSingleRequest::getClientOrderId()
{
	return client_order_id;
}

void
OrderCancelSingleRequest::setClientOrderId(std::string  client_order_id)
{
	this->client_order_id = client_order_id;
}


