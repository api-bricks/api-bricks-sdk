#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OrderHistory.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OrderHistory::OrderHistory()
{
	//__init();
}

OrderHistory::~OrderHistory()
{
	//__cleanup();
}

void
OrderHistory::__init()
{
	//apikey = std::string();
	//exchangeId = std::string();
	//clientOrderId = std::string();
	//symbolIdExchange = std::string();
	//symbolIdCoinapi = std::string();
	//amountOrder = double(0);
	//price = double(0);
	//side = double(0);
	//orderType = std::string();
	//timeInForce = std::string();
	//expireTime = null;
	//new std::list()std::list> execInst;
	//clientOrderIdFormatExchange = std::string();
	//exchangeOrderId = std::string();
	//amountOpen = double(0);
	//amountFilled = double(0);
	//avgPx = double(0);
	//status = std::string();
	//new std::list()std::list> statusHistoryStatus;
	//new std::list()std::list> statusHistoryTime;
	//errorMessageResult = std::string();
	//errorMessageReason = std::string();
	//errorMessageMessage = std::string();
	//new std::list()std::list> fillsTime;
	//new std::list()std::list> fillsPrice;
	//new std::list()std::list> fillsAmount;
	//createdTime = null;
}

void
OrderHistory::__cleanup()
{
	//if(apikey != NULL) {
	//
	//delete apikey;
	//apikey = NULL;
	//}
	//if(exchangeId != NULL) {
	//
	//delete exchangeId;
	//exchangeId = NULL;
	//}
	//if(clientOrderId != NULL) {
	//
	//delete clientOrderId;
	//clientOrderId = NULL;
	//}
	//if(symbolIdExchange != NULL) {
	//
	//delete symbolIdExchange;
	//symbolIdExchange = NULL;
	//}
	//if(symbolIdCoinapi != NULL) {
	//
	//delete symbolIdCoinapi;
	//symbolIdCoinapi = NULL;
	//}
	//if(amountOrder != NULL) {
	//
	//delete amountOrder;
	//amountOrder = NULL;
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
	//if(orderType != NULL) {
	//
	//delete orderType;
	//orderType = NULL;
	//}
	//if(timeInForce != NULL) {
	//
	//delete timeInForce;
	//timeInForce = NULL;
	//}
	//if(expireTime != NULL) {
	//
	//delete expireTime;
	//expireTime = NULL;
	//}
	//if(execInst != NULL) {
	//execInst.RemoveAll(true);
	//delete execInst;
	//execInst = NULL;
	//}
	//if(clientOrderIdFormatExchange != NULL) {
	//
	//delete clientOrderIdFormatExchange;
	//clientOrderIdFormatExchange = NULL;
	//}
	//if(exchangeOrderId != NULL) {
	//
	//delete exchangeOrderId;
	//exchangeOrderId = NULL;
	//}
	//if(amountOpen != NULL) {
	//
	//delete amountOpen;
	//amountOpen = NULL;
	//}
	//if(amountFilled != NULL) {
	//
	//delete amountFilled;
	//amountFilled = NULL;
	//}
	//if(avgPx != NULL) {
	//
	//delete avgPx;
	//avgPx = NULL;
	//}
	//if(status != NULL) {
	//
	//delete status;
	//status = NULL;
	//}
	//if(statusHistoryStatus != NULL) {
	//statusHistoryStatus.RemoveAll(true);
	//delete statusHistoryStatus;
	//statusHistoryStatus = NULL;
	//}
	//if(statusHistoryTime != NULL) {
	//statusHistoryTime.RemoveAll(true);
	//delete statusHistoryTime;
	//statusHistoryTime = NULL;
	//}
	//if(errorMessageResult != NULL) {
	//
	//delete errorMessageResult;
	//errorMessageResult = NULL;
	//}
	//if(errorMessageReason != NULL) {
	//
	//delete errorMessageReason;
	//errorMessageReason = NULL;
	//}
	//if(errorMessageMessage != NULL) {
	//
	//delete errorMessageMessage;
	//errorMessageMessage = NULL;
	//}
	//if(fillsTime != NULL) {
	//fillsTime.RemoveAll(true);
	//delete fillsTime;
	//fillsTime = NULL;
	//}
	//if(fillsPrice != NULL) {
	//fillsPrice.RemoveAll(true);
	//delete fillsPrice;
	//fillsPrice = NULL;
	//}
	//if(fillsAmount != NULL) {
	//fillsAmount.RemoveAll(true);
	//delete fillsAmount;
	//fillsAmount = NULL;
	//}
	//if(createdTime != NULL) {
	//
	//delete createdTime;
	//createdTime = NULL;
	//}
	//
}

void
OrderHistory::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *apikeyKey = "apikey";
	node = json_object_get_member(pJsonObject, apikeyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&apikey, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *exchangeIdKey = "exchangeId";
	node = json_object_get_member(pJsonObject, exchangeIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchangeId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *clientOrderIdKey = "clientOrderId";
	node = json_object_get_member(pJsonObject, clientOrderIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&clientOrderId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbolIdExchangeKey = "symbolIdExchange";
	node = json_object_get_member(pJsonObject, symbolIdExchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbolIdExchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbolIdCoinapiKey = "symbolIdCoinapi";
	node = json_object_get_member(pJsonObject, symbolIdCoinapiKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbolIdCoinapi, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amountOrderKey = "amountOrder";
	node = json_object_get_member(pJsonObject, amountOrderKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amountOrder, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amountOrder);
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
	

		if (isprimitive("long long")) {
			jsonToValue(&side, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&side);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *orderTypeKey = "orderType";
	node = json_object_get_member(pJsonObject, orderTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&orderType, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timeInForceKey = "timeInForce";
	node = json_object_get_member(pJsonObject, timeInForceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timeInForce, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *expireTimeKey = "expireTime";
	node = json_object_get_member(pJsonObject, expireTimeKey);
	if (node !=NULL) {
	

		if (isprimitive("Date")) {
			jsonToValue(&expireTime, node, "Date", "Date");
		} else {
			
			Date* obj = static_cast<Date*> (&expireTime);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *execInstKey = "execInst";
	node = json_object_get_member(pJsonObject, execInstKey);
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
			execInst = new_list;
		}
		
	}
	const gchar *clientOrderIdFormatExchangeKey = "clientOrderIdFormatExchange";
	node = json_object_get_member(pJsonObject, clientOrderIdFormatExchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&clientOrderIdFormatExchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *exchangeOrderIdKey = "exchangeOrderId";
	node = json_object_get_member(pJsonObject, exchangeOrderIdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&exchangeOrderId, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amountOpenKey = "amountOpen";
	node = json_object_get_member(pJsonObject, amountOpenKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amountOpen, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amountOpen);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *amountFilledKey = "amountFilled";
	node = json_object_get_member(pJsonObject, amountFilledKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amountFilled, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amountFilled);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *avgPxKey = "avgPx";
	node = json_object_get_member(pJsonObject, avgPxKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&avgPx, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&avgPx);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *statusKey = "status";
	node = json_object_get_member(pJsonObject, statusKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&status, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *statusHistoryStatusKey = "statusHistoryStatus";
	node = json_object_get_member(pJsonObject, statusHistoryStatusKey);
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
			statusHistoryStatus = new_list;
		}
		
	}
	const gchar *statusHistoryTimeKey = "statusHistoryTime";
	node = json_object_get_member(pJsonObject, statusHistoryTimeKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Date> new_list;
			Date inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Date")) {
					jsonToValue(&inst, temp_json, "Date", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			statusHistoryTime = new_list;
		}
		
	}
	const gchar *errorMessageResultKey = "errorMessageResult";
	node = json_object_get_member(pJsonObject, errorMessageResultKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&errorMessageResult, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *errorMessageReasonKey = "errorMessageReason";
	node = json_object_get_member(pJsonObject, errorMessageReasonKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&errorMessageReason, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *errorMessageMessageKey = "errorMessageMessage";
	node = json_object_get_member(pJsonObject, errorMessageMessageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&errorMessageMessage, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *fillsTimeKey = "fillsTime";
	node = json_object_get_member(pJsonObject, fillsTimeKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Date> new_list;
			Date inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Date")) {
					jsonToValue(&inst, temp_json, "Date", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fillsTime = new_list;
		}
		
	}
	const gchar *fillsPriceKey = "fillsPrice";
	node = json_object_get_member(pJsonObject, fillsPriceKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<long long> new_list;
			long long inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("long long")) {
					jsonToValue(&inst, temp_json, "long long", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fillsPrice = new_list;
		}
		
	}
	const gchar *fillsAmountKey = "fillsAmount";
	node = json_object_get_member(pJsonObject, fillsAmountKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<long long> new_list;
			long long inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("long long")) {
					jsonToValue(&inst, temp_json, "long long", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fillsAmount = new_list;
		}
		
	}
	const gchar *createdTimeKey = "createdTime";
	node = json_object_get_member(pJsonObject, createdTimeKey);
	if (node !=NULL) {
	

		if (isprimitive("Date")) {
			jsonToValue(&createdTime, node, "Date", "Date");
		} else {
			
			Date* obj = static_cast<Date*> (&createdTime);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

OrderHistory::OrderHistory(char* json)
{
	this->fromJson(json);
}

char*
OrderHistory::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getApikey();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *apikeyKey = "apikey";
	json_object_set_member(pJsonObject, apikeyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchangeIdKey = "exchangeId";
	json_object_set_member(pJsonObject, exchangeIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClientOrderId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *clientOrderIdKey = "clientOrderId";
	json_object_set_member(pJsonObject, clientOrderIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolIdExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbolIdExchangeKey = "symbolIdExchange";
	json_object_set_member(pJsonObject, symbolIdExchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbolIdCoinapi();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbolIdCoinapiKey = "symbolIdCoinapi";
	json_object_set_member(pJsonObject, symbolIdCoinapiKey, node);
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
	const gchar *amountOrderKey = "amountOrder";
	json_object_set_member(pJsonObject, amountOrderKey, node);
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
	if (isprimitive("long long")) {
		long long obj = getSide();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getSide());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *sideKey = "side";
	json_object_set_member(pJsonObject, sideKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOrderType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *orderTypeKey = "orderType";
	json_object_set_member(pJsonObject, orderTypeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimeInForce();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timeInForceKey = "timeInForce";
	json_object_set_member(pJsonObject, timeInForceKey, node);
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
	const gchar *expireTimeKey = "expireTime";
	json_object_set_member(pJsonObject, expireTimeKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getExecInst());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getExecInst());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *execInstKey = "execInst";
	json_object_set_member(pJsonObject, execInstKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClientOrderIdFormatExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *clientOrderIdFormatExchangeKey = "clientOrderIdFormatExchange";
	json_object_set_member(pJsonObject, clientOrderIdFormatExchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getExchangeOrderId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *exchangeOrderIdKey = "exchangeOrderId";
	json_object_set_member(pJsonObject, exchangeOrderIdKey, node);
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
	const gchar *amountOpenKey = "amountOpen";
	json_object_set_member(pJsonObject, amountOpenKey, node);
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
	const gchar *amountFilledKey = "amountFilled";
	json_object_set_member(pJsonObject, amountFilledKey, node);
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
	const gchar *avgPxKey = "avgPx";
	json_object_set_member(pJsonObject, avgPxKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getStatus();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *statusKey = "status";
	json_object_set_member(pJsonObject, statusKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getStatusHistoryStatus());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getStatusHistoryStatus());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *statusHistoryStatusKey = "statusHistoryStatus";
	json_object_set_member(pJsonObject, statusHistoryStatusKey, node);
	if (isprimitive("Date")) {
		list<Date> new_list = static_cast<list <Date> > (getStatusHistoryTime());
		node = converttoJson(&new_list, "Date", "array");
	} else {
		node = json_node_alloc();
		list<Date> new_list = static_cast<list <Date> > (getStatusHistoryTime());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Date>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Date obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *statusHistoryTimeKey = "statusHistoryTime";
	json_object_set_member(pJsonObject, statusHistoryTimeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getErrorMessageResult();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *errorMessageResultKey = "errorMessageResult";
	json_object_set_member(pJsonObject, errorMessageResultKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getErrorMessageReason();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *errorMessageReasonKey = "errorMessageReason";
	json_object_set_member(pJsonObject, errorMessageReasonKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getErrorMessageMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *errorMessageMessageKey = "errorMessageMessage";
	json_object_set_member(pJsonObject, errorMessageMessageKey, node);
	if (isprimitive("Date")) {
		list<Date> new_list = static_cast<list <Date> > (getFillsTime());
		node = converttoJson(&new_list, "Date", "array");
	} else {
		node = json_node_alloc();
		list<Date> new_list = static_cast<list <Date> > (getFillsTime());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Date>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Date obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *fillsTimeKey = "fillsTime";
	json_object_set_member(pJsonObject, fillsTimeKey, node);
	if (isprimitive("long long")) {
		list<long long> new_list = static_cast<list <long long> > (getFillsPrice());
		node = converttoJson(&new_list, "long long", "array");
	} else {
		node = json_node_alloc();
		list<long long> new_list = static_cast<list <long long> > (getFillsPrice());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<long long>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			long long obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *fillsPriceKey = "fillsPrice";
	json_object_set_member(pJsonObject, fillsPriceKey, node);
	if (isprimitive("long long")) {
		list<long long> new_list = static_cast<list <long long> > (getFillsAmount());
		node = converttoJson(&new_list, "long long", "array");
	} else {
		node = json_node_alloc();
		list<long long> new_list = static_cast<list <long long> > (getFillsAmount());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<long long>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			long long obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *fillsAmountKey = "fillsAmount";
	json_object_set_member(pJsonObject, fillsAmountKey, node);
	if (isprimitive("Date")) {
		Date obj = getCreatedTime();
		node = converttoJson(&obj, "Date", "");
	}
	else {
		
		Date obj = static_cast<Date> (getCreatedTime());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *createdTimeKey = "createdTime";
	json_object_set_member(pJsonObject, createdTimeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
OrderHistory::getApikey()
{
	return apikey;
}

void
OrderHistory::setApikey(std::string  apikey)
{
	this->apikey = apikey;
}

std::string
OrderHistory::getExchangeId()
{
	return exchangeId;
}

void
OrderHistory::setExchangeId(std::string  exchangeId)
{
	this->exchangeId = exchangeId;
}

std::string
OrderHistory::getClientOrderId()
{
	return clientOrderId;
}

void
OrderHistory::setClientOrderId(std::string  clientOrderId)
{
	this->clientOrderId = clientOrderId;
}

std::string
OrderHistory::getSymbolIdExchange()
{
	return symbolIdExchange;
}

void
OrderHistory::setSymbolIdExchange(std::string  symbolIdExchange)
{
	this->symbolIdExchange = symbolIdExchange;
}

std::string
OrderHistory::getSymbolIdCoinapi()
{
	return symbolIdCoinapi;
}

void
OrderHistory::setSymbolIdCoinapi(std::string  symbolIdCoinapi)
{
	this->symbolIdCoinapi = symbolIdCoinapi;
}

long long
OrderHistory::getAmountOrder()
{
	return amountOrder;
}

void
OrderHistory::setAmountOrder(long long  amountOrder)
{
	this->amountOrder = amountOrder;
}

long long
OrderHistory::getPrice()
{
	return price;
}

void
OrderHistory::setPrice(long long  price)
{
	this->price = price;
}

long long
OrderHistory::getSide()
{
	return side;
}

void
OrderHistory::setSide(long long  side)
{
	this->side = side;
}

std::string
OrderHistory::getOrderType()
{
	return orderType;
}

void
OrderHistory::setOrderType(std::string  orderType)
{
	this->orderType = orderType;
}

std::string
OrderHistory::getTimeInForce()
{
	return timeInForce;
}

void
OrderHistory::setTimeInForce(std::string  timeInForce)
{
	this->timeInForce = timeInForce;
}

Date
OrderHistory::getExpireTime()
{
	return expireTime;
}

void
OrderHistory::setExpireTime(Date  expireTime)
{
	this->expireTime = expireTime;
}

std::list<std::string>
OrderHistory::getExecInst()
{
	return execInst;
}

void
OrderHistory::setExecInst(std::list <std::string> execInst)
{
	this->execInst = execInst;
}

std::string
OrderHistory::getClientOrderIdFormatExchange()
{
	return clientOrderIdFormatExchange;
}

void
OrderHistory::setClientOrderIdFormatExchange(std::string  clientOrderIdFormatExchange)
{
	this->clientOrderIdFormatExchange = clientOrderIdFormatExchange;
}

std::string
OrderHistory::getExchangeOrderId()
{
	return exchangeOrderId;
}

void
OrderHistory::setExchangeOrderId(std::string  exchangeOrderId)
{
	this->exchangeOrderId = exchangeOrderId;
}

long long
OrderHistory::getAmountOpen()
{
	return amountOpen;
}

void
OrderHistory::setAmountOpen(long long  amountOpen)
{
	this->amountOpen = amountOpen;
}

long long
OrderHistory::getAmountFilled()
{
	return amountFilled;
}

void
OrderHistory::setAmountFilled(long long  amountFilled)
{
	this->amountFilled = amountFilled;
}

long long
OrderHistory::getAvgPx()
{
	return avgPx;
}

void
OrderHistory::setAvgPx(long long  avgPx)
{
	this->avgPx = avgPx;
}

std::string
OrderHistory::getStatus()
{
	return status;
}

void
OrderHistory::setStatus(std::string  status)
{
	this->status = status;
}

std::list<std::string>
OrderHistory::getStatusHistoryStatus()
{
	return statusHistoryStatus;
}

void
OrderHistory::setStatusHistoryStatus(std::list <std::string> statusHistoryStatus)
{
	this->statusHistoryStatus = statusHistoryStatus;
}

std::list<Date>
OrderHistory::getStatusHistoryTime()
{
	return statusHistoryTime;
}

void
OrderHistory::setStatusHistoryTime(std::list <Date> statusHistoryTime)
{
	this->statusHistoryTime = statusHistoryTime;
}

std::string
OrderHistory::getErrorMessageResult()
{
	return errorMessageResult;
}

void
OrderHistory::setErrorMessageResult(std::string  errorMessageResult)
{
	this->errorMessageResult = errorMessageResult;
}

std::string
OrderHistory::getErrorMessageReason()
{
	return errorMessageReason;
}

void
OrderHistory::setErrorMessageReason(std::string  errorMessageReason)
{
	this->errorMessageReason = errorMessageReason;
}

std::string
OrderHistory::getErrorMessageMessage()
{
	return errorMessageMessage;
}

void
OrderHistory::setErrorMessageMessage(std::string  errorMessageMessage)
{
	this->errorMessageMessage = errorMessageMessage;
}

std::list<Date>
OrderHistory::getFillsTime()
{
	return fillsTime;
}

void
OrderHistory::setFillsTime(std::list <Date> fillsTime)
{
	this->fillsTime = fillsTime;
}

std::list<long long>
OrderHistory::getFillsPrice()
{
	return fillsPrice;
}

void
OrderHistory::setFillsPrice(std::list <long long> fillsPrice)
{
	this->fillsPrice = fillsPrice;
}

std::list<long long>
OrderHistory::getFillsAmount()
{
	return fillsAmount;
}

void
OrderHistory::setFillsAmount(std::list <long long> fillsAmount)
{
	this->fillsAmount = fillsAmount;
}

Date
OrderHistory::getCreatedTime()
{
	return createdTime;
}

void
OrderHistory::setCreatedTime(Date  createdTime)
{
	this->createdTime = createdTime;
}


