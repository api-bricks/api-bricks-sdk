/*
 * CRYPTOPUNKS.UserDTO.h
 *
 * 
 */

#ifndef _CRYPTOPUNKS.UserDTO_H_
#define _CRYPTOPUNKS.UserDTO_H_


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

class CRYPTOPUNKS.UserDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	CRYPTOPUNKS.UserDTO();
	CRYPTOPUNKS.UserDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CRYPTOPUNKS.UserDTO();

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

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	long long vid;
	std::string block_range;
	std::string id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CRYPTOPUNKS.UserDTO_H_ */
