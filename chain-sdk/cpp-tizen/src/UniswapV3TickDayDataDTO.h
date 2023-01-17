/*
 * UniswapV3.TickDayDataDTO.h
 *
 * Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
 */

#ifndef _UniswapV3.TickDayDataDTO_H_
#define _UniswapV3.TickDayDataDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
 *
 *  \ingroup Models
 *
 */

class UniswapV3.TickDayDataDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	UniswapV3.TickDayDataDTO();
	UniswapV3.TickDayDataDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UniswapV3.TickDayDataDTO();

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
	/*! \brief Get Identifier, format: (pool address)-(tick index)-(timestamp).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (pool address)-(tick index)-(timestamp).
	 */
	void setId(std::string  id);
	/*! \brief Get Timestamp rounded to current day by dividing by 86400.
	 */
	int getDate();

	/*! \brief Set Timestamp rounded to current day by dividing by 86400.
	 */
	void setDate(int  date);
	/*! \brief Get Pointer to pool.
	 */
	std::string getPool();

	/*! \brief Set Pointer to pool.
	 */
	void setPool(std::string  pool);
	/*! \brief Get Pointer to tick.
	 */
	std::string getTick();

	/*! \brief Set Pointer to tick.
	 */
	void setTick(std::string  tick);
	/*! \brief Get Total liquidity pool has as tick lower or upper at end of period.
	 */
	std::string getLiquidityGross();

	/*! \brief Set Total liquidity pool has as tick lower or upper at end of period.
	 */
	void setLiquidityGross(std::string  liquidity_gross);
	/*! \brief Get How much liquidity changes when tick crossed at end of period.
	 */
	std::string getLiquidityNet();

	/*! \brief Set How much liquidity changes when tick crossed at end of period.
	 */
	void setLiquidityNet(std::string  liquidity_net);
	/*! \brief Get Hourly volume of token0 with this tick in range.
	 */
	std::string getVolumeToken0();

	/*! \brief Set Hourly volume of token0 with this tick in range.
	 */
	void setVolumeToken0(std::string  volume_token_0);
	/*! \brief Get Hourly volume of token1 with this tick in range.
	 */
	std::string getVolumeToken1();

	/*! \brief Set Hourly volume of token1 with this tick in range.
	 */
	void setVolumeToken1(std::string  volume_token_1);
	/*! \brief Get Hourly volume in derived USD with this tick in range.
	 */
	std::string getVolumeUsd();

	/*! \brief Set Hourly volume in derived USD with this tick in range.
	 */
	void setVolumeUsd(std::string  volume_usd);
	/*! \brief Get Fees in USD.
	 */
	std::string getFeesUsd();

	/*! \brief Set Fees in USD.
	 */
	void setFeesUsd(std::string  fees_usd);
	/*! \brief Get Variable needed for fee computation.
	 */
	std::string getFeeGrowthOutside0x128();

	/*! \brief Set Variable needed for fee computation.
	 */
	void setFeeGrowthOutside0x128(std::string  fee_growth_outside_0x128);
	/*! \brief Get Variable needed for fee computation.
	 */
	std::string getFeeGrowthOutside1x128();

	/*! \brief Set Variable needed for fee computation.
	 */
	void setFeeGrowthOutside1x128(std::string  fee_growth_outside_1x128);
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
	int date;
	std::string pool;
	std::string tick;
	std::string liquidity_gross;
	std::string liquidity_net;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string fees_usd;
	std::string fee_growth_outside_0x128;
	std::string fee_growth_outside_1x128;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UniswapV3.TickDayDataDTO_H_ */
