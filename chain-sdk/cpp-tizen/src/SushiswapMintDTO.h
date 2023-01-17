/*
 * Sushiswap.MintDTO.h
 *
 * Mint entities are created for every emitted Mint event on the Sushiswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.
 */

#ifndef _Sushiswap.MintDTO_H_
#define _Sushiswap.MintDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Mint entities are created for every emitted Mint event on the Sushiswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.
 *
 *  \ingroup Models
 *
 */

class Sushiswap.MintDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Sushiswap.MintDTO();
	Sushiswap.MintDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Sushiswap.MintDTO();

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
	/*! \brief Get Identifier, format: (transaction hash)-(index in the transaction mint array).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (transaction hash)-(index in the transaction mint array).
	 */
	void setId(std::string  id);
	/*! \brief Get Reference to the transaction Mint was included in.
	 */
	std::string getTransaction();

	/*! \brief Set Reference to the transaction Mint was included in.
	 */
	void setTransaction(std::string  transaction);
	/*! \brief Get Timestamp of Mint, used to sort recent liquidity provisions.
	 */
	std::string getTimestamp();

	/*! \brief Set Timestamp of Mint, used to sort recent liquidity provisions.
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Reference to pair.
	 */
	std::string getPair();

	/*! \brief Set Reference to pair.
	 */
	void setPair(std::string  pair);
	/*! \brief Get Recipient of liquidity tokens.
	 */
	std::string getTo();

	/*! \brief Set Recipient of liquidity tokens.
	 */
	void setTo(std::string  to);
	/*! \brief Get Amount of liquidity tokens minted.
	 */
	std::string getLiquidity();

	/*! \brief Set Amount of liquidity tokens minted.
	 */
	void setLiquidity(std::string  liquidity);
	/*! \brief Get Address that initiated the liquidity provision.
	 */
	std::string getSender();

	/*! \brief Set Address that initiated the liquidity provision.
	 */
	void setSender(std::string  sender);
	/*! \brief Get Amount of token0 provided.
	 */
	std::string getAmount0();

	/*! \brief Set Amount of token0 provided.
	 */
	void setAmount0(std::string  amount_0);
	/*! \brief Get Amount of token1 provided.
	 */
	std::string getAmount1();

	/*! \brief Set Amount of token1 provided.
	 */
	void setAmount1(std::string  amount_1);
	/*! \brief Get Index in the transaction event was emitted.
	 */
	std::string getLogIndex();

	/*! \brief Set Index in the transaction event was emitted.
	 */
	void setLogIndex(std::string  log_index);
	/*! \brief Get Derived USD value of token0 amount plus token1 amount.
	 */
	std::string getAmountUsd();

	/*! \brief Set Derived USD value of token0 amount plus token1 amount.
	 */
	void setAmountUsd(std::string  amount_usd);
	/*! \brief Get Address of fee recipient (if fee is on).
	 */
	std::string getFeeTo();

	/*! \brief Set Address of fee recipient (if fee is on).
	 */
	void setFeeTo(std::string  fee_to);
	/*! \brief Get Amount of liquidity sent to fee recipient (if fee is on).
	 */
	std::string getFeeLiquidity();

	/*! \brief Set Amount of liquidity sent to fee recipient (if fee is on).
	 */
	void setFeeLiquidity(std::string  fee_liquidity);
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
	std::string transaction;
	std::string timestamp;
	std::string pair;
	std::string to;
	std::string liquidity;
	std::string sender;
	std::string amount_0;
	std::string amount_1;
	std::string log_index;
	std::string amount_usd;
	std::string fee_to;
	std::string fee_liquidity;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Sushiswap.MintDTO_H_ */
