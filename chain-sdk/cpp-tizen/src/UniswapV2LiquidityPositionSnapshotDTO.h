/*
 * UniswapV2.LiquidityPositionSnapshotDTO.h
 *
 * This entity is used to store data about a user&#39;s liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 */

#ifndef _UniswapV2.LiquidityPositionSnapshotDTO_H_
#define _UniswapV2.LiquidityPositionSnapshotDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 *
 *  \ingroup Models
 *
 */

class UniswapV2.LiquidityPositionSnapshotDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	UniswapV2.LiquidityPositionSnapshotDTO();
	UniswapV2.LiquidityPositionSnapshotDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UniswapV2.LiquidityPositionSnapshotDTO();

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
	/*! \brief Get Number of block in which entity was recorded.
	 */
	long long getBlockNumber();

	/*! \brief Set Number of block in which entity was recorded.
	 */
	void setBlockNumber(long long  block_number);
	/*! \brief Get Identifier, format: (pair address)-(user address)
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (pair address)-(user address)
	 */
	void setId(std::string  id);
	/*! \brief Get Reference to LP identifier.
	 */
	std::string getLiquidityPosition();

	/*! \brief Set Reference to LP identifier.
	 */
	void setLiquidityPosition(std::string  liquidity_position);
	/*! \brief Get Creation time.
	 */
	int getTimestamp();

	/*! \brief Set Creation time.
	 */
	void setTimestamp(int  timestamp);
	/*! \brief Get Number of block in which LP snapshot was recorded.
	 */
	int getBlock();

	/*! \brief Set Number of block in which LP snapshot was recorded.
	 */
	void setBlock(int  block);
	/*! \brief Get Reference to user.
	 */
	std::string getUser();

	/*! \brief Set Reference to user.
	 */
	void setUser(std::string  user);
	/*! \brief Get Reference to the pair liquidity is being provided on.
	 */
	std::string getPair();

	/*! \brief Set Reference to the pair liquidity is being provided on.
	 */
	void setPair(std::string  pair);
	/*! \brief Get Snapshot of token0 price.
	 */
	std::string getToken0PriceUsd();

	/*! \brief Set Snapshot of token0 price.
	 */
	void setToken0PriceUsd(std::string  token_0_price_usd);
	/*! \brief Get Snapshot of token0 price.
	 */
	std::string getToken1PriceUsd();

	/*! \brief Set Snapshot of token0 price.
	 */
	void setToken1PriceUsd(std::string  token_1_price_usd);
	/*! \brief Get Snapshot of pair token0 reserves.
	 */
	std::string getReserve0();

	/*! \brief Set Snapshot of pair token0 reserves.
	 */
	void setReserve0(std::string  reserve_0);
	/*! \brief Get Snapshot of pair token1 reserves.
	 */
	std::string getReserve1();

	/*! \brief Set Snapshot of pair token1 reserves.
	 */
	void setReserve1(std::string  reserve_1);
	/*! \brief Get Snapshot of pair reserves in USD.
	 */
	std::string getReserveUsd();

	/*! \brief Set Snapshot of pair reserves in USD.
	 */
	void setReserveUsd(std::string  reserve_usd);
	/*! \brief Get Snapshot of pool token supply.
	 */
	std::string getLiquidityTokenTotalSupply();

	/*! \brief Set Snapshot of pool token supply.
	 */
	void setLiquidityTokenTotalSupply(std::string  liquidity_token_total_supply);
	/*! \brief Get Snapshot of users pool token balance.
	 */
	std::string getLiquidityTokenBalance();

	/*! \brief Set Snapshot of users pool token balance.
	 */
	void setLiquidityTokenBalance(std::string  liquidity_token_balance);
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

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	std::string id;
	std::string liquidity_position;
	int timestamp;
	int block;
	std::string user;
	std::string pair;
	std::string token_0_price_usd;
	std::string token_1_price_usd;
	std::string reserve_0;
	std::string reserve_1;
	std::string reserve_usd;
	std::string liquidity_token_total_supply;
	std::string liquidity_token_balance;
	long long vid;
	std::string block_range;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UniswapV2.LiquidityPositionSnapshotDTO_H_ */
