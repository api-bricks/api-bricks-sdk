#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CRYPTOPUNKS.DataSourcesDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CRYPTOPUNKS.DataSourcesDTO::CRYPTOPUNKS.DataSourcesDTO()
{
	//__init();
}

CRYPTOPUNKS.DataSourcesDTO::~CRYPTOPUNKS.DataSourcesDTO()
{
	//__cleanup();
}

void
CRYPTOPUNKS.DataSourcesDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//vid = int(0);
	//block_range = std::string();
	//causality_region = int(0);
	//manifest_idx = int(0);
	//parent = int(0);
	//id = std::string();
	//param = std::string();
	//context = std::string();
	//done_at = int(0);
}

void
CRYPTOPUNKS.DataSourcesDTO::__cleanup()
{
	//if(entry_time != NULL) {
	//
	//delete entry_time;
	//entry_time = NULL;
	//}
	//if(recv_time != NULL) {
	//
	//delete recv_time;
	//recv_time = NULL;
	//}
	//if(block_number != NULL) {
	//
	//delete block_number;
	//block_number = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//if(block_range != NULL) {
	//
	//delete block_range;
	//block_range = NULL;
	//}
	//if(causality_region != NULL) {
	//
	//delete causality_region;
	//causality_region = NULL;
	//}
	//if(manifest_idx != NULL) {
	//
	//delete manifest_idx;
	//manifest_idx = NULL;
	//}
	//if(parent != NULL) {
	//
	//delete parent;
	//parent = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(param != NULL) {
	//
	//delete param;
	//param = NULL;
	//}
	//if(context != NULL) {
	//
	//delete context;
	//context = NULL;
	//}
	//if(done_at != NULL) {
	//
	//delete done_at;
	//done_at = NULL;
	//}
	//
}

void
CRYPTOPUNKS.DataSourcesDTO::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *entry_timeKey = "entry_time";
	node = json_object_get_member(pJsonObject, entry_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&entry_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *recv_timeKey = "recv_time";
	node = json_object_get_member(pJsonObject, recv_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&recv_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *block_numberKey = "block_number";
	node = json_object_get_member(pJsonObject, block_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&block_number, node, "long long", "");
		} else {
			
		}
	}
	const gchar *vidKey = "vid";
	node = json_object_get_member(pJsonObject, vidKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&vid, node, "int", "");
		} else {
			
		}
	}
	const gchar *block_rangeKey = "block_range";
	node = json_object_get_member(pJsonObject, block_rangeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&block_range, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *causality_regionKey = "causality_region";
	node = json_object_get_member(pJsonObject, causality_regionKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&causality_region, node, "int", "");
		} else {
			
		}
	}
	const gchar *manifest_idxKey = "manifest_idx";
	node = json_object_get_member(pJsonObject, manifest_idxKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&manifest_idx, node, "int", "");
		} else {
			
		}
	}
	const gchar *parentKey = "parent";
	node = json_object_get_member(pJsonObject, parentKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&parent, node, "int", "");
		} else {
			
		}
	}
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *paramKey = "param";
	node = json_object_get_member(pJsonObject, paramKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&param, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *contextKey = "context";
	node = json_object_get_member(pJsonObject, contextKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&context, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *done_atKey = "done_at";
	node = json_object_get_member(pJsonObject, done_atKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&done_at, node, "int", "");
		} else {
			
		}
	}
}

CRYPTOPUNKS.DataSourcesDTO::CRYPTOPUNKS.DataSourcesDTO(char* json)
{
	this->fromJson(json);
}

char*
CRYPTOPUNKS.DataSourcesDTO::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getEntryTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *entry_timeKey = "entry_time";
	json_object_set_member(pJsonObject, entry_timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRecvTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recv_timeKey = "recv_time";
	json_object_set_member(pJsonObject, recv_timeKey, node);
	if (isprimitive("long long")) {
		long long obj = getBlockNumber();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *block_numberKey = "block_number";
	json_object_set_member(pJsonObject, block_numberKey, node);
	if (isprimitive("int")) {
		int obj = getVid();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *vidKey = "vid";
	json_object_set_member(pJsonObject, vidKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBlockRange();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *block_rangeKey = "block_range";
	json_object_set_member(pJsonObject, block_rangeKey, node);
	if (isprimitive("int")) {
		int obj = getCausalityRegion();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *causality_regionKey = "causality_region";
	json_object_set_member(pJsonObject, causality_regionKey, node);
	if (isprimitive("int")) {
		int obj = getManifestIdx();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *manifest_idxKey = "manifest_idx";
	json_object_set_member(pJsonObject, manifest_idxKey, node);
	if (isprimitive("int")) {
		int obj = getParent();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *parentKey = "parent";
	json_object_set_member(pJsonObject, parentKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getParam();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *paramKey = "param";
	json_object_set_member(pJsonObject, paramKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getContext();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *contextKey = "context";
	json_object_set_member(pJsonObject, contextKey, node);
	if (isprimitive("int")) {
		int obj = getDoneAt();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *done_atKey = "done_at";
	json_object_set_member(pJsonObject, done_atKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CRYPTOPUNKS.DataSourcesDTO::getEntryTime()
{
	return entry_time;
}

void
CRYPTOPUNKS.DataSourcesDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
CRYPTOPUNKS.DataSourcesDTO::getRecvTime()
{
	return recv_time;
}

void
CRYPTOPUNKS.DataSourcesDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
CRYPTOPUNKS.DataSourcesDTO::getBlockNumber()
{
	return block_number;
}

void
CRYPTOPUNKS.DataSourcesDTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

int
CRYPTOPUNKS.DataSourcesDTO::getVid()
{
	return vid;
}

void
CRYPTOPUNKS.DataSourcesDTO::setVid(int  vid)
{
	this->vid = vid;
}

std::string
CRYPTOPUNKS.DataSourcesDTO::getBlockRange()
{
	return block_range;
}

void
CRYPTOPUNKS.DataSourcesDTO::setBlockRange(std::string  block_range)
{
	this->block_range = block_range;
}

int
CRYPTOPUNKS.DataSourcesDTO::getCausalityRegion()
{
	return causality_region;
}

void
CRYPTOPUNKS.DataSourcesDTO::setCausalityRegion(int  causality_region)
{
	this->causality_region = causality_region;
}

int
CRYPTOPUNKS.DataSourcesDTO::getManifestIdx()
{
	return manifest_idx;
}

void
CRYPTOPUNKS.DataSourcesDTO::setManifestIdx(int  manifest_idx)
{
	this->manifest_idx = manifest_idx;
}

int
CRYPTOPUNKS.DataSourcesDTO::getParent()
{
	return parent;
}

void
CRYPTOPUNKS.DataSourcesDTO::setParent(int  parent)
{
	this->parent = parent;
}

std::string
CRYPTOPUNKS.DataSourcesDTO::getId()
{
	return id;
}

void
CRYPTOPUNKS.DataSourcesDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
CRYPTOPUNKS.DataSourcesDTO::getParam()
{
	return param;
}

void
CRYPTOPUNKS.DataSourcesDTO::setParam(std::string  param)
{
	this->param = param;
}

std::string
CRYPTOPUNKS.DataSourcesDTO::getContext()
{
	return context;
}

void
CRYPTOPUNKS.DataSourcesDTO::setContext(std::string  context)
{
	this->context = context;
}

int
CRYPTOPUNKS.DataSourcesDTO::getDoneAt()
{
	return done_at;
}

void
CRYPTOPUNKS.DataSourcesDTO::setDoneAt(int  done_at)
{
	this->done_at = done_at;
}


