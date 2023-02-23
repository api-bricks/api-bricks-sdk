#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Balance_data_inner.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Balance_data_inner::Balance_data_inner()
{
	//__init();
}

Balance_data_inner::~Balance_data_inner()
{
	//__cleanup();
}

void
Balance_data_inner::__init()
{
	//asset_id_exchange = std::string();
	//asset_id_coinapi = std::string();
	//balance = double(0);
	//available = double(0);
	//locked = double(0);
	//last_updated_by = std::string();
	//rate_usd = double(0);
	//traded = double(0);
}

void
Balance_data_inner::__cleanup()
{
	//if(asset_id_exchange != NULL) {
	//
	//delete asset_id_exchange;
	//asset_id_exchange = NULL;
	//}
	//if(asset_id_coinapi != NULL) {
	//
	//delete asset_id_coinapi;
	//asset_id_coinapi = NULL;
	//}
	//if(balance != NULL) {
	//
	//delete balance;
	//balance = NULL;
	//}
	//if(available != NULL) {
	//
	//delete available;
	//available = NULL;
	//}
	//if(locked != NULL) {
	//
	//delete locked;
	//locked = NULL;
	//}
	//if(last_updated_by != NULL) {
	//
	//delete last_updated_by;
	//last_updated_by = NULL;
	//}
	//if(rate_usd != NULL) {
	//
	//delete rate_usd;
	//rate_usd = NULL;
	//}
	//if(traded != NULL) {
	//
	//delete traded;
	//traded = NULL;
	//}
	//
}

void
Balance_data_inner::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *asset_id_exchangeKey = "asset_id_exchange";
	node = json_object_get_member(pJsonObject, asset_id_exchangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_exchange, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *asset_id_coinapiKey = "asset_id_coinapi";
	node = json_object_get_member(pJsonObject, asset_id_coinapiKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&asset_id_coinapi, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *balanceKey = "balance";
	node = json_object_get_member(pJsonObject, balanceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&balance, node, "double", "");
		} else {
			
		}
	}
	const gchar *availableKey = "available";
	node = json_object_get_member(pJsonObject, availableKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&available, node, "double", "");
		} else {
			
		}
	}
	const gchar *lockedKey = "locked";
	node = json_object_get_member(pJsonObject, lockedKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&locked, node, "double", "");
		} else {
			
		}
	}
	const gchar *last_updated_byKey = "last_updated_by";
	node = json_object_get_member(pJsonObject, last_updated_byKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&last_updated_by, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *rate_usdKey = "rate_usd";
	node = json_object_get_member(pJsonObject, rate_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&rate_usd, node, "double", "");
		} else {
			
		}
	}
	const gchar *tradedKey = "traded";
	node = json_object_get_member(pJsonObject, tradedKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&traded, node, "double", "");
		} else {
			
		}
	}
}

Balance_data_inner::Balance_data_inner(char* json)
{
	this->fromJson(json);
}

char*
Balance_data_inner::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdExchange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_exchangeKey = "asset_id_exchange";
	json_object_set_member(pJsonObject, asset_id_exchangeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAssetIdCoinapi();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *asset_id_coinapiKey = "asset_id_coinapi";
	json_object_set_member(pJsonObject, asset_id_coinapiKey, node);
	if (isprimitive("double")) {
		double obj = getBalance();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *balanceKey = "balance";
	json_object_set_member(pJsonObject, balanceKey, node);
	if (isprimitive("double")) {
		double obj = getAvailable();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *availableKey = "available";
	json_object_set_member(pJsonObject, availableKey, node);
	if (isprimitive("double")) {
		double obj = getLocked();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *lockedKey = "locked";
	json_object_set_member(pJsonObject, lockedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastUpdatedBy();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *last_updated_byKey = "last_updated_by";
	json_object_set_member(pJsonObject, last_updated_byKey, node);
	if (isprimitive("double")) {
		double obj = getRateUsd();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *rate_usdKey = "rate_usd";
	json_object_set_member(pJsonObject, rate_usdKey, node);
	if (isprimitive("double")) {
		double obj = getTraded();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *tradedKey = "traded";
	json_object_set_member(pJsonObject, tradedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Balance_data_inner::getAssetIdExchange()
{
	return asset_id_exchange;
}

void
Balance_data_inner::setAssetIdExchange(std::string  asset_id_exchange)
{
	this->asset_id_exchange = asset_id_exchange;
}

std::string
Balance_data_inner::getAssetIdCoinapi()
{
	return asset_id_coinapi;
}

void
Balance_data_inner::setAssetIdCoinapi(std::string  asset_id_coinapi)
{
	this->asset_id_coinapi = asset_id_coinapi;
}

double
Balance_data_inner::getBalance()
{
	return balance;
}

void
Balance_data_inner::setBalance(double  balance)
{
	this->balance = balance;
}

double
Balance_data_inner::getAvailable()
{
	return available;
}

void
Balance_data_inner::setAvailable(double  available)
{
	this->available = available;
}

double
Balance_data_inner::getLocked()
{
	return locked;
}

void
Balance_data_inner::setLocked(double  locked)
{
	this->locked = locked;
}

std::string
Balance_data_inner::getLastUpdatedBy()
{
	return last_updated_by;
}

void
Balance_data_inner::setLastUpdatedBy(std::string  last_updated_by)
{
	this->last_updated_by = last_updated_by;
}

double
Balance_data_inner::getRateUsd()
{
	return rate_usd;
}

void
Balance_data_inner::setRateUsd(double  rate_usd)
{
	this->rate_usd = rate_usd;
}

double
Balance_data_inner::getTraded()
{
	return traded;
}

void
Balance_data_inner::setTraded(double  traded)
{
	this->traded = traded;
}


