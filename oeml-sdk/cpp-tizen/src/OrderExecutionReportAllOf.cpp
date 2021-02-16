#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OrderExecutionReport_allOf.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OrderExecutionReport_allOf::OrderExecutionReport_allOf()
{
	//__init();
}

OrderExecutionReport_allOf::~OrderExecutionReport_allOf()
{
	//__cleanup();
}

void
OrderExecutionReport_allOf::__init()
{
	//client_order_id_format_exchange = std::string();
	//exchange_order_id = std::string();
	//amount_open = double(0);
	//amount_filled = double(0);
	//avg_px = double(0);
	//status = new OrdStatus();
	//new std::list()std::list> status_history;
	//error_message = std::string();
	//new std::list()std::list> fills;
}

void
OrderExecutionReport_allOf::__cleanup()
{
	//if(client_order_id_format_exchange != NULL) {
	//
	//delete client_order_id_format_exchange;
	//client_order_id_format_exchange = NULL;
	//}
	//if(exchange_order_id != NULL) {
	//
	//delete exchange_order_id;
	//exchange_order_id = NULL;
	//}
	//if(amount_open != NULL) {
	//
	//delete amount_open;
	//amount_open = NULL;
	//}
	//if(amount_filled != NULL) {
	//
	//delete amount_filled;
	//amount_filled = NULL;
	//}
	//if(avg_px != NULL) {
	//
	//delete avg_px;
	//avg_px = NULL;
	//}
	//if(status != NULL) {
	//
	//delete status;
	//status = NULL;
	//}
	//if(status_history != NULL) {
	//status_history.RemoveAll(true);
	//delete status_history;
	//status_history = NULL;
	//}
	//if(error_message != NULL) {
	//
	//delete error_message;
	//error_message = NULL;
	//}
	//if(fills != NULL) {
	//fills.RemoveAll(true);
	//delete fills;
	//fills = NULL;
	//}
	//
}

void
OrderExecutionReport_allOf::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *client_order_id_format_exchangeKey = "client_order_id_format_exchange";
	node = json_object_get_member(pJsonObject, client_order_id_format_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&client_order_id_format_exchange, node, "std::string", "");
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
	const gchar *amount_openKey = "amount_open";
	node = json_object_get_member(pJsonObject, amount_openKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amount_open, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amount_open);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *amount_filledKey = "amount_filled";
	node = json_object_get_member(pJsonObject, amount_filledKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amount_filled, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amount_filled);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *avg_pxKey = "avg_px";
	node = json_object_get_member(pJsonObject, avg_pxKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&avg_px, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&avg_px);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *statusKey = "status";
	node = json_object_get_member(pJsonObject, statusKey);
	if (node !=NULL) {
	

		if (isprimitive("OrdStatus")) {
			jsonToValue(&status, node, "OrdStatus", "OrdStatus");
		} else {
			
			OrdStatus* obj = static_cast<OrdStatus*> (&status);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *status_historyKey = "status_history";
	node = json_object_get_member(pJsonObject, status_historyKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::list> new_list;
			std::list inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::list")) {
					jsonToValue(&inst, temp_json, "std::list", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			status_history = new_list;
		}
		
	}
	const gchar *error_messageKey = "error_message";
	node = json_object_get_member(pJsonObject, error_messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&error_message, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *fillsKey = "fills";
	node = json_object_get_member(pJsonObject, fillsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Fills> new_list;
			Fills inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Fills")) {
					jsonToValue(&inst, temp_json, "Fills", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fills = new_list;
		}
		
	}
}

OrderExecutionReport_allOf::OrderExecutionReport_allOf(char* json)
{
	this->fromJson(json);
}

char*
OrderExecutionReport_allOf::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getClientOrderIdFormatExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *client_order_id_format_exchangeKey = "client_order_id_format_exchange";
	json_object_set_member(pJsonObject, client_order_id_format_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeOrderId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchange_order_idKey = "exchange_order_id";
	json_object_set_member(pJsonObject, exchange_order_idKey, node);
	if (isprimitive("long long")) {
		long long obj = getAmountOpen();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAmountOpen());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *amount_openKey = "amount_open";
	json_object_set_member(pJsonObject, amount_openKey, node);
	if (isprimitive("long long")) {
		long long obj = getAmountFilled();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAmountFilled());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *amount_filledKey = "amount_filled";
	json_object_set_member(pJsonObject, amount_filledKey, node);
	if (isprimitive("long long")) {
		long long obj = getAvgPx();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAvgPx());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *avg_pxKey = "avg_px";
	json_object_set_member(pJsonObject, avg_pxKey, node);
	if (isprimitive("OrdStatus")) {
		OrdStatus obj = getStatus();
		node = converttoJson(&obj, "OrdStatus", "");
	}
	else {
		
		OrdStatus obj = static_cast<OrdStatus> (getStatus());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *statusKey = "status";
	json_object_set_member(pJsonObject, statusKey, node);
	if (isprimitive("std::list")) {
		list<std::list> new_list = static_cast<list <std::list> > (getStatusHistory());
		node = converttoJson(&new_list, "std::list", "array");
	} else {
		node = json_node_alloc();
		list<std::list> new_list = static_cast<list <std::list> > (getStatusHistory());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<std::list>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			std::list obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *status_historyKey = "status_history";
	json_object_set_member(pJsonObject, status_historyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getErrorMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *error_messageKey = "error_message";
	json_object_set_member(pJsonObject, error_messageKey, node);
	if (isprimitive("Fills")) {
		list<Fills> new_list = static_cast<list <Fills> > (getFills());
		node = converttoJson(&new_list, "Fills", "array");
	} else {
		node = json_node_alloc();
		list<Fills> new_list = static_cast<list <Fills> > (getFills());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Fills>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Fills obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *fillsKey = "fills";
	json_object_set_member(pJsonObject, fillsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
OrderExecutionReport_allOf::getClientOrderIdFormatExchange()
{
	return client_order_id_format_exchange;
}

void
OrderExecutionReport_allOf::setClientOrderIdFormatExchange(std::string  client_order_id_format_exchange)
{
	this->client_order_id_format_exchange = client_order_id_format_exchange;
}

std::string
OrderExecutionReport_allOf::getExchangeOrderId()
{
	return exchange_order_id;
}

void
OrderExecutionReport_allOf::setExchangeOrderId(std::string  exchange_order_id)
{
	this->exchange_order_id = exchange_order_id;
}

long long
OrderExecutionReport_allOf::getAmountOpen()
{
	return amount_open;
}

void
OrderExecutionReport_allOf::setAmountOpen(long long  amount_open)
{
	this->amount_open = amount_open;
}

long long
OrderExecutionReport_allOf::getAmountFilled()
{
	return amount_filled;
}

void
OrderExecutionReport_allOf::setAmountFilled(long long  amount_filled)
{
	this->amount_filled = amount_filled;
}

long long
OrderExecutionReport_allOf::getAvgPx()
{
	return avg_px;
}

void
OrderExecutionReport_allOf::setAvgPx(long long  avg_px)
{
	this->avg_px = avg_px;
}

OrdStatus
OrderExecutionReport_allOf::getStatus()
{
	return status;
}

void
OrderExecutionReport_allOf::setStatus(OrdStatus  status)
{
	this->status = status;
}

std::list<std::list>
OrderExecutionReport_allOf::getStatusHistory()
{
	return status_history;
}

void
OrderExecutionReport_allOf::setStatusHistory(std::list <std::list> status_history)
{
	this->status_history = status_history;
}

std::string
OrderExecutionReport_allOf::getErrorMessage()
{
	return error_message;
}

void
OrderExecutionReport_allOf::setErrorMessage(std::string  error_message)
{
	this->error_message = error_message;
}

std::list<Fills>
OrderExecutionReport_allOf::getFills()
{
	return fills;
}

void
OrderExecutionReport_allOf::setFills(std::list <Fills> fills)
{
	this->fills = fills;
}


