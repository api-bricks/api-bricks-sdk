#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Position.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Position::Position()
{
	//__init();
}

Position::~Position()
{
	//__cleanup();
}

void
Position::__init()
{
	//exchange_id = std::string();
	//new std::list()std::list> data;
}

void
Position::__cleanup()
{
	//if(exchange_id != NULL) {
	//
	//delete exchange_id;
	//exchange_id = NULL;
	//}
	//if(data != NULL) {
	//data.RemoveAll(true);
	//delete data;
	//data = NULL;
	//}
	//
}

void
Position::fromJson(char* jsonStr)
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
	const gchar *dataKey = "data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<Position_data_inner> new_list;
			Position_data_inner inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("Position_data_inner")) {
					jsonToValue(&inst, temp_json, "Position_data_inner", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			data = new_list;
		}
		
	}
}

Position::Position(char* json)
{
	this->fromJson(json);
}

char*
Position::toJson()
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
	if (isprimitive("Position_data_inner")) {
		list<Position_data_inner> new_list = static_cast<list <Position_data_inner> > (getData());
		node = converttoJson(&new_list, "Position_data_inner", "array");
	} else {
		node = json_node_alloc();
		list<Position_data_inner> new_list = static_cast<list <Position_data_inner> > (getData());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<Position_data_inner>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			Position_data_inner obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *dataKey = "data";
	json_object_set_member(pJsonObject, dataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Position::getExchangeId()
{
	return exchange_id;
}

void
Position::setExchangeId(std::string  exchange_id)
{
	this->exchange_id = exchange_id;
}

std::list<Position_data_inner>
Position::getData()
{
	return data;
}

void
Position::setData(std::list <Position_data_inner> data)
{
	this->data = data;
}


