/*
 * Dex.WithdrawRequestDTO.h
 *
 * Withdraw request of an user
 */

#ifndef _Dex.WithdrawRequestDTO_H_
#define _Dex.WithdrawRequestDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Withdraw request of an user
 *
 *  \ingroup Models
 *
 */

class Dex.WithdrawRequestDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Dex.WithdrawRequestDTO();
	Dex.WithdrawRequestDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Dex.WithdrawRequestDTO();

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
	/*! \brief Get Identifier, format: (transaction hash)-(id).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (transaction hash)-(id).
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getUser();

	/*! \brief Set 
	 */
	void setUser(std::string  user);
	/*! \brief Get 
	 */
	std::string getTokenAddress();

	/*! \brief Set 
	 */
	void setTokenAddress(std::string  token_address);
	/*! \brief Get 
	 */
	std::string getAmount();

	/*! \brief Set 
	 */
	void setAmount(std::string  amount);
	/*! \brief Get 
	 */
	std::string getWithdrawableFromBatchId();

	/*! \brief Set 
	 */
	void setWithdrawableFromBatchId(std::string  withdrawable_from_batch_id);
	/*! \brief Get 
	 */
	std::string getCreateEpoch();

	/*! \brief Set 
	 */
	void setCreateEpoch(std::string  create_epoch);
	/*! \brief Get 
	 */
	std::string getCreateBatchId();

	/*! \brief Set 
	 */
	void setCreateBatchId(std::string  create_batch_id);
	/*! \brief Get 
	 */
	std::string getTxHash();

	/*! \brief Set 
	 */
	void setTxHash(std::string  tx_hash);
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
	std::string user;
	std::string token_address;
	std::string amount;
	std::string withdrawable_from_batch_id;
	std::string create_epoch;
	std::string create_batch_id;
	std::string tx_hash;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Dex.WithdrawRequestDTO_H_ */
