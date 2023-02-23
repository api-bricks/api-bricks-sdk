/*
 * Balance_data_inner.h
 *
 * 
 */

#ifndef _Balance_data_inner_H_
#define _Balance_data_inner_H_


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

class Balance_data_inner : public Object {
public:
	/*! \brief Constructor.
	 */
	Balance_data_inner();
	Balance_data_inner(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Balance_data_inner();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Exchange currency code.
	 */
	std::string getAssetIdExchange();

	/*! \brief Set Exchange currency code.
	 */
	void setAssetIdExchange(std::string  asset_id_exchange);
	/*! \brief Get CoinAPI currency code.
	 */
	std::string getAssetIdCoinapi();

	/*! \brief Set CoinAPI currency code.
	 */
	void setAssetIdCoinapi(std::string  asset_id_coinapi);
	/*! \brief Get Value of the current total currency balance on the exchange.
	 */
	double getBalance();

	/*! \brief Set Value of the current total currency balance on the exchange.
	 */
	void setBalance(double  balance);
	/*! \brief Get Value of the current available currency balance on the exchange that can be used as collateral.
	 */
	double getAvailable();

	/*! \brief Set Value of the current available currency balance on the exchange that can be used as collateral.
	 */
	void setAvailable(double  available);
	/*! \brief Get Value of the current locked currency balance by the exchange.
	 */
	double getLocked();

	/*! \brief Set Value of the current locked currency balance by the exchange.
	 */
	void setLocked(double  locked);
	/*! \brief Get Source of the last modification. 
	 */
	std::string getLastUpdatedBy();

	/*! \brief Set Source of the last modification. 
	 */
	void setLastUpdatedBy(std::string  last_updated_by);
	/*! \brief Get Current exchange rate to the USD for the single unit of the currency. 
	 */
	double getRateUsd();

	/*! \brief Set Current exchange rate to the USD for the single unit of the currency. 
	 */
	void setRateUsd(double  rate_usd);
	/*! \brief Get Value of the current total traded.
	 */
	double getTraded();

	/*! \brief Set Value of the current total traded.
	 */
	void setTraded(double  traded);

private:
	std::string asset_id_exchange;
	std::string asset_id_coinapi;
	double balance;
	double available;
	double locked;
	std::string last_updated_by;
	double rate_usd;
	double traded;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Balance_data_inner_H_ */
