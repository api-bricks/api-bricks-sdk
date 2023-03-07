/*
 * CRYPTOPUNKS.BidDTO.h
 *
 * 
 */

#ifndef _CRYPTOPUNKS.BidDTO_H_
#define _CRYPTOPUNKS.BidDTO_H_


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

class CRYPTOPUNKS.BidDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	CRYPTOPUNKS.BidDTO();
	CRYPTOPUNKS.BidDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CRYPTOPUNKS.BidDTO();

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
	std::string getTokensBid();

	/*! \brief Set 
	 */
	void setTokensBid(std::string  tokens_bid);
	/*! \brief Get 
	 */
	std::string getTokenId();

	/*! \brief Set 
	 */
	void setTokenId(std::string  token_id);
	/*! \brief Get 
	 */
	std::string getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get 
	 */
	std::string getBidder();

	/*! \brief Set 
	 */
	void setBidder(std::string  bidder);

private:
	std::string entry_time;
	std::string recv_time;
	std::string block_number;
	long long vid;
	std::string block_range;
	std::string id;
	std::string tokens_bid;
	std::string token_id;
	std::string timestamp;
	std::string bidder;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CRYPTOPUNKS.BidDTO_H_ */
