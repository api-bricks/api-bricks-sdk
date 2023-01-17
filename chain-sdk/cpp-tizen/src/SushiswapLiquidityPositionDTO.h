/*
 * Sushiswap.LiquidityPositionDTO.h
 *
 * 
 */

#ifndef _Sushiswap.LiquidityPositionDTO_H_
#define _Sushiswap.LiquidityPositionDTO_H_


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

class Sushiswap.LiquidityPositionDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Sushiswap.LiquidityPositionDTO();
	Sushiswap.LiquidityPositionDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Sushiswap.LiquidityPositionDTO();

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
	/*! \brief Get Identifier, format: (pair address)-(user address)
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (pair address)-(user address)
	 */
	void setId(std::string  id);
	/*! \brief Get User address.
	 */
	std::string getUser();

	/*! \brief Set User address.
	 */
	void setUser(std::string  user);
	/*! \brief Get Pair address.
	 */
	std::string getPair();

	/*! \brief Set Pair address.
	 */
	void setPair(std::string  pair);
	/*! \brief Get Amount of LP tokens minted for this position.
	 */
	std::string getLiquidityTokenBalance();

	/*! \brief Set Amount of LP tokens minted for this position.
	 */
	void setLiquidityTokenBalance(std::string  liquidity_token_balance);
	/*! \brief Get Block number at which position was created.
	 */
	int getBlock();

	/*! \brief Set Block number at which position was created.
	 */
	void setBlock(int  block);
	/*! \brief Get Creation time.
	 */
	int getTimestamp();

	/*! \brief Set Creation time.
	 */
	void setTimestamp(int  timestamp);
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
	std::string pair;
	std::string liquidity_token_balance;
	int block;
	int timestamp;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Sushiswap.LiquidityPositionDTO_H_ */
