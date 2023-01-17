/*
 * Dex.DepositDTO.h
 *
 * Deposit of an user.
 */

#ifndef _Dex.DepositDTO_H_
#define _Dex.DepositDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Deposit of an user.
 *
 *  \ingroup Models
 *
 */

class Dex.DepositDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Dex.DepositDTO();
	Dex.DepositDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Dex.DepositDTO();

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
	/*! \brief Get Identifier, format: (transaction hash)-(token id).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (transaction hash)-(token id).
	 */
	void setId(std::string  id);
	/*! \brief Get User address.
	 */
	std::string getUser();

	/*! \brief Set User address.
	 */
	void setUser(std::string  user);
	/*! \brief Get Token address.
	 */
	std::string getTokenAddress();

	/*! \brief Set Token address.
	 */
	void setTokenAddress(std::string  token_address);
	/*! \brief Get Amount of deposit.
	 */
	std::string getAmount();

	/*! \brief Set Amount of deposit.
	 */
	void setAmount(std::string  amount);
	/*! \brief Get Identifier (numerical).
	 */
	std::string getBatchId();

	/*! \brief Set Identifier (numerical).
	 */
	void setBatchId(std::string  batch_id);
	/*! \brief Get Create epoch.
	 */
	std::string getCreateEpoch();

	/*! \brief Set Create epoch.
	 */
	void setCreateEpoch(std::string  create_epoch);
	/*! \brief Get Transaction hash.
	 */
	std::string getTxHash();

	/*! \brief Set Transaction hash.
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
	std::string batch_id;
	std::string create_epoch;
	std::string tx_hash;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Dex.DepositDTO_H_ */
