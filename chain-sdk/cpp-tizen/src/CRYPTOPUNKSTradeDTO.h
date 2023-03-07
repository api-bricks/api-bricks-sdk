/*
 * CRYPTOPUNKS.TradeDTO.h
 *
 * 
 */

#ifndef _CRYPTOPUNKS.TradeDTO_H_
#define _CRYPTOPUNKS.TradeDTO_H_


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

class CRYPTOPUNKS.TradeDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	CRYPTOPUNKS.TradeDTO();
	CRYPTOPUNKS.TradeDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CRYPTOPUNKS.TradeDTO();

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
	/*! \brief Get 
	 */
	std::string getBlockNumber();

	/*! \brief Set 
	 */
	void setBlockNumber(std::string  block_number);
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
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getTransactionHash();

	/*! \brief Set 
	 */
	void setTransactionHash(std::string  transaction_hash);
	/*! \brief Get 
	 */
	int getLogIndex();

	/*! \brief Set 
	 */
	void setLogIndex(int  log_index);
	/*! \brief Get 
	 */
	std::string getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get 
	 */
	bool getIsBundle();

	/*! \brief Set 
	 */
	void setIsBundle(bool  is_bundle);
	/*! \brief Get 
	 */
	std::string getCollection();

	/*! \brief Set 
	 */
	void setCollection(std::string  collection);
	/*! \brief Get 
	 */
	std::string getTokenId();

	/*! \brief Set 
	 */
	void setTokenId(std::string  token_id);
	/*! \brief Get 
	 */
	std::string getAmount();

	/*! \brief Set 
	 */
	void setAmount(std::string  amount);
	/*! \brief Get 
	 */
	std::string getPriceEth();

	/*! \brief Set 
	 */
	void setPriceEth(std::string  price_eth);
	/*! \brief Get 
	 */
	std::string getBuyer();

	/*! \brief Set 
	 */
	void setBuyer(std::string  buyer);
	/*! \brief Get 
	 */
	std::string getSeller();

	/*! \brief Set 
	 */
	void setSeller(std::string  seller);

private:
	std::string entry_time;
	std::string recv_time;
	std::string block_number;
	long long vid;
	std::string block_range;
	std::string id;
	std::string transaction_hash;
	int log_index;
	std::string timestamp;
	bool is_bundle;
	std::string collection;
	std::string token_id;
	std::string amount;
	std::string price_eth;
	std::string buyer;
	std::string seller;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CRYPTOPUNKS.TradeDTO_H_ */
