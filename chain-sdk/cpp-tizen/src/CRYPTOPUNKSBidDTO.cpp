#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CRYPTOPUNKS.BidDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CRYPTOPUNKS.BidDTO::CRYPTOPUNKS.BidDTO()
{
	//__init();
}

CRYPTOPUNKS.BidDTO::~CRYPTOPUNKS.BidDTO()
{
	//__cleanup();
}

void
CRYPTOPUNKS.BidDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = std::string();
	//vid = long(0);
	//block_range = std::string();
	//id = std::string();
	//tokens_bid = std::string();
	//token_id = std::string();
	//timestamp = std::string();
	//bidder = std::string();
}

void
CRYPTOPUNKS.BidDTO::__cleanup()
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
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(tokens_bid != NULL) {
	//
	//delete tokens_bid;
	//tokens_bid = NULL;
	//}
	//if(token_id != NULL) {
	//
	//delete token_id;
	//token_id = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(bidder != NULL) {
	//
	//delete bidder;
	//bidder = NULL;
	//}
	//
}

void
CRYPTOPUNKS.BidDTO::fromJson(char* jsonStr)
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
	

		if (isprimitive("std::string")) {
			jsonToValue(&block_number, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *vidKey = "vid";
	node = json_object_get_member(pJsonObject, vidKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&vid, node, "long long", "");
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
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *tokens_bidKey = "tokens_bid";
	node = json_object_get_member(pJsonObject, tokens_bidKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&tokens_bid, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *token_idKey = "token_id";
	node = json_object_get_member(pJsonObject, token_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&token_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *bidderKey = "bidder";
	node = json_object_get_member(pJsonObject, bidderKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&bidder, node, "std::string", "");
		} else {
			
		}
	}
}

CRYPTOPUNKS.BidDTO::CRYPTOPUNKS.BidDTO(char* json)
{
	this->fromJson(json);
}

char*
CRYPTOPUNKS.BidDTO::toJson()
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
	if (isprimitive("std::string")) {
		std::string obj = getBlockNumber();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *block_numberKey = "block_number";
	json_object_set_member(pJsonObject, block_numberKey, node);
	if (isprimitive("long long")) {
		long long obj = getVid();
		node = converttoJson(&obj, "long long", "");
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
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTokensBid();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tokens_bidKey = "tokens_bid";
	json_object_set_member(pJsonObject, tokens_bidKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTokenId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *token_idKey = "token_id";
	json_object_set_member(pJsonObject, token_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBidder();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *bidderKey = "bidder";
	json_object_set_member(pJsonObject, bidderKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CRYPTOPUNKS.BidDTO::getEntryTime()
{
	return entry_time;
}

void
CRYPTOPUNKS.BidDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
CRYPTOPUNKS.BidDTO::getRecvTime()
{
	return recv_time;
}

void
CRYPTOPUNKS.BidDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

std::string
CRYPTOPUNKS.BidDTO::getBlockNumber()
{
	return block_number;
}

void
CRYPTOPUNKS.BidDTO::setBlockNumber(std::string  block_number)
{
	this->block_number = block_number;
}

long long
CRYPTOPUNKS.BidDTO::getVid()
{
	return vid;
}

void
CRYPTOPUNKS.BidDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
CRYPTOPUNKS.BidDTO::getBlockRange()
{
	return block_range;
}

void
CRYPTOPUNKS.BidDTO::setBlockRange(std::string  block_range)
{
	this->block_range = block_range;
}

std::string
CRYPTOPUNKS.BidDTO::getId()
{
	return id;
}

void
CRYPTOPUNKS.BidDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
CRYPTOPUNKS.BidDTO::getTokensBid()
{
	return tokens_bid;
}

void
CRYPTOPUNKS.BidDTO::setTokensBid(std::string  tokens_bid)
{
	this->tokens_bid = tokens_bid;
}

std::string
CRYPTOPUNKS.BidDTO::getTokenId()
{
	return token_id;
}

void
CRYPTOPUNKS.BidDTO::setTokenId(std::string  token_id)
{
	this->token_id = token_id;
}

std::string
CRYPTOPUNKS.BidDTO::getTimestamp()
{
	return timestamp;
}

void
CRYPTOPUNKS.BidDTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

std::string
CRYPTOPUNKS.BidDTO::getBidder()
{
	return bidder;
}

void
CRYPTOPUNKS.BidDTO::setBidder(std::string  bidder)
{
	this->bidder = bidder;
}


