/*
 * CRYPTOPUNKS.MarketplaceDailySnapshotDTO.h
 *
 * 
 */

#ifndef _CRYPTOPUNKS.MarketplaceDailySnapshotDTO_H_
#define _CRYPTOPUNKS.MarketplaceDailySnapshotDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class CRYPTOPUNKS.MarketplaceDailySnapshotDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	CRYPTOPUNKS.MarketplaceDailySnapshotDTO();
	CRYPTOPUNKS.MarketplaceDailySnapshotDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CRYPTOPUNKS.MarketplaceDailySnapshotDTO();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getEntryTime();

	/*! \brief Set 
	 */
	void setEntryTime(std::string  entry_time);
	/*! \brief Get 
	 */
	std::string getRecvTime();

	/*! \brief Set 
	 */
	void setRecvTime(std::string  recv_time);
	/*! \brief Get 
	 */
	std::string getBlockNumber();

	/*! \brief Set 
	 */
	void setBlockNumber(std::string  block_number);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);
	/*! \brief Get 
	 */
	std::string getBlockRange();

	/*! \brief Set 
	 */
	void setBlockRange(std::string  block_range);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getMarketplace();

	/*! \brief Set 
	 */
	void setMarketplace(std::string  marketplace);
	/*! \brief Get 
	 */
	std::string getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get 
	 */
	int getCollectionCount();

	/*! \brief Set 
	 */
	void setCollectionCount(int  collection_count);
	/*! \brief Get 
	 */
	std::string getCumulativeTradeVolumeEth();

	/*! \brief Set 
	 */
	void setCumulativeTradeVolumeEth(std::string  cumulative_trade_volume_eth);
	/*! \brief Get 
	 */
	std::string getMarketplaceRevenueEth();

	/*! \brief Set 
	 */
	void setMarketplaceRevenueEth(std::string  marketplace_revenue_eth);
	/*! \brief Get 
	 */
	std::string getCreatorRevenueEth();

	/*! \brief Set 
	 */
	void setCreatorRevenueEth(std::string  creator_revenue_eth);
	/*! \brief Get 
	 */
	std::string getTotalRevenueEth();

	/*! \brief Set 
	 */
	void setTotalRevenueEth(std::string  total_revenue_eth);
	/*! \brief Get 
	 */
	int getTradeCount();

	/*! \brief Set 
	 */
	void setTradeCount(int  trade_count);
	/*! \brief Get 
	 */
	int getCumulativeUniqueTraders();

	/*! \brief Set 
	 */
	void setCumulativeUniqueTraders(int  cumulative_unique_traders);
	/*! \brief Get 
	 */
	int getDailyActiveTraders();

	/*! \brief Set 
	 */
	void setDailyActiveTraders(int  daily_active_traders);
	/*! \brief Get 
	 */
	int getDailyTradedCollectionCount();

	/*! \brief Set 
	 */
	void setDailyTradedCollectionCount(int  daily_traded_collection_count);
	/*! \brief Get 
	 */
	int getDailyTradedItemCount();

	/*! \brief Set 
	 */
	void setDailyTradedItemCount(int  daily_traded_item_count);

private:
	std::string entry_time;
	std::string recv_time;
	std::string block_number;
	long long vid;
	std::string block_range;
	std::string id;
	std::string marketplace;
	std::string timestamp;
	int collection_count;
	std::string cumulative_trade_volume_eth;
	std::string marketplace_revenue_eth;
	std::string creator_revenue_eth;
	std::string total_revenue_eth;
	int trade_count;
	int cumulative_unique_traders;
	int daily_active_traders;
	int daily_traded_collection_count;
	int daily_traded_item_count;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CRYPTOPUNKS.MarketplaceDailySnapshotDTO_H_ */
