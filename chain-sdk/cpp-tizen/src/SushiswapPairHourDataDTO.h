/*
 * Sushiswap.PairHourDataDTO.h
 *
 * Tracks pair data across each hour.
 */

#ifndef _Sushiswap.PairHourDataDTO_H_
#define _Sushiswap.PairHourDataDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Tracks pair data across each hour.
 *
 *  \ingroup Models
 *
 */

class Sushiswap.PairHourDataDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Sushiswap.PairHourDataDTO();
	Sushiswap.PairHourDataDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Sushiswap.PairHourDataDTO();

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
	/*! \brief Get Identifier, format: (pair id)-(hour start timestamp).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (pair id)-(hour start timestamp).
	 */
	void setId(std::string  id);
	/*! \brief Get Hour start timestamp.
	 */
	int getDate();

	/*! \brief Set Hour start timestamp.
	 */
	void setDate(int  date);
	/*! \brief Get Reference to pair.
	 */
	std::string getPair();

	/*! \brief Set Reference to pair.
	 */
	void setPair(std::string  pair);
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
	/*! \brief Get Reserve of token0 plus token1 stored as a derived USD amount.
	 */
	std::string getReserveUsd();

	/*! \brief Set Reserve of token0 plus token1 stored as a derived USD amount.
	 */
	void setReserveUsd(std::string  reserve_usd);
	/*! \brief Get Total amount of token0 swapped throughout hour.
	 */
	std::string getVolumeToken0();

	/*! \brief Set Total amount of token0 swapped throughout hour.
	 */
	void setVolumeToken0(std::string  volume_token_0);
	/*! \brief Get Total amount of token1 swapped throughout hour.
	 */
	std::string getVolumeToken1();

	/*! \brief Set Total amount of token1 swapped throughout hour.
	 */
	void setVolumeToken1(std::string  volume_token_1);
	/*! \brief Get Total volume within pair throughout hour.
	 */
	std::string getVolumeUsd();

	/*! \brief Set Total volume within pair throughout hour.
	 */
	void setVolumeUsd(std::string  volume_usd);
	/*! \brief Get Amount of transactions on pair throughout hour.
	 */
	std::string getTxCount();

	/*! \brief Set Amount of transactions on pair throughout hour.
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
	std::string reserve_0;
	std::string reserve_1;
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

#endif /* _Sushiswap.PairHourDataDTO_H_ */
