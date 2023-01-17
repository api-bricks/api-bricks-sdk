/*
 * Sushiswap.PairDayDataDTO.h
 *
 * Tracks pair data across each day.
 */

#ifndef _Sushiswap.PairDayDataDTO_H_
#define _Sushiswap.PairDayDataDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Tracks pair data across each day.
 *
 *  \ingroup Models
 *
 */

class Sushiswap.PairDayDataDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Sushiswap.PairDayDataDTO();
	Sushiswap.PairDayDataDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Sushiswap.PairDayDataDTO();

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
	/*! \brief Get Identifier, format: (pair id)-(day start timestamp).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (pair id)-(day start timestamp).
	 */
	void setId(std::string  id);
	/*! \brief Get Unix timestamp for start of day.
	 */
	int getDate();

	/*! \brief Set Unix timestamp for start of day.
	 */
	void setDate(int  date);
	/*! \brief Get Reference to pair.
	 */
	std::string getPair();

	/*! \brief Set Reference to pair.
	 */
	void setPair(std::string  pair);
	/*! \brief Get Reference to token0.
	 */
	std::string getToken0();

	/*! \brief Set Reference to token0.
	 */
	void setToken0(std::string  token_0);
	/*! \brief Get Reference to token1.
	 */
	std::string getToken1();

	/*! \brief Set Reference to token1.
	 */
	void setToken1(std::string  token_1);
	/*! \brief Get Reserve of token0 (updated during each transaction on pair).
	 */
	std::string getReserve0();

	/*! \brief Set Reserve of token0 (updated during each transaction on pair).
	 */
	void setReserve0(std::string  reserve_0);
	/*! \brief Get Reserve of token1 (updated during each transaction on pair).
	 */
	std::string getReserve1();

	/*! \brief Set Reserve of token1 (updated during each transaction on pair).
	 */
	void setReserve1(std::string  reserve_1);
	/*! \brief Get Total supply of liquidity token distributed to LPs.
	 */
	std::string getTotalSupply();

	/*! \brief Set Total supply of liquidity token distributed to LPs.
	 */
	void setTotalSupply(std::string  total_supply);
	/*! \brief Get Reserve of token0 plus token1 stored as a derived USD amount.
	 */
	std::string getReserveUsd();

	/*! \brief Set Reserve of token0 plus token1 stored as a derived USD amount.
	 */
	void setReserveUsd(std::string  reserve_usd);
	/*! \brief Get Total amount of token0 swapped throughout day.
	 */
	std::string getVolumeToken0();

	/*! \brief Set Total amount of token0 swapped throughout day.
	 */
	void setVolumeToken0(std::string  volume_token_0);
	/*! \brief Get Total amount of token1 swapped throughout day.
	 */
	std::string getVolumeToken1();

	/*! \brief Set Total amount of token1 swapped throughout day.
	 */
	void setVolumeToken1(std::string  volume_token_1);
	/*! \brief Get Total volume within pair throughout day.
	 */
	std::string getVolumeUsd();

	/*! \brief Set Total volume within pair throughout day.
	 */
	void setVolumeUsd(std::string  volume_usd);
	/*! \brief Get Amount of transactions on pair throughout day.
	 */
	std::string getTxCount();

	/*! \brief Set Amount of transactions on pair throughout day.
	 */
	void setTxCount(std::string  tx_count);
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
	std::string pair;
	std::string token_0;
	std::string token_1;
	std::string reserve_0;
	std::string reserve_1;
	std::string total_supply;
	std::string reserve_usd;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string tx_count;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Sushiswap.PairDayDataDTO_H_ */
