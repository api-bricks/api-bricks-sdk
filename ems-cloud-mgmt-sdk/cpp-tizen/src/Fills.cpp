#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Fills.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Fills::Fills()
{
	//__init();
}

Fills::~Fills()
{
	//__cleanup();
}

void
Fills::__init()
{
	//time = null;
	//price = double(0);
	//amount = double(0);
}

void
Fills::__cleanup()
{
	//if(time != NULL) {
	//
	//delete time;
	//time = NULL;
	//}
	//if(price != NULL) {
	//
	//delete price;
	//price = NULL;
	//}
	//if(amount != NULL) {
	//
	//delete amount;
	//amount = NULL;
	//}
	//
}

void
Fills::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *timeKey = "time";
	node = json_object_get_member(pJsonObject, timeKey);
	if (node !=NULL) {
	

		if (isprimitive("Date")) {
			jsonToValue(&time, node, "Date", "Date");
		} else {
			
			Date* obj = static_cast<Date*> (&time);
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
	const gchar *amountKey = "amount";
	node = json_object_get_member(pJsonObject, amountKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&amount, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&amount);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

Fills::Fills(char* json)
{
	this->fromJson(json);
}

char*
Fills::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("Date")) {
		Date obj = getTime();
		node = converttoJson(&obj, "Date", "");
	}
	else {
		
		Date obj = static_cast<Date> (getTime());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *timeKey = "time";
	json_object_set_member(pJsonObject, timeKey, node);
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
		long long obj = getAmount();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getAmount());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *amountKey = "amount";
	json_object_set_member(pJsonObject, amountKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

Date
Fills::getTime()
{
	return time;
}

void
Fills::setTime(Date  time)
{
	this->time = time;
}

long long
Fills::getPrice()
{
	return price;
}

void
Fills::setPrice(long long  price)
{
	this->price = price;
}

long long
Fills::getAmount()
{
	return amount;
}

void
Fills::setAmount(long long  amount)
{
	this->amount = amount;
}


