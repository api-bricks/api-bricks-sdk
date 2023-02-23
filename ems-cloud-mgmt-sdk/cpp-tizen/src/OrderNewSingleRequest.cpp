#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OrderNewSingleRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OrderNewSingleRequest::OrderNewSingleRequest()
{
	//__init();
}

OrderNewSingleRequest::~OrderNewSingleRequest()
{
	//__cleanup();
}

void
OrderNewSingleRequest::__init()
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
}

void
OrderNewSingleRequest::__cleanup()
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
	//
}

void
OrderNewSingleRequest::fromJson(char* jsonStr)
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
}

OrderNewSingleRequest::OrderNewSingleRequest(char* json)
{
	this->fromJson(json);
}

char*
OrderNewSingleRequest::toJson()
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
OrderNewSingleRequest::getExchangeId()
{
	return exchange_id;
}

void
OrderNewSingleRequest::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::string
OrderNewSingleRequest::getClientOrderId()
{
	return client_order_id;
}

void
OrderNewSingleRequest::setClientOrderId(std::string  client_order_id)
{
	this->client_order_id = client_order_id;
}

std::string
OrderNewSingleRequest::getSymbolIdExchange()
{
	return symbol_id_exchange;
}

void
OrderNewSingleRequest::setSymbolIdExchange(std::string  symbol_id_exchange)
{
	this->symbol_id_exchange = symbol_id_exchange;
}

std::string
OrderNewSingleRequest::getSymbolIdCoinapi()
{
	return symbol_id_coinapi;
}

void
OrderNewSingleRequest::setSymbolIdCoinapi(std::string  symbol_id_coinapi)
{
	this->symbol_id_coinapi = symbol_id_coinapi;
}

long long
OrderNewSingleRequest::getAmountOrder()
{
	return amount_order;
}

void
OrderNewSingleRequest::setAmountOrder(long long  amount_order)
{
	this->amount_order = amount_order;
}

long long
OrderNewSingleRequest::getPrice()
{
	return price;
}

void
OrderNewSingleRequest::setPrice(long long  price)
{
	this->price = price;
}

OrdSide
OrderNewSingleRequest::getSide()
{
	return side;
}

void
OrderNewSingleRequest::setSide(OrdSide  side)
{
	this->side = side;
}

OrdType
OrderNewSingleRequest::getOrderType()
{
	return order_type;
}

void
OrderNewSingleRequest::setOrderType(OrdType  order_type)
{
	this->order_type = order_type;
}

TimeInForce
OrderNewSingleRequest::getTimeInForce()
{
	return time_in_force;
}

void
OrderNewSingleRequest::setTimeInForce(TimeInForce  time_in_force)
{
	this->time_in_force = time_in_force;
}

Date
OrderNewSingleRequest::getExpireTime()
{
	return expire_time;
}

void
OrderNewSingleRequest::setExpireTime(Date  expire_time)
{
	this->expire_time = expire_time;
}

std::list<std::string>
OrderNewSingleRequest::getExecInst()
{
	return exec_inst;
}

void
OrderNewSingleRequest::setExecInst(std::list <std::string> exec_inst)
{
	this->exec_inst = exec_inst;
}


