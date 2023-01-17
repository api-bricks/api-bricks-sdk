/*
 * UniswapV3.PositionSnapshotDTO.h
 *
 * 
 */

#ifndef _UniswapV3.PositionSnapshotDTO_H_
#define _UniswapV3.PositionSnapshotDTO_H_


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

class UniswapV3.PositionSnapshotDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	UniswapV3.PositionSnapshotDTO();
	UniswapV3.PositionSnapshotDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UniswapV3.PositionSnapshotDTO();

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
	/*! \brief Get NFT token identifier, format: (NFT token id)#(block number).
	 */
	std::string getId();

	/*! \brief Set NFT token identifier, format: (NFT token id)#(block number).
	 */
	void setId(std::string  id);
	/*! \brief Get Owner of the NFT.
	 */
	std::string getOwner();

	/*! \brief Set Owner of the NFT.
	 */
	void setOwner(std::string  owner);
	/*! \brief Get Pool the position is within.
	 */
	std::string getPool();

	/*! \brief Set Pool the position is within.
	 */
	void setPool(std::string  pool);
	/*! \brief Get Position of which the snap was taken of.
	 */
	std::string getPosition();

	/*! \brief Set Position of which the snap was taken of.
	 */
	void setPosition(std::string  position);
	/*! \brief Get Timestamp of block in which the snap was created.
	 */
	std::string getTimestamp();

	/*! \brief Set Timestamp of block in which the snap was created.
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Total position liquidity.
	 */
	std::string getLiquidity();

	/*! \brief Set Total position liquidity.
	 */
	void setLiquidity(std::string  liquidity);
	/*! \brief Get Amount of token 0 ever deposited to position.
	 */
	std::string getDepositedToken0();

	/*! \brief Set Amount of token 0 ever deposited to position.
	 */
	void setDepositedToken0(std::string  deposited_token_0);
	/*! \brief Get Amount of token 1 ever deposited to position.
	 */
	std::string getDepositedToken1();

	/*! \brief Set Amount of token 1 ever deposited to position.
	 */
	void setDepositedToken1(std::string  deposited_token_1);
	/*! \brief Get Amount of token 0 ever withdrawn from position (without fees).
	 */
	std::string getWithdrawnToken0();

	/*! \brief Set Amount of token 0 ever withdrawn from position (without fees).
	 */
	void setWithdrawnToken0(std::string  withdrawn_token_0);
	/*! \brief Get Amount of token 1 ever withdrawn from position (without fees).
	 */
	std::string getWithdrawnToken1();

	/*! \brief Set Amount of token 1 ever withdrawn from position (without fees).
	 */
	void setWithdrawnToken1(std::string  withdrawn_token_1);
	/*! \brief Get All time collected fees in token0.
	 */
	std::string getCollectedFeesToken0();

	/*! \brief Set All time collected fees in token0.
	 */
	void setCollectedFeesToken0(std::string  collected_fees_token_0);
	/*! \brief Get All time collected fees in token1.
	 */
	std::string getCollectedFeesToken1();

	/*! \brief Set All time collected fees in token1.
	 */
	void setCollectedFeesToken1(std::string  collected_fees_token_1);
	/*! \brief Get Transaction in which the snapshot was initialized.
	 */
	std::string getTransaction();

	/*! \brief Set Transaction in which the snapshot was initialized.
	 */
	void setTransaction(std::string  transaction);
	/*! \brief Get Variable needed for fee computation.
	 */
	std::string getFeeGrowthInside0LastX128();

	/*! \brief Set Variable needed for fee computation.
	 */
	void setFeeGrowthInside0LastX128(std::string  fee_growth_inside_0_last_x128);
	/*! \brief Get Variable needed for fee computation.
	 */
	std::string getFeeGrowthInside1LastX128();

	/*! \brief Set Variable needed for fee computation.
	 */
	void setFeeGrowthInside1LastX128(std::string  fee_growth_inside_1_last_x128);
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
	std::string pool;
	std::string position;
	std::string timestamp;
	std::string liquidity;
	std::string deposited_token_0;
	std::string deposited_token_1;
	std::string withdrawn_token_0;
	std::string withdrawn_token_1;
	std::string collected_fees_token_0;
	std::string collected_fees_token_1;
	std::string transaction;
	std::string fee_growth_inside_0_last_x128;
	std::string fee_growth_inside_1_last_x128;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UniswapV3.PositionSnapshotDTO_H_ */
