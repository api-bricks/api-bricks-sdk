#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OrderExecutionReport.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OrderExecutionReport::OrderExecutionReport()
{
	//__init();
}

OrderExecutionReport::~OrderExecutionReport()
{
	//__cleanup();
}

void
OrderExecutionReport::__init()
{
	//exchange_id = std::string();
	//client_order_id = std::string();
	//symbol_id_exchange = std::string();
	//symbol_id_coinapi = std::string();
	//amount_order = double(0);
	//price = double(0);
	//side = new OrdSide();
	//order_type = new OrdType();
	//time_in_force = new TimeInForce();
	//expire_time = null;
	//new std::list()std::list> exec_inst;
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
OrderExecutionReport::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(client_order_id != NULL) {
	//
	//delete client_order_id;
	//client_order_id = NULL;
	//}
	//if(symbol_id_exchange != NULL) {
	//
	//delete symbol_id_exchange;
	//symbol_id_exchange = NULL;
	//}
	//if(symbol_id_coinapi != NULL) {
	//
	//delete symbol_id_coinapi;
	//symbol_id_coinapi = NULL;
	//}
	//if(amount_order != NULL) {
	//
	//delete amount_order;
	//amount_order = NULL;
	//}
	//if(price != NULL) {
	//
	//delete price;
	//price = NULL;
	//}
	//if(side != NULL) {
	//
	//delete side;
	//side = NULL;
	//}
	//if(order_type != NULL) {
	//
	//delete order_type;
	//order_type = NULL;
	//}
	//if(time_in_force != NULL) {
	//
	//delete time_in_force;
	//time_in_force = NULL;
	//}
	//if(expire_time != NULL) {
	//
	//delete expire_time;
	//expire_time = NULL;
	//}
	//if(exec_inst != NULL) {
	//exec_inst.RemoveAll(true);
	//delete exec_inst;
	//exec_inst = NULL;
	//}
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
OrderExecutionReport::fromJson(char* jsonStr)
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
	const gchar *client_order_idKey = "client_order_id";
	node = json_object_get_member(pJsonObject, client_order_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&client_order_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbol_id_exchangeKey = "symbol_id_exchange";
	node = json_object_get_member(pJsonObject, symbol_id_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_id_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbol_id_coinapiKey = "symbol_id_coinapi";
	node = json_object_get_member(pJsonObject, symbol_id_coinapiKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol_id_coinapi, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_orderKey = "amount_order";
	node = json_object_get_member(pJsonObject, amount_orderKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amount_order, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amount_order);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priceKey = "price";
	node = json_object_get_member(pJsonObject, priceKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&price, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&price);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *sideKey = "side";
	node = json_object_get_member(pJsonObject, sideKey);
	if (node !=NULL) {
	

		if (isprimitive("OrdSide")) {
			jsonToValue(&side, node, "OrdSide", "OrdSide");
		} else {
			
			OrdSide* obj = static_cast<OrdSide*> (&side);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *order_typeKey = "order_type";
	node = json_object_get_member(pJsonObject, order_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("OrdType")) {
			jsonToValue(&order_type, node, "OrdType", "OrdType");
		} else {
			
			OrdType* obj = static_cast<OrdType*> (&order_type);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *time_in_forceKey = "time_in_force";
	node = json_object_get_member(pJsonObject, time_in_forceKey);
	if (node !=NULL) {
	

		if (isprimitive("TimeInForce")) {
			jsonToValue(&time_in_force, node, "TimeInForce", "TimeInForce");
		} else {
			
			TimeInForce* obj = static_cast<TimeInForce*> (&time_in_force);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *expire_timeKey = "expire_time";
	node = json_object_get_member(pJsonObject, expire_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("Date")) {
			jsonToValue(&expire_time, node, "Date", "Date");
		} else {
			
			Date* obj = static_cast<Date*> (&expire_time);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *exec_instKey = "exec_inst";
	node = json_object_get_member(pJsonObject, exec_instKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			exec_inst = new_list;
		}
		
	}
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

OrderExecutionReport::OrderExecutionReport(char* json)
{
	this->fromJson(json);
}

char*
OrderExecutionReport::toJson()
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
		std::string obj = getClientOrderId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *client_order_idKey = "client_order_id";
	json_object_set_member(pJsonObject, client_order_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolIdExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_id_exchangeKey = "symbol_id_exchange";
	json_object_set_member(pJsonObject, symbol_id_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolIdCoinapi();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbol_id_coinapiKey = "symbol_id_coinapi";
	json_object_set_member(pJsonObject, symbol_id_coinapiKey, node);
	if (isprimitive("long long")) {
		long long obj = getAmountOrder();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAmountOrder());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *amount_orderKey = "amount_order";
	json_object_set_member(pJsonObject, amount_orderKey, node);
	if (isprimitive("long long")) {
		long long obj = getPrice();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getPrice());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priceKey = "price";
	json_object_set_member(pJsonObject, priceKey, node);
	if (isprimitive("OrdSide")) {
		OrdSide obj = getSide();
		node = converttoJson(&obj, "OrdSide", "");
	}
	else {
		
		OrdSide obj = static_cast<OrdSide> (getSide());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *sideKey = "side";
	json_object_set_member(pJsonObject, sideKey, node);
	if (isprimitive("OrdType")) {
		OrdType obj = getOrderType();
		node = converttoJson(&obj, "OrdType", "");
	}
	else {
		
		OrdType obj = static_cast<OrdType> (getOrderType());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *order_typeKey = "order_type";
	json_object_set_member(pJsonObject, order_typeKey, node);
	if (isprimitive("TimeInForce")) {
		TimeInForce obj = getTimeInForce();
		node = converttoJson(&obj, "TimeInForce", "");
	}
	else {
		
		TimeInForce obj = static_cast<TimeInForce> (getTimeInForce());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *time_in_forceKey = "time_in_force";
	json_object_set_member(pJsonObject, time_in_forceKey, node);
	if (isprimitive("Date")) {
		Date obj = getExpireTime();
		node = converttoJson(&obj, "Date", "");
	}
	else {
		
		Date obj = static_cast<Date> (getExpireTime());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *expire_timeKey = "expire_time";
	json_object_set_member(pJsonObject, expire_timeKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getExecInst());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getExecInst());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *exec_instKey = "exec_inst";
	json_object_set_member(pJsonObject, exec_instKey, node);
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
OrderExecutionReport::getExchangeId()
{
	return exchange_id;
}

void
OrderExecutionReport::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
OrderExecutionReport::getClientOrderId()
{
	return client_order_id;
}

void
OrderExecutionReport::setClientOrderId(std::string  client_order_id)
{
	this->client_order_id = client_order_id;
}

std::string
OrderExecutionReport::getSymbolIdExchange()
{
	return symbol_id_exchange;
}

void
OrderExecutionReport::setSymbolIdExchange(std::string  symbol_id_exchange)
{
	this->symbol_id_exchange = symbol_id_exchange;
}

std::string
OrderExecutionReport::getSymbolIdCoinapi()
{
	return symbol_id_coinapi;
}

void
OrderExecutionReport::setSymbolIdCoinapi(std::string  symbol_id_coinapi)
{
	this->symbol_id_coinapi = symbol_id_coinapi;
}

long long
OrderExecutionReport::getAmountOrder()
{
	return amount_order;
}

void
OrderExecutionReport::setAmountOrder(long long  amount_order)
{
	this->amount_order = amount_order;
}

long long
OrderExecutionReport::getPrice()
{
	return price;
}

void
OrderExecutionReport::setPrice(long long  price)
{
	this->price = price;
}

OrdSide
OrderExecutionReport::getSide()
{
	return side;
}

void
OrderExecutionReport::setSide(OrdSide  side)
{
	this->side = side;
}

OrdType
OrderExecutionReport::getOrderType()
{
	return order_type;
}

void
OrderExecutionReport::setOrderType(OrdType  order_type)
{
	this->order_type = order_type;
}

TimeInForce
OrderExecutionReport::getTimeInForce()
{
	return time_in_force;
}

void
OrderExecutionReport::setTimeInForce(TimeInForce  time_in_force)
{
	this->time_in_force = time_in_force;
}

Date
OrderExecutionReport::getExpireTime()
{
	return expire_time;
}

void
OrderExecutionReport::setExpireTime(Date  expire_time)
{
	this->expire_time = expire_time;
}

std::list<std::string>
OrderExecutionReport::getExecInst()
{
	return exec_inst;
}

void
OrderExecutionReport::setExecInst(std::list <std::string> exec_inst)
{
	this->exec_inst = exec_inst;
}

std::string
OrderExecutionReport::getClientOrderIdFormatExchange()
{
	return client_order_id_format_exchange;
}

void
OrderExecutionReport::setClientOrderIdFormatExchange(std::string  client_order_id_format_exchange)
{
	this->client_order_id_format_exchange = client_order_id_format_exchange;
}

std::string
OrderExecutionReport::getExchangeOrderId()
{
	return exchange_order_id;
}

void
OrderExecutionReport::setExchangeOrderId(std::string  exchange_order_id)
{
	this->exchange_order_id = exchange_order_id;
}

long long
OrderExecutionReport::getAmountOpen()
{
	return amount_open;
}

void
OrderExecutionReport::setAmountOpen(long long  amount_open)
{
	this->amount_open = amount_open;
}

long long
OrderExecutionReport::getAmountFilled()
{
	return amount_filled;
}

void
OrderExecutionReport::setAmountFilled(long long  amount_filled)
{
	this->amount_filled = amount_filled;
}

long long
OrderExecutionReport::getAvgPx()
{
	return avg_px;
}

void
OrderExecutionReport::setAvgPx(long long  avg_px)
{
	this->avg_px = avg_px;
}

OrdStatus
OrderExecutionReport::getStatus()
{
	return status;
}

void
OrderExecutionReport::setStatus(OrdStatus  status)
{
	this->status = status;
}

std::list<std::list>
OrderExecutionReport::getStatusHistory()
{
	return status_history;
}

void
OrderExecutionReport::setStatusHistory(std::list <std::list> status_history)
{
	this->status_history = status_history;
}

std::string
OrderExecutionReport::getErrorMessage()
{
	return error_message;
}

void
OrderExecutionReport::setErrorMessage(std::string  error_message)
{
	this->error_message = error_message;
}

std::list<Fills>
OrderExecutionReport::getFills()
{
	return fills;
}

void
OrderExecutionReport::setFills(std::list <Fills> fills)
{
	this->fills = fills;
}


