#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CRYPTOPUNKS.MarketPlaceDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CRYPTOPUNKS.MarketPlaceDTO::CRYPTOPUNKS.MarketPlaceDTO()
{
	//__init();
}

CRYPTOPUNKS.MarketPlaceDTO::~CRYPTOPUNKS.MarketPlaceDTO()
{
	//__cleanup();
}

void
CRYPTOPUNKS.MarketPlaceDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//vid = long(0);
	//block_range = std::string();
	//id = std::string();
	//name = std::string();
	//slug = std::string();
	//schema_version = std::string();
	//subgraph_version = std::string();
	//methodology_version = std::string();
	//collection_count = int(0);
	//trade_count = int(0);
	//cumulative_trade_volume_eth = std::string();
	//marketplace_revenue_eth = std::string();
	//creator_revenue_eth = std::string();
	//total_revenue_eth = std::string();
	//cumulative_unique_traders = int(0);
}

void
CRYPTOPUNKS.MarketPlaceDTO::__cleanup()
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
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(slug != NULL) {
	//
	//delete slug;
	//slug = NULL;
	//}
	//if(schema_version != NULL) {
	//
	//delete schema_version;
	//schema_version = NULL;
	//}
	//if(subgraph_version != NULL) {
	//
	//delete subgraph_version;
	//subgraph_version = NULL;
	//}
	//if(methodology_version != NULL) {
	//
	//delete methodology_version;
	//methodology_version = NULL;
	//}
	//if(collection_count != NULL) {
	//
	//delete collection_count;
	//collection_count = NULL;
	//}
	//if(trade_count != NULL) {
	//
	//delete trade_count;
	//trade_count = NULL;
	//}
	//if(cumulative_trade_volume_eth != NULL) {
	//
	//delete cumulative_trade_volume_eth;
	//cumulative_trade_volume_eth = NULL;
	//}
	//if(marketplace_revenue_eth != NULL) {
	//
	//delete marketplace_revenue_eth;
	//marketplace_revenue_eth = NULL;
	//}
	//if(creator_revenue_eth != NULL) {
	//
	//delete creator_revenue_eth;
	//creator_revenue_eth = NULL;
	//}
	//if(total_revenue_eth != NULL) {
	//
	//delete total_revenue_eth;
	//total_revenue_eth = NULL;
	//}
	//if(cumulative_unique_traders != NULL) {
	//
	//delete cumulative_unique_traders;
	//cumulative_unique_traders = NULL;
	//}
	//
}

void
CRYPTOPUNKS.MarketPlaceDTO::fromJson(char* jsonStr)
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
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *slugKey = "slug";
	node = json_object_get_member(pJsonObject, slugKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&slug, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *schema_versionKey = "schema_version";
	node = json_object_get_member(pJsonObject, schema_versionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&schema_version, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *subgraph_versionKey = "subgraph_version";
	node = json_object_get_member(pJsonObject, subgraph_versionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subgraph_version, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *methodology_versionKey = "methodology_version";
	node = json_object_get_member(pJsonObject, methodology_versionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&methodology_version, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *collection_countKey = "collection_count";
	node = json_object_get_member(pJsonObject, collection_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&collection_count, node, "int", "");
		} else {
			
		}
	}
	const gchar *trade_countKey = "trade_count";
	node = json_object_get_member(pJsonObject, trade_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&trade_count, node, "int", "");
		} else {
			
		}
	}
	const gchar *cumulative_trade_volume_ethKey = "cumulative_trade_volume_eth";
	node = json_object_get_member(pJsonObject, cumulative_trade_volume_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cumulative_trade_volume_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *marketplace_revenue_ethKey = "marketplace_revenue_eth";
	node = json_object_get_member(pJsonObject, marketplace_revenue_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&marketplace_revenue_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *creator_revenue_ethKey = "creator_revenue_eth";
	node = json_object_get_member(pJsonObject, creator_revenue_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&creator_revenue_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_revenue_ethKey = "total_revenue_eth";
	node = json_object_get_member(pJsonObject, total_revenue_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_revenue_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cumulative_unique_tradersKey = "cumulative_unique_traders";
	node = json_object_get_member(pJsonObject, cumulative_unique_tradersKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&cumulative_unique_traders, node, "int", "");
		} else {
			
		}
	}
}

CRYPTOPUNKS.MarketPlaceDTO::CRYPTOPUNKS.MarketPlaceDTO(char* json)
{
	this->fromJson(json);
}

char*
CRYPTOPUNKS.MarketPlaceDTO::toJson()
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
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSlug();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *slugKey = "slug";
	json_object_set_member(pJsonObject, slugKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSchemaVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *schema_versionKey = "schema_version";
	json_object_set_member(pJsonObject, schema_versionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubgraphVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subgraph_versionKey = "subgraph_version";
	json_object_set_member(pJsonObject, subgraph_versionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMethodologyVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *methodology_versionKey = "methodology_version";
	json_object_set_member(pJsonObject, methodology_versionKey, node);
	if (isprimitive("int")) {
		int obj = getCollectionCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *collection_countKey = "collection_count";
	json_object_set_member(pJsonObject, collection_countKey, node);
	if (isprimitive("int")) {
		int obj = getTradeCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *trade_countKey = "trade_count";
	json_object_set_member(pJsonObject, trade_countKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCumulativeTradeVolumeEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cumulative_trade_volume_ethKey = "cumulative_trade_volume_eth";
	json_object_set_member(pJsonObject, cumulative_trade_volume_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMarketplaceRevenueEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *marketplace_revenue_ethKey = "marketplace_revenue_eth";
	json_object_set_member(pJsonObject, marketplace_revenue_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCreatorRevenueEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *creator_revenue_ethKey = "creator_revenue_eth";
	json_object_set_member(pJsonObject, creator_revenue_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalRevenueEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_revenue_ethKey = "total_revenue_eth";
	json_object_set_member(pJsonObject, total_revenue_ethKey, node);
	if (isprimitive("int")) {
		int obj = getCumulativeUniqueTraders();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *cumulative_unique_tradersKey = "cumulative_unique_traders";
	json_object_set_member(pJsonObject, cumulative_unique_tradersKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getEntryTime()
{
	return entry_time;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getRecvTime()
{
	return recv_time;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
CRYPTOPUNKS.MarketPlaceDTO::getBlockNumber()
{
	return block_number;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

long long
CRYPTOPUNKS.MarketPlaceDTO::getVid()
{
	return vid;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getBlockRange()
{
	return block_range;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setBlockRange(std::string  block_range)
{
	this->block_range = block_range;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getId()
{
	return id;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getName()
{
	return name;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setName(std::string  name)
{
	this->name = name;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getSlug()
{
	return slug;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setSlug(std::string  slug)
{
	this->slug = slug;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getSchemaVersion()
{
	return schema_version;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setSchemaVersion(std::string  schema_version)
{
	this->schema_version = schema_version;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getSubgraphVersion()
{
	return subgraph_version;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setSubgraphVersion(std::string  subgraph_version)
{
	this->subgraph_version = subgraph_version;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getMethodologyVersion()
{
	return methodology_version;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setMethodologyVersion(std::string  methodology_version)
{
	this->methodology_version = methodology_version;
}

int
CRYPTOPUNKS.MarketPlaceDTO::getCollectionCount()
{
	return collection_count;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setCollectionCount(int  collection_count)
{
	this->collection_count = collection_count;
}

int
CRYPTOPUNKS.MarketPlaceDTO::getTradeCount()
{
	return trade_count;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setTradeCount(int  trade_count)
{
	this->trade_count = trade_count;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getCumulativeTradeVolumeEth()
{
	return cumulative_trade_volume_eth;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setCumulativeTradeVolumeEth(std::string  cumulative_trade_volume_eth)
{
	this->cumulative_trade_volume_eth = cumulative_trade_volume_eth;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getMarketplaceRevenueEth()
{
	return marketplace_revenue_eth;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setMarketplaceRevenueEth(std::string  marketplace_revenue_eth)
{
	this->marketplace_revenue_eth = marketplace_revenue_eth;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getCreatorRevenueEth()
{
	return creator_revenue_eth;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setCreatorRevenueEth(std::string  creator_revenue_eth)
{
	this->creator_revenue_eth = creator_revenue_eth;
}

std::string
CRYPTOPUNKS.MarketPlaceDTO::getTotalRevenueEth()
{
	return total_revenue_eth;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setTotalRevenueEth(std::string  total_revenue_eth)
{
	this->total_revenue_eth = total_revenue_eth;
}

int
CRYPTOPUNKS.MarketPlaceDTO::getCumulativeUniqueTraders()
{
	return cumulative_unique_traders;
}

void
CRYPTOPUNKS.MarketPlaceDTO::setCumulativeUniqueTraders(int  cumulative_unique_traders)
{
	this->cumulative_unique_traders = cumulative_unique_traders;
}


