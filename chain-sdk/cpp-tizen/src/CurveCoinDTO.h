/*
 * Curve.CoinDTO.h
 *
 * 
 */

#ifndef _Curve.CoinDTO_H_
#define _Curve.CoinDTO_H_


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

class Curve.CoinDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Curve.CoinDTO();
	Curve.CoinDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Curve.CoinDTO();

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
	/*! \brief Get Identifier, format: (pool_id)-(coin_index).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (pool_id)-(coin_index).
	 */
	void setId(std::string  id);
	/*! \brief Get Coin index.
	 */
	int getIndex();

	/*! \brief Set Coin index.
	 */
	void setIndex(int  index);
	/*! \brief Get 
	 */
	std::string getPool();

	/*! \brief Set 
	 */
	void setPool(std::string  pool);
	/*! \brief Get 
	 */
	std::string getToken();

	/*! \brief Set 
	 */
	void setToken(std::string  token);
	/*! \brief Get 
	 */
	std::string getUnderlying();

	/*! \brief Set 
	 */
	void setUnderlying(std::string  underlying);
	/*! \brief Get 
	 */
	std::string getBalance();

	/*! \brief Set 
	 */
	void setBalance(std::string  balance);
	/*! \brief Get Exchange rate between this coin and the associated underlying coin within the pool.
	 */
	std::string getRate();

	/*! \brief Set Exchange rate between this coin and the associated underlying coin within the pool.
	 */
	void setRate(std::string  rate);
	/*! \brief Get 
	 */
	std::string getUpdated();

	/*! \brief Set 
	 */
	void setUpdated(std::string  updated);
	/*! \brief Get 
	 */
	std::string getUpdatedAtBlock();

	/*! \brief Set 
	 */
	void setUpdatedAtBlock(std::string  updated_at_block);
	/*! \brief Get 
	 */
	std::string getUpdatedAtTransaction();

	/*! \brief Set 
	 */
	void setUpdatedAtTransaction(std::string  updated_at_transaction);
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
	int index;
	std::string pool;
	std::string token;
	std::string underlying;
	std::string balance;
	std::string rate;
	std::string updated;
	std::string updated_at_block;
	std::string updated_at_transaction;
	long long vid;
	std::string block_range;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Curve.CoinDTO_H_ */
