/*
 * Dex.PriceDTO.h
 *
 * Token price in conjuction with batch id.
 */

#ifndef _Dex.PriceDTO_H_
#define _Dex.PriceDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Token price in conjuction with batch id.
 *
 *  \ingroup Models
 *
 */

class Dex.PriceDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	Dex.PriceDTO();
	Dex.PriceDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Dex.PriceDTO();

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
	/*! \brief Get Identifier, format: (token id)-(batch id).
	 */
	std::string getId();

	/*! \brief Set Identifier, format: (token id)-(batch id).
	 */
	void setId(std::string  id);
	/*! \brief Get Token identifier.
	 */
	std::string getToken();

	/*! \brief Set Token identifier.
	 */
	void setToken(std::string  token);
	/*! \brief Get Batch identifier.
	 */
	std::string getBatchId();

	/*! \brief Set Batch identifier.
	 */
	void setBatchId(std::string  batch_id);
	/*! \brief Get Price enumerator in OWL (derivative of the GNO token).
	 */
	std::string getPriceInOwlNumerator();

	/*! \brief Set Price enumerator in OWL (derivative of the GNO token).
	 */
	void setPriceInOwlNumerator(std::string  price_in_owl_numerator);
	/*! \brief Get Price denominator in OWL (derivative of the GNO token).
	 */
	std::string getPriceInOwlDenominator();

	/*! \brief Set Price denominator in OWL (derivative of the GNO token).
	 */
	void setPriceInOwlDenominator(std::string  price_in_owl_denominator);
	/*! \brief Get Volume.
	 */
	std::string getVolume();

	/*! \brief Set Volume.
	 */
	void setVolume(std::string  volume);
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
	std::string token;
	std::string batch_id;
	std::string price_in_owl_numerator;
	std::string price_in_owl_denominator;
	std::string volume;
	std::string create_epoch;
	std::string tx_hash;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Dex.PriceDTO_H_ */
