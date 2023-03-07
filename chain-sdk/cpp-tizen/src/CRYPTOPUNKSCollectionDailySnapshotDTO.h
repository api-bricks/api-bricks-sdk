/*
 * CRYPTOPUNKS.CollectionDailySnapshotDTO.h
 *
 * 
 */

#ifndef _CRYPTOPUNKS.CollectionDailySnapshotDTO_H_
#define _CRYPTOPUNKS.CollectionDailySnapshotDTO_H_


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

class CRYPTOPUNKS.CollectionDailySnapshotDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	CRYPTOPUNKS.CollectionDailySnapshotDTO();
	CRYPTOPUNKS.CollectionDailySnapshotDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CRYPTOPUNKS.CollectionDailySnapshotDTO();

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
	std::string getCollection();

	/*! \brief Set 
	 */
	void setCollection(std::string  collection);
	/*! \brief Get 
	 */
	std::string getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get 
	 */
	std::string getRoyaltyFee();

	/*! \brief Set 
	 */
	void setRoyaltyFee(std::string  royalty_fee);
	/*! \brief Get 
	 */
	std::string getDailyMinSalePrice();

	/*! \brief Set 
	 */
	void setDailyMinSalePrice(std::string  daily_min_sale_price);
	/*! \brief Get 
	 */
	std::string getDailyMaxSalePrice();

	/*! \brief Set 
	 */
	void setDailyMaxSalePrice(std::string  daily_max_sale_price);
	/*! \brief Get 
	 */
	std::string getCumulativeTradeVolumeEth();

	/*! \brief Set 
	 */
	void setCumulativeTradeVolumeEth(std::string  cumulative_trade_volume_eth);
	/*! \brief Get 
	 */
	std::string getDailyTradeVolumeEth();

	/*! \brief Set 
	 */
	void setDailyTradeVolumeEth(std::string  daily_trade_volume_eth);
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
	std::string collection;
	std::string timestamp;
	std::string royalty_fee;
	std::string daily_min_sale_price;
	std::string daily_max_sale_price;
	std::string cumulative_trade_volume_eth;
	std::string daily_trade_volume_eth;
	std::string marketplace_revenue_eth;
	std::string creator_revenue_eth;
	std::string total_revenue_eth;
	int trade_count;
	int daily_traded_item_count;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CRYPTOPUNKS.CollectionDailySnapshotDTO_H_ */
