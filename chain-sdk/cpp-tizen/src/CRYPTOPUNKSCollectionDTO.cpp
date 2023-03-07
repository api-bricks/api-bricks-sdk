#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CRYPTOPUNKS.CollectionDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CRYPTOPUNKS.CollectionDTO::CRYPTOPUNKS.CollectionDTO()
{
	//__init();
}

CRYPTOPUNKS.CollectionDTO::~CRYPTOPUNKS.CollectionDTO()
{
	//__cleanup();
}

void
CRYPTOPUNKS.CollectionDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//vid = long(0);
	//block_range = std::string();
	//id = std::string();
	//name = std::string();
	//symbol = std::string();
	//total_supply = std::string();
	//royalty_fee = std::string();
	//cumulative_trade_volume_eth = std::string();
	//marketplace_revenue_eth = std::string();
	//creator_revenue_eth = std::string();
	//total_revenue_eth = std::string();
	//trade_count = int(0);
	//buyer_count = int(0);
	//seller_count = int(0);
}

void
CRYPTOPUNKS.CollectionDTO::__cleanup()
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
	//if(symbol != NULL) {
	//
	//delete symbol;
	//symbol = NULL;
	//}
	//if(total_supply != NULL) {
	//
	//delete total_supply;
	//total_supply = NULL;
	//}
	//if(royalty_fee != NULL) {
	//
	//delete royalty_fee;
	//royalty_fee = NULL;
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
	//if(buyer_count != NULL) {
	//
	//delete buyer_count;
	//buyer_count = NULL;
	//}
	//if(seller_count != NULL) {
	//
	//delete seller_count;
	//seller_count = NULL;
	//}
	//
}

void
CRYPTOPUNKS.CollectionDTO::fromJson(char* jsonStr)
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
	const gchar *symbolKey = "symbol";
	node = json_object_get_member(pJsonObject, symbolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_supplyKey = "total_supply";
	node = json_object_get_member(pJsonObject, total_supplyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_supply, node, "std::string", "");
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
	const gchar *buyer_countKey = "buyer_count";
	node = json_object_get_member(pJsonObject, buyer_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&buyer_count, node, "int", "");
		} else {
			
		}
	}
	const gchar *seller_countKey = "seller_count";
	node = json_object_get_member(pJsonObject, seller_countKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&seller_count, node, "int", "");
		} else {
			
		}
	}
}

CRYPTOPUNKS.CollectionDTO::CRYPTOPUNKS.CollectionDTO(char* json)
{
	this->fromJson(json);
}

char*
CRYPTOPUNKS.CollectionDTO::toJson()
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
		std::string obj = getSymbol();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbolKey = "symbol";
	json_object_set_member(pJsonObject, symbolKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalSupply();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_supplyKey = "total_supply";
	json_object_set_member(pJsonObject, total_supplyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRoyaltyFee();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *royalty_feeKey = "royalty_fee";
	json_object_set_member(pJsonObject, royalty_feeKey, node);
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
		int obj = getBuyerCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *buyer_countKey = "buyer_count";
	json_object_set_member(pJsonObject, buyer_countKey, node);
	if (isprimitive("int")) {
		int obj = getSellerCount();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *seller_countKey = "seller_count";
	json_object_set_member(pJsonObject, seller_countKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
CRYPTOPUNKS.CollectionDTO::getEntryTime()
{
	return entry_time;
}

void
CRYPTOPUNKS.CollectionDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
CRYPTOPUNKS.CollectionDTO::getRecvTime()
{
	return recv_time;
}

void
CRYPTOPUNKS.CollectionDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
CRYPTOPUNKS.CollectionDTO::getBlockNumber()
{
	return block_number;
}

void
CRYPTOPUNKS.CollectionDTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

long long
CRYPTOPUNKS.CollectionDTO::getVid()
{
	return vid;
}

void
CRYPTOPUNKS.CollectionDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
CRYPTOPUNKS.CollectionDTO::getBlockRange()
{
	return block_range;
}

void
CRYPTOPUNKS.CollectionDTO::setBlockRange(std::string  block_range)
{
	this->block_range = block_range;
}

std::string
CRYPTOPUNKS.CollectionDTO::getId()
{
	return id;
}

void
CRYPTOPUNKS.CollectionDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
CRYPTOPUNKS.CollectionDTO::getName()
{
	return name;
}

void
CRYPTOPUNKS.CollectionDTO::setName(std::string  name)
{
	this->name = name;
}

std::string
CRYPTOPUNKS.CollectionDTO::getSymbol()
{
	return symbol;
}

void
CRYPTOPUNKS.CollectionDTO::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

std::string
CRYPTOPUNKS.CollectionDTO::getTotalSupply()
{
	return total_supply;
}

void
CRYPTOPUNKS.CollectionDTO::setTotalSupply(std::string  total_supply)
{
	this->total_supply = total_supply;
}

std::string
CRYPTOPUNKS.CollectionDTO::getRoyaltyFee()
{
	return royalty_fee;
}

void
CRYPTOPUNKS.CollectionDTO::setRoyaltyFee(std::string  royalty_fee)
{
	this->royalty_fee = royalty_fee;
}

std::string
CRYPTOPUNKS.CollectionDTO::getCumulativeTradeVolumeEth()
{
	return cumulative_trade_volume_eth;
}

void
CRYPTOPUNKS.CollectionDTO::setCumulativeTradeVolumeEth(std::string  cumulative_trade_volume_eth)
{
	this->cumulative_trade_volume_eth = cumulative_trade_volume_eth;
}

std::string
CRYPTOPUNKS.CollectionDTO::getMarketplaceRevenueEth()
{
	return marketplace_revenue_eth;
}

void
CRYPTOPUNKS.CollectionDTO::setMarketplaceRevenueEth(std::string  marketplace_revenue_eth)
{
	this->marketplace_revenue_eth = marketplace_revenue_eth;
}

std::string
CRYPTOPUNKS.CollectionDTO::getCreatorRevenueEth()
{
	return creator_revenue_eth;
}

void
CRYPTOPUNKS.CollectionDTO::setCreatorRevenueEth(std::string  creator_revenue_eth)
{
	this->creator_revenue_eth = creator_revenue_eth;
}

std::string
CRYPTOPUNKS.CollectionDTO::getTotalRevenueEth()
{
	return total_revenue_eth;
}

void
CRYPTOPUNKS.CollectionDTO::setTotalRevenueEth(std::string  total_revenue_eth)
{
	this->total_revenue_eth = total_revenue_eth;
}

int
CRYPTOPUNKS.CollectionDTO::getTradeCount()
{
	return trade_count;
}

void
CRYPTOPUNKS.CollectionDTO::setTradeCount(int  trade_count)
{
	this->trade_count = trade_count;
}

int
CRYPTOPUNKS.CollectionDTO::getBuyerCount()
{
	return buyer_count;
}

void
CRYPTOPUNKS.CollectionDTO::setBuyerCount(int  buyer_count)
{
	this->buyer_count = buyer_count;
}

int
CRYPTOPUNKS.CollectionDTO::getSellerCount()
{
	return seller_count;
}

void
CRYPTOPUNKS.CollectionDTO::setSellerCount(int  seller_count)
{
	this->seller_count = seller_count;
}


