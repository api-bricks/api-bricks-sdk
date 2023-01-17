/*
 * Dex.OrderDTO.h
 *
 * Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.
 */

#ifndef _Dex.OrderDTO_H_
#define _Dex.OrderDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.
 *
 *  \ingroup Models
 *
 */

class Dex.OrderDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Dex.OrderDTO();
	Dex.OrderDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Dex.OrderDTO();

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
	/*! \brief Get Identifier, format: (owner address)-(order id)
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (owner address)-(order id)
	 */
	void setId(std::string  id);
	/*! \brief Get Reference to owner.
	 */
	std::string getOwner();

	/*! \brief Set Reference to owner.
	 */
	void setOwner(std::string  owner);
	/*! \brief Get Order id.
	 */
	int getOrderId();

	/*! \brief Set Order id.
	 */
	void setOrderId(int  order_id);
	/*! \brief Get Batch id from which order became valid.
	 */
	std::string getFromBatchId();

	/*! \brief Set Batch id from which order became valid.
	 */
	void setFromBatchId(std::string  from_batch_id);
	/*! \brief Get Start of epoch in which order was placed and became valid.
	 */
	std::string getFromEpoch();

	/*! \brief Set Start of epoch in which order was placed and became valid.
	 */
	void setFromEpoch(std::string  from_epoch);
	/*! \brief Get Batch id until which trade was still valid.
	 */
	std::string getUntilBatchId();

	/*! \brief Set Batch id until which trade was still valid.
	 */
	void setUntilBatchId(std::string  until_batch_id);
	/*! \brief Get End of epoch in which order was placed.
	 */
	std::string getUntilEpoch();

	/*! \brief Set End of epoch in which order was placed.
	 */
	void setUntilEpoch(std::string  until_epoch);
	/*! \brief Get Identifier of token that was bought.
	 */
	std::string getBuyToken();

	/*! \brief Set Identifier of token that was bought.
	 */
	void setBuyToken(std::string  buy_token);
	/*! \brief Get Identifier of token that was sold.
	 */
	std::string getSellToken();

	/*! \brief Set Identifier of token that was sold.
	 */
	void setSellToken(std::string  sell_token);
	/*! \brief Get Price enumerator.
	 */
	std::string getPriceNumerator();

	/*! \brief Set Price enumerator.
	 */
	void setPriceNumerator(std::string  price_numerator);
	/*! \brief Get Price denominator.
	 */
	std::string getPriceDenominator();

	/*! \brief Set Price denominator.
	 */
	void setPriceDenominator(std::string  price_denominator);
	/*! \brief Get Maximum sell amount.
	 */
	std::string getMaxSellAmount();

	/*! \brief Set Maximum sell amount.
	 */
	void setMaxSellAmount(std::string  max_sell_amount);
	/*! \brief Get Minimum receive amount.
	 */
	std::string getMinReceiveAmount();

	/*! \brief Set Minimum receive amount.
	 */
	void setMinReceiveAmount(std::string  min_receive_amount);
	/*! \brief Get Sold volume.
	 */
	std::string getSoldVolume();

	/*! \brief Set Sold volume.
	 */
	void setSoldVolume(std::string  sold_volume);
	/*! \brief Get Bought volume.
	 */
	std::string getBoughtVolume();

	/*! \brief Set Bought volume.
	 */
	void setBoughtVolume(std::string  bought_volume);
	/*! \brief Get Epoch in which order was created.
	 */
	std::string getCreateEpoch();

	/*! \brief Set Epoch in which order was created.
	 */
	void setCreateEpoch(std::string  create_epoch);
	/*! \brief Get Epoch in which order was cancelled.
	 */
	std::string getCancelEpoch();

	/*! \brief Set Epoch in which order was cancelled.
	 */
	void setCancelEpoch(std::string  cancel_epoch);
	/*! \brief Get Epoch in which order was deleted.
	 */
	std::string getDeleteEpoch();

	/*! \brief Set Epoch in which order was deleted.
	 */
	void setDeleteEpoch(std::string  delete_epoch);
	/*! \brief Get Transaction hash.
	 */
	std::string getTxHash();

	/*! \brief Set Transaction hash.
	 */
	void setTxHash(std::string  tx_hash);
	/*! \brief Get Event index within transaction.
	 */
	std::string getTxLogIndex();

	/*! \brief Set Event index within transaction.
	 */
	void setTxLogIndex(std::string  tx_log_index);
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
	std::string owner;
	int order_id;
	std::string from_batch_id;
	std::string from_epoch;
	std::string until_batch_id;
	std::string until_epoch;
	std::string buy_token;
	std::string sell_token;
	std::string price_numerator;
	std::string price_denominator;
	std::string max_sell_amount;
	std::string min_receive_amount;
	std::string sold_volume;
	std::string bought_volume;
	std::string create_epoch;
	std::string cancel_epoch;
	std::string delete_epoch;
	std::string tx_hash;
	std::string tx_log_index;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Dex.OrderDTO_H_ */
