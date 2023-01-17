/*
 * Cow.TradeDTO.h
 *
 * Trade entity.
 */

#ifndef _Cow.TradeDTO_H_
#define _Cow.TradeDTO_H_


#include <string>
#include "Transactions.ETradeAggressiveSide.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Trade entity.
 *
 *  \ingroup Models
 *
 */

class Cow.TradeDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Cow.TradeDTO();
	Cow.TradeDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Cow.TradeDTO();

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
	/*! \brief Get Identifier, format: (order id)|(transaction hash)|(event index).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (order id)|(transaction hash)|(event index).
	 */
	void setId(std::string  id);
	/*! \brief Get Block's timestamp.
	 */
	std::string getTimestamp();

	/*! \brief Set Block's timestamp.
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Transaction's gas price.
	 */
	std::string getGasPrice();

	/*! \brief Set Transaction's gas price.
	 */
	void setGasPrice(std::string  gas_price);
	/*! \brief Get Transaction's gas limit.
	 */
	std::string getGasLimit();

	/*! \brief Set Transaction's gas limit.
	 */
	void setGasLimit(std::string  gas_limit);
	/*! \brief Get Trade's fee amount.
	 */
	std::string getFeeAmount();

	/*! \brief Set Trade's fee amount.
	 */
	void setFeeAmount(std::string  fee_amount);
	/*! \brief Get Trade event transaction hash.
	 */
	std::string getTxHash();

	/*! \brief Set Trade event transaction hash.
	 */
	void setTxHash(std::string  tx_hash);
	/*! \brief Get Reference to settlement.
	 */
	std::string getSettlement();

	/*! \brief Set Reference to settlement.
	 */
	void setSettlement(std::string  settlement);
	/*! \brief Get Buy amount.
	 */
	std::string getBuyAmount();

	/*! \brief Set Buy amount.
	 */
	void setBuyAmount(std::string  buy_amount);
	/*! \brief Get Sell amount.
	 */
	std::string getSellAmount();

	/*! \brief Set Sell amount.
	 */
	void setSellAmount(std::string  sell_amount);
	/*! \brief Get Address of token that is sold.
	 */
	std::string getSellToken();

	/*! \brief Set Address of token that is sold.
	 */
	void setSellToken(std::string  sell_token);
	/*! \brief Get Address of token that is bought.
	 */
	std::string getBuyToken();

	/*! \brief Set Address of token that is bought.
	 */
	void setBuyToken(std::string  buy_token);
	/*! \brief Get Reference to order.
	 */
	std::string getOrder();

	/*! \brief Set Reference to order.
	 */
	void setOrder(std::string  order);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);
	/*! \brief Get 
	 */
	std::string getPoolId();

	/*! \brief Set 
	 */
	void setPoolId(std::string  pool_id);
	/*! \brief Get 
	 */
	std::string getTransactionId();

	/*! \brief Set 
	 */
	void setTransactionId(std::string  transaction_id);
	/*! \brief Get 
	 */
	double getEvaluatedPrice();

	/*! \brief Set 
	 */
	void setEvaluatedPrice(double  evaluated_price);
	/*! \brief Get 
	 */
	double getEvaluatedAmount();

	/*! \brief Set 
	 */
	void setEvaluatedAmount(double  evaluated_amount);
	/*! \brief Get 
	 */
	Transactions.ETradeAggressiveSide getEvaluatedAggressor();

	/*! \brief Set 
	 */
	void setEvaluatedAggressor(Transactions.ETradeAggressiveSide  evaluated_aggressor);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	std::string id;
	std::string timestamp;
	std::string gas_price;
	std::string gas_limit;
	std::string fee_amount;
	std::string tx_hash;
	std::string settlement;
	std::string buy_amount;
	std::string sell_amount;
	std::string sell_token;
	std::string buy_token;
	std::string order;
	long long vid;
	std::string pool_id;
	std::string transaction_id;
	double evaluated_price;
	double evaluated_amount;
	Transactions.ETradeAggressiveSide evaluated_aggressor;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Cow.TradeDTO_H_ */
