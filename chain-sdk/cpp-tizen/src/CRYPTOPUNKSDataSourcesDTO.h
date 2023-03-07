/*
 * CRYPTOPUNKS.DataSourcesDTO.h
 *
 * 
 */

#ifndef _CRYPTOPUNKS.DataSourcesDTO_H_
#define _CRYPTOPUNKS.DataSourcesDTO_H_


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

class CRYPTOPUNKS.DataSourcesDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	CRYPTOPUNKS.DataSourcesDTO();
	CRYPTOPUNKS.DataSourcesDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CRYPTOPUNKS.DataSourcesDTO();

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
	int getVid();

	/*! \brief Set 
	 */
	void setVid(int  vid);
	/*! \brief Get 
	 */
	std::string getBlockRange();

	/*! \brief Set 
	 */
	void setBlockRange(std::string  block_range);
	/*! \brief Get 
	 */
	int getCausalityRegion();

	/*! \brief Set 
	 */
	void setCausalityRegion(int  causality_region);
	/*! \brief Get 
	 */
	int getManifestIdx();

	/*! \brief Set 
	 */
	void setManifestIdx(int  manifest_idx);
	/*! \brief Get 
	 */
	int getParent();

	/*! \brief Set 
	 */
	void setParent(int  parent);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getParam();

	/*! \brief Set 
	 */
	void setParam(std::string  param);
	/*! \brief Get 
	 */
	std::string getContext();

	/*! \brief Set 
	 */
	void setContext(std::string  context);
	/*! \brief Get 
	 */
	int getDoneAt();

	/*! \brief Set 
	 */
	void setDoneAt(int  done_at);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	int vid;
	std::string block_range;
	int causality_region;
	int manifest_idx;
	int parent;
	std::string id;
	std::string param;
	std::string context;
	int done_at;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CRYPTOPUNKS.DataSourcesDTO_H_ */
