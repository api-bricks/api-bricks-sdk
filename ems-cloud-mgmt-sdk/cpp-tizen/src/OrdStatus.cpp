#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "OrdStatus.h"

using namespace std;
using namespace Tizen::ArtikCloud;

OrdStatus::OrdStatus()
{
	//__init();
}

OrdStatus::~OrdStatus()
{
	//__cleanup();
}

void
OrdStatus::__init()
{
}

void
OrdStatus::__cleanup()
{
	//
}

void
OrdStatus::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
}

OrdStatus::OrdStatus(char* json)
{
	this->fromJson(json);
}

char*
OrdStatus::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}


