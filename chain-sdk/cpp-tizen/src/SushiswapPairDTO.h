/*
 * Sushiswap.PairDTO.h
 *
 * Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 */

#ifndef _Sushiswap.PairDTO_H_
#define _Sushiswap.PairDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 *
 *  \ingroup Models
 *
 */

class Sushiswap.PairDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Sushiswap.PairDTO();
	Sushiswap.PairDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Sushiswap.PairDTO();

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
	/*! \brief Get Pair contract address.
	 */
	std::string getId();

	/*! \brief Set Pair contract address.
	 */
	void setId(std::string  id);
	/*! \brief Get Factory contract address.
	 */
	std::string getFactory();

	/*! \brief Set Factory contract address.
	 */
	void setFactory(std::string  factory);
	/*! \brief Get Friendly name, format: (token0 name)-(token1 name)
	 */
	std::string getName();

	/*! \brief Set Friendly name, format: (token0 name)-(token1 name)
	 */
	void setName(std::string  name);
	/*! \brief Get Reference to token0 as stored in pair contract.
	 */
	std::string getToken0();

	/*! \brief Set Reference to token0 as stored in pair contract.
	 */
	void setToken0(std::string  token_0);
	/*! \brief Get Reference to token0 as stored in pair contract.
	 */
	std::string getToken1();

	/*! \brief Set Reference to token0 as stored in pair contract.
	 */
	void setToken1(std::string  token_1);
	/*! \brief Get Reserve of token0.
	 */
	std::string getReserve0();

	/*! \brief Set Reserve of token0.
	 */
	void setReserve0(std::string  reserve_0);
	/*! \brief Get Reserve of token1.
	 */
	std::string getReserve1();

	/*! \brief Set Reserve of token1.
	 */
	void setReserve1(std::string  reserve_1);
	/*! \brief Get Total supply of liquidity token distributed to LPs.
	 */
	std::string getTotalSupply();

	/*! \brief Set Total supply of liquidity token distributed to LPs.
	 */
	void setTotalSupply(std::string  total_supply);
	/*! \brief Get Total liquidity in pair stored as an amount of ETH.
	 */
	std::string getReserveEth();

	/*! \brief Set Total liquidity in pair stored as an amount of ETH.
	 */
	void setReserveEth(std::string  reserve_eth);
	/*! \brief Get Total liquidity amount in pair stored as an amount of USD.
	 */
	std::string getReserveUsd();

	/*! \brief Set Total liquidity amount in pair stored as an amount of USD.
	 */
	void setReserveUsd(std::string  reserve_usd);
	/*! \brief Get Total liquidity with only tracked amount.
	 */
	std::string getTrackedReserveEth();

	/*! \brief Set Total liquidity with only tracked amount.
	 */
	void setTrackedReserveEth(std::string  tracked_reserve_eth);
	/*! \brief Get Token0 per token1.
	 */
	std::string getToken0Price();

	/*! \brief Set Token0 per token1.
	 */
	void setToken0Price(std::string  token_0_price);
	/*! \brief Get Token1 per token0.
	 */
	std::string getToken1Price();

	/*! \brief Set Token1 per token0.
	 */
	void setToken1Price(std::string  token_1_price);
	/*! \brief Get Amount of token0 swapped on this pair.
	 */
	std::string getVolumeToken0();

	/*! \brief Set Amount of token0 swapped on this pair.
	 */
	void setVolumeToken0(std::string  volume_token_0);
	/*! \brief Get Amount of token1 swapped on this pair.
	 */
	std::string getVolumeToken1();

	/*! \brief Set Amount of token1 swapped on this pair.
	 */
	void setVolumeToken1(std::string  volume_token_1);
	/*! \brief Get Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
	 */
	std::string getVolumeUsd();

	/*! \brief Set Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
	 */
	void setVolumeUsd(std::string  volume_usd);
	/*! \brief Get Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
	 */
	std::string getUntrackedVolumeUsd();

	/*! \brief Set Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
	 */
	void setUntrackedVolumeUsd(std::string  untracked_volume_usd);
	/*! \brief Get All time amount of transactions on this pair.
	 */
	std::string getTxCount();

	/*! \brief Set All time amount of transactions on this pair.
	 */
	void setTxCount(std::string  tx_count);
	/*! \brief Get Total number of LPs.
	 */
	std::string getLiquidityProviderCount();

	/*! \brief Set Total number of LPs.
	 */
	void setLiquidityProviderCount(std::string  liquidity_provider_count);
	/*! \brief Get Timestamp.
	 */
	std::string getTimestamp();

	/*! \brief Set Timestamp.
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Block number in which pair information was created in.
	 */
	std::string getBlock();

	/*! \brief Set Block number in which pair information was created in.
	 */
	void setBlock(std::string  block);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);
	/*! \brief Get 
	 */
	double getEvaluatedAsk();

	/*! \brief Set 
	 */
	void setEvaluatedAsk(double  evaluated_ask);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	std::string id;
	std::string factory;
	std::string name;
	std::string token_0;
	std::string token_1;
	std::string reserve_0;
	std::string reserve_1;
	std::string total_supply;
	std::string reserve_eth;
	std::string reserve_usd;
	std::string tracked_reserve_eth;
	std::string token_0_price;
	std::string token_1_price;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string untracked_volume_usd;
	std::string tx_count;
	std::string liquidity_provider_count;
	std::string timestamp;
	std::string block;
	long long vid;
	double evaluated_ask;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Sushiswap.PairDTO_H_ */
