#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CRYPTOPUNKS.MarketplaceDailySnapshotDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CRYPTOPUNKS.MarketplaceDailySnapshotDTO::CRYPTOPUNKS.MarketplaceDailySnapshotDTO()
{
	//__init();
}

CRYPTOPUNKS.MarketplaceDailySnapshotDTO::~CRYPTOPUNKS.MarketplaceDailySnapshotDTO()
{
	//__cleanup();
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = std::string();
	//vid = long(0);
	//block_range = std::string();
	//id = std::string();
	//marketplace = std::string();
	//timestamp = std::string();
	//collection_count = int(0);
	//cumulative_trade_volume_eth = std::string();
	//marketplace_revenue_eth = std::string();
	//creator_revenue_eth = std::string();
	//total_revenue_eth = std::string();
	//trade_count = int(0);
	//cumulative_unique_traders = int(0);
	//daily_active_traders = int(0);
	//daily_traded_collection_count = int(0);
	//daily_traded_item_count = int(0);
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::__cleanup()
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
	//if(marketplace != NULL) {
	//
	//delete marketplace;
	//marketplace = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(collection_count != NULL) {
	//
	//delete collection_count;
	//collection_count = NULL;
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
	//if(trade_count != NULL) {
	//
	//delete trade_count;
	//trade_count = NULL;
	//}
	//if(cumulative_unique_traders != NULL) {
	//
	//delete cumulative_unique_traders;
	//cumulative_unique_traders = NULL;
	//}
	//if(daily_active_traders != NULL) {
	//
	//delete daily_active_traders;
	//daily_active_traders = NULL;
	//}
	//if(daily_traded_collection_count != NULL) {
	//
	//delete daily_traded_collection_count;
	//daily_traded_collection_count = NULL;
	//}
	//if(daily_traded_item_count != NULL) {
	//
	//delete daily_traded_item_count;
	//daily_traded_item_count = NULL;
	//}
	//
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::fromJson(char* jsonStr)
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
	const gchar *marketplaceKey = "marketplace";
	node = json_object_get_member(pJsonObject, marketplaceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&marketplace, node, "std::string", "");
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
	const gchar *collection_countKey = "collection_count";
	node = json_object_get_member(pJsonObject, collection_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&collection_count, node, "int", "");
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
	const gchar *trade_countKey = "trade_count";
	node = json_object_get_member(pJsonObject, trade_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&trade_count, node, "int", "");
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
	const gchar *daily_active_tradersKey = "daily_active_traders";
	node = json_object_get_member(pJsonObject, daily_active_tradersKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&daily_active_traders, node, "int", "");
		} else {
			
		}
	}
	const gchar *daily_traded_collection_countKey = "daily_traded_collection_count";
	node = json_object_get_member(pJsonObject, daily_traded_collection_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&daily_traded_collection_count, node, "int", "");
		} else {
			
		}
	}
	const gchar *daily_traded_item_countKey = "daily_traded_item_count";
	node = json_object_get_member(pJsonObject, daily_traded_item_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&daily_traded_item_count, node, "int", "");
		} else {
			
		}
	}
}

CRYPTOPUNKS.MarketplaceDailySnapshotDTO::CRYPTOPUNKS.MarketplaceDailySnapshotDTO(char* json)
{
	this->fromJson(json);
}

char*
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::toJson()
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
		std::string obj = getMarketplace();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *marketplaceKey = "marketplace";
	json_object_set_member(pJsonObject, marketplaceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("int")) {
		int obj = getCollectionCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *collection_countKey = "collection_count";
	json_object_set_member(pJsonObject, collection_countKey, node);
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
		int obj = getTradeCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *trade_countKey = "trade_count";
	json_object_set_member(pJsonObject, trade_countKey, node);
	if (isprimitive("int")) {
		int obj = getCumulativeUniqueTraders();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *cumulative_unique_tradersKey = "cumulative_unique_traders";
	json_object_set_member(pJsonObject, cumulative_unique_tradersKey, node);
	if (isprimitive("int")) {
		int obj = getDailyActiveTraders();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *daily_active_tradersKey = "daily_active_traders";
	json_object_set_member(pJsonObject, daily_active_tradersKey, node);
	if (isprimitive("int")) {
		int obj = getDailyTradedCollectionCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *daily_traded_collection_countKey = "daily_traded_collection_count";
	json_object_set_member(pJsonObject, daily_traded_collection_countKey, node);
	if (isprimitive("int")) {
		int obj = getDailyTradedItemCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *daily_traded_item_countKey = "daily_traded_item_count";
	json_object_set_member(pJsonObject, daily_traded_item_countKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getEntryTime()
{
	return entry_time;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getRecvTime()
{
	return recv_time;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getBlockNumber()
{
	return block_number;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setBlockNumber(std::string  block_number)
{
	this->block_number = block_number;
}

long long
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getVid()
{
	return vid;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getBlockRange()
{
	return block_range;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setBlockRange(std::string  block_range)
{
	this->block_range = block_range;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getId()
{
	return id;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getMarketplace()
{
	return marketplace;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setMarketplace(std::string  marketplace)
{
	this->marketplace = marketplace;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getTimestamp()
{
	return timestamp;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

int
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getCollectionCount()
{
	return collection_count;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setCollectionCount(int  collection_count)
{
	this->collection_count = collection_count;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getCumulativeTradeVolumeEth()
{
	return cumulative_trade_volume_eth;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setCumulativeTradeVolumeEth(std::string  cumulative_trade_volume_eth)
{
	this->cumulative_trade_volume_eth = cumulative_trade_volume_eth;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getMarketplaceRevenueEth()
{
	return marketplace_revenue_eth;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setMarketplaceRevenueEth(std::string  marketplace_revenue_eth)
{
	this->marketplace_revenue_eth = marketplace_revenue_eth;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getCreatorRevenueEth()
{
	return creator_revenue_eth;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setCreatorRevenueEth(std::string  creator_revenue_eth)
{
	this->creator_revenue_eth = creator_revenue_eth;
}

std::string
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getTotalRevenueEth()
{
	return total_revenue_eth;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setTotalRevenueEth(std::string  total_revenue_eth)
{
	this->total_revenue_eth = total_revenue_eth;
}

int
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getTradeCount()
{
	return trade_count;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setTradeCount(int  trade_count)
{
	this->trade_count = trade_count;
}

int
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getCumulativeUniqueTraders()
{
	return cumulative_unique_traders;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setCumulativeUniqueTraders(int  cumulative_unique_traders)
{
	this->cumulative_unique_traders = cumulative_unique_traders;
}

int
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getDailyActiveTraders()
{
	return daily_active_traders;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setDailyActiveTraders(int  daily_active_traders)
{
	this->daily_active_traders = daily_active_traders;
}

int
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getDailyTradedCollectionCount()
{
	return daily_traded_collection_count;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setDailyTradedCollectionCount(int  daily_traded_collection_count)
{
	this->daily_traded_collection_count = daily_traded_collection_count;
}

int
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::getDailyTradedItemCount()
{
	return daily_traded_item_count;
}

void
CRYPTOPUNKS.MarketplaceDailySnapshotDTO::setDailyTradedItemCount(int  daily_traded_item_count)
{
	this->daily_traded_item_count = daily_traded_item_count;
}


