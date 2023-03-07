#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CRYPTOPUNKS.TradeDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CRYPTOPUNKS.TradeDTO::CRYPTOPUNKS.TradeDTO()
{
	//__init();
}

CRYPTOPUNKS.TradeDTO::~CRYPTOPUNKS.TradeDTO()
{
	//__cleanup();
}

void
CRYPTOPUNKS.TradeDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = std::string();
	//vid = long(0);
	//block_range = std::string();
	//id = std::string();
	//transaction_hash = std::string();
	//log_index = int(0);
	//timestamp = std::string();
	//is_bundle = bool(false);
	//collection = std::string();
	//token_id = std::string();
	//amount = std::string();
	//price_eth = std::string();
	//buyer = std::string();
	//seller = std::string();
}

void
CRYPTOPUNKS.TradeDTO::__cleanup()
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
	//if(transaction_hash != NULL) {
	//
	//delete transaction_hash;
	//transaction_hash = NULL;
	//}
	//if(log_index != NULL) {
	//
	//delete log_index;
	//log_index = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(is_bundle != NULL) {
	//
	//delete is_bundle;
	//is_bundle = NULL;
	//}
	//if(collection != NULL) {
	//
	//delete collection;
	//collection = NULL;
	//}
	//if(token_id != NULL) {
	//
	//delete token_id;
	//token_id = NULL;
	//}
	//if(amount != NULL) {
	//
	//delete amount;
	//amount = NULL;
	//}
	//if(price_eth != NULL) {
	//
	//delete price_eth;
	//price_eth = NULL;
	//}
	//if(buyer != NULL) {
	//
	//delete buyer;
	//buyer = NULL;
	//}
	//if(seller != NULL) {
	//
	//delete seller;
	//seller = NULL;
	//}
	//
}

void
CRYPTOPUNKS.TradeDTO::fromJson(char* jsonStr)
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
	const gchar *transaction_hashKey = "transaction_hash";
	node = json_object_get_member(pJsonObject, transaction_hashKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&transaction_hash, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *log_indexKey = "log_index";
	node = json_object_get_member(pJsonObject, log_indexKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&log_index, node, "int", "");
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
	const gchar *is_bundleKey = "is_bundle";
	node = json_object_get_member(pJsonObject, is_bundleKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&is_bundle, node, "bool", "");
		} else {
			
		}
	}
	const gchar *collectionKey = "collection";
	node = json_object_get_member(pJsonObject, collectionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&collection, node, "std::string", "");
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
	const gchar *amountKey = "amount";
	node = json_object_get_member(pJsonObject, amountKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *price_ethKey = "price_eth";
	node = json_object_get_member(pJsonObject, price_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&price_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *buyerKey = "buyer";
	node = json_object_get_member(pJsonObject, buyerKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&buyer, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sellerKey = "seller";
	node = json_object_get_member(pJsonObject, sellerKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&seller, node, "std::string", "");
		} else {
			
		}
	}
}

CRYPTOPUNKS.TradeDTO::CRYPTOPUNKS.TradeDTO(char* json)
{
	this->fromJson(json);
}

char*
CRYPTOPUNKS.TradeDTO::toJson()
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
		std::string obj = getTransactionHash();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *transaction_hashKey = "transaction_hash";
	json_object_set_member(pJsonObject, transaction_hashKey, node);
	if (isprimitive("int")) {
		int obj = getLogIndex();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *log_indexKey = "log_index";
	json_object_set_member(pJsonObject, log_indexKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("bool")) {
		bool obj = getIsBundle();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *is_bundleKey = "is_bundle";
	json_object_set_member(pJsonObject, is_bundleKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCollection();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *collectionKey = "collection";
	json_object_set_member(pJsonObject, collectionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTokenId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *token_idKey = "token_id";
	json_object_set_member(pJsonObject, token_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmount();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amountKey = "amount";
	json_object_set_member(pJsonObject, amountKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPriceEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *price_ethKey = "price_eth";
	json_object_set_member(pJsonObject, price_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBuyer();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *buyerKey = "buyer";
	json_object_set_member(pJsonObject, buyerKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSeller();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *sellerKey = "seller";
	json_object_set_member(pJsonObject, sellerKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CRYPTOPUNKS.TradeDTO::getEntryTime()
{
	return entry_time;
}

void
CRYPTOPUNKS.TradeDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
CRYPTOPUNKS.TradeDTO::getRecvTime()
{
	return recv_time;
}

void
CRYPTOPUNKS.TradeDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

std::string
CRYPTOPUNKS.TradeDTO::getBlockNumber()
{
	return block_number;
}

void
CRYPTOPUNKS.TradeDTO::setBlockNumber(std::string  block_number)
{
	this->block_number = block_number;
}

long long
CRYPTOPUNKS.TradeDTO::getVid()
{
	return vid;
}

void
CRYPTOPUNKS.TradeDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
CRYPTOPUNKS.TradeDTO::getBlockRange()
{
	return block_range;
}

void
CRYPTOPUNKS.TradeDTO::setBlockRange(std::string  block_range)
{
	this->block_range = block_range;
}

std::string
CRYPTOPUNKS.TradeDTO::getId()
{
	return id;
}

void
CRYPTOPUNKS.TradeDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
CRYPTOPUNKS.TradeDTO::getTransactionHash()
{
	return transaction_hash;
}

void
CRYPTOPUNKS.TradeDTO::setTransactionHash(std::string  transaction_hash)
{
	this->transaction_hash = transaction_hash;
}

int
CRYPTOPUNKS.TradeDTO::getLogIndex()
{
	return log_index;
}

void
CRYPTOPUNKS.TradeDTO::setLogIndex(int  log_index)
{
	this->log_index = log_index;
}

std::string
CRYPTOPUNKS.TradeDTO::getTimestamp()
{
	return timestamp;
}

void
CRYPTOPUNKS.TradeDTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

bool
CRYPTOPUNKS.TradeDTO::getIsBundle()
{
	return is_bundle;
}

void
CRYPTOPUNKS.TradeDTO::setIsBundle(bool  is_bundle)
{
	this->is_bundle = is_bundle;
}

std::string
CRYPTOPUNKS.TradeDTO::getCollection()
{
	return collection;
}

void
CRYPTOPUNKS.TradeDTO::setCollection(std::string  collection)
{
	this->collection = collection;
}

std::string
CRYPTOPUNKS.TradeDTO::getTokenId()
{
	return token_id;
}

void
CRYPTOPUNKS.TradeDTO::setTokenId(std::string  token_id)
{
	this->token_id = token_id;
}

std::string
CRYPTOPUNKS.TradeDTO::getAmount()
{
	return amount;
}

void
CRYPTOPUNKS.TradeDTO::setAmount(std::string  amount)
{
	this->amount = amount;
}

std::string
CRYPTOPUNKS.TradeDTO::getPriceEth()
{
	return price_eth;
}

void
CRYPTOPUNKS.TradeDTO::setPriceEth(std::string  price_eth)
{
	this->price_eth = price_eth;
}

std::string
CRYPTOPUNKS.TradeDTO::getBuyer()
{
	return buyer;
}

void
CRYPTOPUNKS.TradeDTO::setBuyer(std::string  buyer)
{
	this->buyer = buyer;
}

std::string
CRYPTOPUNKS.TradeDTO::getSeller()
{
	return seller;
}

void
CRYPTOPUNKS.TradeDTO::setSeller(std::string  seller)
{
	this->seller = seller;
}


