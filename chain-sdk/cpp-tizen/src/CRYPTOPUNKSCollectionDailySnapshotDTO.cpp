#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CRYPTOPUNKS.CollectionDailySnapshotDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CRYPTOPUNKS.CollectionDailySnapshotDTO::CRYPTOPUNKS.CollectionDailySnapshotDTO()
{
	//__init();
}

CRYPTOPUNKS.CollectionDailySnapshotDTO::~CRYPTOPUNKS.CollectionDailySnapshotDTO()
{
	//__cleanup();
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = std::string();
	//vid = long(0);
	//block_range = std::string();
	//id = std::string();
	//collection = std::string();
	//timestamp = std::string();
	//royalty_fee = std::string();
	//daily_min_sale_price = std::string();
	//daily_max_sale_price = std::string();
	//cumulative_trade_volume_eth = std::string();
	//daily_trade_volume_eth = std::string();
	//marketplace_revenue_eth = std::string();
	//creator_revenue_eth = std::string();
	//total_revenue_eth = std::string();
	//trade_count = int(0);
	//daily_traded_item_count = int(0);
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::__cleanup()
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
	//if(collection != NULL) {
	//
	//delete collection;
	//collection = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(royalty_fee != NULL) {
	//
	//delete royalty_fee;
	//royalty_fee = NULL;
	//}
	//if(daily_min_sale_price != NULL) {
	//
	//delete daily_min_sale_price;
	//daily_min_sale_price = NULL;
	//}
	//if(daily_max_sale_price != NULL) {
	//
	//delete daily_max_sale_price;
	//daily_max_sale_price = NULL;
	//}
	//if(cumulative_trade_volume_eth != NULL) {
	//
	//delete cumulative_trade_volume_eth;
	//cumulative_trade_volume_eth = NULL;
	//}
	//if(daily_trade_volume_eth != NULL) {
	//
	//delete daily_trade_volume_eth;
	//daily_trade_volume_eth = NULL;
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
	//if(daily_traded_item_count != NULL) {
	//
	//delete daily_traded_item_count;
	//daily_traded_item_count = NULL;
	//}
	//
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::fromJson(char* jsonStr)
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
	const gchar *collectionKey = "collection";
	node = json_object_get_member(pJsonObject, collectionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&collection, node, "std::string", "");
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
	const gchar *royalty_feeKey = "royalty_fee";
	node = json_object_get_member(pJsonObject, royalty_feeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&royalty_fee, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *daily_min_sale_priceKey = "daily_min_sale_price";
	node = json_object_get_member(pJsonObject, daily_min_sale_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&daily_min_sale_price, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *daily_max_sale_priceKey = "daily_max_sale_price";
	node = json_object_get_member(pJsonObject, daily_max_sale_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&daily_max_sale_price, node, "std::string", "");
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
	const gchar *daily_trade_volume_ethKey = "daily_trade_volume_eth";
	node = json_object_get_member(pJsonObject, daily_trade_volume_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&daily_trade_volume_eth, node, "std::string", "");
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
	const gchar *daily_traded_item_countKey = "daily_traded_item_count";
	node = json_object_get_member(pJsonObject, daily_traded_item_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&daily_traded_item_count, node, "int", "");
		} else {
			
		}
	}
}

CRYPTOPUNKS.CollectionDailySnapshotDTO::CRYPTOPUNKS.CollectionDailySnapshotDTO(char* json)
{
	this->fromJson(json);
}

char*
CRYPTOPUNKS.CollectionDailySnapshotDTO::toJson()
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
		std::string obj = getCollection();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *collectionKey = "collection";
	json_object_set_member(pJsonObject, collectionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRoyaltyFee();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *royalty_feeKey = "royalty_fee";
	json_object_set_member(pJsonObject, royalty_feeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDailyMinSalePrice();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *daily_min_sale_priceKey = "daily_min_sale_price";
	json_object_set_member(pJsonObject, daily_min_sale_priceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDailyMaxSalePrice();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *daily_max_sale_priceKey = "daily_max_sale_price";
	json_object_set_member(pJsonObject, daily_max_sale_priceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCumulativeTradeVolumeEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cumulative_trade_volume_ethKey = "cumulative_trade_volume_eth";
	json_object_set_member(pJsonObject, cumulative_trade_volume_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDailyTradeVolumeEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *daily_trade_volume_ethKey = "daily_trade_volume_eth";
	json_object_set_member(pJsonObject, daily_trade_volume_ethKey, node);
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
CRYPTOPUNKS.CollectionDailySnapshotDTO::getEntryTime()
{
	return entry_time;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getRecvTime()
{
	return recv_time;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getBlockNumber()
{
	return block_number;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setBlockNumber(std::string  block_number)
{
	this->block_number = block_number;
}

long long
CRYPTOPUNKS.CollectionDailySnapshotDTO::getVid()
{
	return vid;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getBlockRange()
{
	return block_range;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setBlockRange(std::string  block_range)
{
	this->block_range = block_range;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getId()
{
	return id;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getCollection()
{
	return collection;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setCollection(std::string  collection)
{
	this->collection = collection;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getTimestamp()
{
	return timestamp;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getRoyaltyFee()
{
	return royalty_fee;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setRoyaltyFee(std::string  royalty_fee)
{
	this->royalty_fee = royalty_fee;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getDailyMinSalePrice()
{
	return daily_min_sale_price;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setDailyMinSalePrice(std::string  daily_min_sale_price)
{
	this->daily_min_sale_price = daily_min_sale_price;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getDailyMaxSalePrice()
{
	return daily_max_sale_price;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setDailyMaxSalePrice(std::string  daily_max_sale_price)
{
	this->daily_max_sale_price = daily_max_sale_price;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getCumulativeTradeVolumeEth()
{
	return cumulative_trade_volume_eth;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setCumulativeTradeVolumeEth(std::string  cumulative_trade_volume_eth)
{
	this->cumulative_trade_volume_eth = cumulative_trade_volume_eth;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getDailyTradeVolumeEth()
{
	return daily_trade_volume_eth;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setDailyTradeVolumeEth(std::string  daily_trade_volume_eth)
{
	this->daily_trade_volume_eth = daily_trade_volume_eth;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getMarketplaceRevenueEth()
{
	return marketplace_revenue_eth;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setMarketplaceRevenueEth(std::string  marketplace_revenue_eth)
{
	this->marketplace_revenue_eth = marketplace_revenue_eth;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getCreatorRevenueEth()
{
	return creator_revenue_eth;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setCreatorRevenueEth(std::string  creator_revenue_eth)
{
	this->creator_revenue_eth = creator_revenue_eth;
}

std::string
CRYPTOPUNKS.CollectionDailySnapshotDTO::getTotalRevenueEth()
{
	return total_revenue_eth;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setTotalRevenueEth(std::string  total_revenue_eth)
{
	this->total_revenue_eth = total_revenue_eth;
}

int
CRYPTOPUNKS.CollectionDailySnapshotDTO::getTradeCount()
{
	return trade_count;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setTradeCount(int  trade_count)
{
	this->trade_count = trade_count;
}

int
CRYPTOPUNKS.CollectionDailySnapshotDTO::getDailyTradedItemCount()
{
	return daily_traded_item_count;
}

void
CRYPTOPUNKS.CollectionDailySnapshotDTO::setDailyTradedItemCount(int  daily_traded_item_count)
{
	this->daily_traded_item_count = daily_traded_item_count;
}


