/*
 * UniswapV3.PoolHourDataDTO.h
 *
 * Hourly stats tracker for pool.
 */

#ifndef _UniswapV3.PoolHourDataDTO_H_
#define _UniswapV3.PoolHourDataDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Hourly stats tracker for pool.
 *
 *  \ingroup Models
 *
 */

class UniswapV3.PoolHourDataDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	UniswapV3.PoolHourDataDTO();
	UniswapV3.PoolHourDataDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UniswapV3.PoolHourDataDTO();

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
	/*! \brief Get Identifier, format: (pool address)-(day id)
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (pool address)-(day id)
	 */
	void setId(std::string  id);
	/*! \brief Get Unix timestamp for start of hour.
	 */
	int getPeriodStartUnix();

	/*! \brief Set Unix timestamp for start of hour.
	 */
	void setPeriodStartUnix(int  period_start_unix);
	/*! \brief Get Pointer to pool.
	 */
	std::string getPool();

	/*! \brief Set Pointer to pool.
	 */
	void setPool(std::string  pool);
	/*! \brief Get In range liquidity at end of period.
	 */
	std::string getLiquidity();

	/*! \brief Set In range liquidity at end of period.
	 */
	void setLiquidity(std::string  liquidity);
	/*! \brief Get Current price tracker at end of period.
	 */
	std::string getSqrtPrice();

	/*! \brief Set Current price tracker at end of period.
	 */
	void setSqrtPrice(std::string  sqrt_price);
	/*! \brief Get Price of token0 - derived from sqrtPrice.
	 */
	std::string getToken0Price();

	/*! \brief Set Price of token0 - derived from sqrtPrice.
	 */
	void setToken0Price(std::string  token_0_price);
	/*! \brief Get Price of token1 - derived from sqrtPrice.
	 */
	std::string getToken1Price();

	/*! \brief Set Price of token1 - derived from sqrtPrice.
	 */
	void setToken1Price(std::string  token_1_price);
	/*! \brief Get Current tick at end of period.
	 */
	std::string getTick();

	/*! \brief Set Current tick at end of period.
	 */
	void setTick(std::string  tick);
	/*! \brief Get Tracker for global fee growth.
	 */
	std::string getFeeGrowthGlobal0x128();

	/*! \brief Set Tracker for global fee growth.
	 */
	void setFeeGrowthGlobal0x128(std::string  fee_growth_global_0x128);
	/*! \brief Get Tracker for global fee growth.
	 */
	std::string getFeeGrowthGlobal1x128();

	/*! \brief Set Tracker for global fee growth.
	 */
	void setFeeGrowthGlobal1x128(std::string  fee_growth_global_1x128);
	/*! \brief Get Total value locked derived in USD at end of period.
	 */
	std::string getTvlUsd();

	/*! \brief Set Total value locked derived in USD at end of period.
	 */
	void setTvlUsd(std::string  tvl_usd);
	/*! \brief Get Volume in token0.
	 */
	std::string getVolumeToken0();

	/*! \brief Set Volume in token0.
	 */
	void setVolumeToken0(std::string  volume_token_0);
	/*! \brief Get Volume in token1.
	 */
	std::string getVolumeToken1();

	/*! \brief Set Volume in token1.
	 */
	void setVolumeToken1(std::string  volume_token_1);
	/*! \brief Get Volume in USD.
	 */
	std::string getVolumeUsd();

	/*! \brief Set Volume in USD.
	 */
	void setVolumeUsd(std::string  volume_usd);
	/*! \brief Get Fees in USD.
	 */
	std::string getFeesUsd();

	/*! \brief Set Fees in USD.
	 */
	void setFeesUsd(std::string  fees_usd);
	/*! \brief Get Number of transactions during period.
	 */
	std::string getTxCount();

	/*! \brief Set Number of transactions during period.
	 */
	void setTxCount(std::string  tx_count);
	/*! \brief Get Opening price of token0.
	 */
	std::string getOpen();

	/*! \brief Set Opening price of token0.
	 */
	void setOpen(std::string  open);
	/*! \brief Get High price of token0.
	 */
	std::string getHigh();

	/*! \brief Set High price of token0.
	 */
	void setHigh(std::string  high);
	/*! \brief Get Low price of token0.
	 */
	std::string getLow();

	/*! \brief Set Low price of token0.
	 */
	void setLow(std::string  low);
	/*! \brief Get Close price of token0.
	 */
	std::string getClose();

	/*! \brief Set Close price of token0.
	 */
	void setClose(std::string  close);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	std::string id;
	int period_start_unix;
	std::string pool;
	std::string liquidity;
	std::string sqrt_price;
	std::string token_0_price;
	std::string token_1_price;
	std::string tick;
	std::string fee_growth_global_0x128;
	std::string fee_growth_global_1x128;
	std::string tvl_usd;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string fees_usd;
	std::string tx_count;
	std::string open;
	std::string high;
	std::string low;
	std::string close;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UniswapV3.PoolHourDataDTO_H_ */
