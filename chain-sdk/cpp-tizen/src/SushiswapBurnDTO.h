/*
 * Sushiswap.BurnDTO.h
 *
 * Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 */

#ifndef _Sushiswap.BurnDTO_H_
#define _Sushiswap.BurnDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 *
 *  \ingroup Models
 *
 */

class Sushiswap.BurnDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Sushiswap.BurnDTO();
	Sushiswap.BurnDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Sushiswap.BurnDTO();

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
	/*! \brief Get Identifier, format: (transaction id):(transaction.burns.length).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (transaction id):(transaction.burns.length).
	 */
	void setId(std::string  id);
	/*! \brief Get Reference to the transaction Burn was included in.
	 */
	std::string getTransaction();

	/*! \brief Set Reference to the transaction Burn was included in.
	 */
	void setTransaction(std::string  transaction);
	/*! \brief Get Timestamp of Burn, used to sort recent liquidity removals.
	 */
	std::string getTimestamp();

	/*! \brief Set Timestamp of Burn, used to sort recent liquidity removals.
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Reference to pair.
	 */
	std::string getPair();

	/*! \brief Set Reference to pair.
	 */
	void setPair(std::string  pair);
	/*! \brief Get Amount of liquidity tokens burned.
	 */
	std::string getLiquidity();

	/*! \brief Set Amount of liquidity tokens burned.
	 */
	void setLiquidity(std::string  liquidity);
	/*! \brief Get Address that initiated the liquidity removal.
	 */
	std::string getSender();

	/*! \brief Set Address that initiated the liquidity removal.
	 */
	void setSender(std::string  sender);
	/*! \brief Get Amount of token0 removed.
	 */
	std::string getAmount0();

	/*! \brief Set Amount of token0 removed.
	 */
	void setAmount0(std::string  amount_0);
	/*! \brief Get Amount of token1 removed.
	 */
	std::string getAmount1();

	/*! \brief Set Amount of token1 removed.
	 */
	void setAmount1(std::string  amount_1);
	/*! \brief Get Recipient of tokens.
	 */
	std::string getTo();

	/*! \brief Set Recipient of tokens.
	 */
	void setTo(std::string  to);
	/*! \brief Get Index in the transaction event was emitted.
	 */
	std::string getLogIndex();

	/*! \brief Set Index in the transaction event was emitted.
	 */
	void setLogIndex(std::string  log_index);
	/*! \brief Get Derived amount based on available prices of tokens.
	 */
	std::string getAmountUsd();

	/*! \brief Set Derived amount based on available prices of tokens.
	 */
	void setAmountUsd(std::string  amount_usd);
	/*! \brief Get 
	 */
	bool getComplete();

	/*! \brief Set 
	 */
	void setComplete(bool  complete);
	/*! \brief Get Address of fee recipient (if fee is on).
	 */
	std::string getFeeTo();

	/*! \brief Set Address of fee recipient (if fee is on).
	 */
	void setFeeTo(std::string  fee_to);
	/*! \brief Get Amount of tokens sent to fee recipient (if fee is on).
	 */
	std::string getFeeLiquidity();

	/*! \brief Set Amount of tokens sent to fee recipient (if fee is on).
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
	std::string liquidity;
	std::string sender;
	std::string amount_0;
	std::string amount_1;
	std::string to;
	std::string log_index;
	std::string amount_usd;
	bool complete;
	std::string fee_to;
	std::string fee_liquidity;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Sushiswap.BurnDTO_H_ */
