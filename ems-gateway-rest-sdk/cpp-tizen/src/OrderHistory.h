/*
 * OrderHistory.h
 *
 * 
 */

#ifndef _OrderHistory_H_
#define _OrderHistory_H_


#include <string>
#include "Date.h"
#include <list>
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

class OrderHistory : public Object {
public:
	/*! \brief Constructor.
	 */
	OrderHistory();
	OrderHistory(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrderHistory();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Apikey
	 */
	std::string getApikey();

	/*! \brief Set Apikey
	 */
	void setApikey(std::string  apikey);
	/*! \brief Get Exchange id
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange id
	 */
	void setExchangeId(std::string  exchangeId);
	/*! \brief Get Client order id
	 */
	std::string getClientOrderId();

	/*! \brief Set Client order id
	 */
	void setClientOrderId(std::string  clientOrderId);
	/*! \brief Get Symbol id exchange
	 */
	std::string getSymbolIdExchange();

	/*! \brief Set Symbol id exchange
	 */
	void setSymbolIdExchange(std::string  symbolIdExchange);
	/*! \brief Get Symbol id in coinapi
	 */
	std::string getSymbolIdCoinapi();

	/*! \brief Set Symbol id in coinapi
	 */
	void setSymbolIdCoinapi(std::string  symbolIdCoinapi);
	/*! \brief Get Amount
	 */
	long long getAmountOrder();

	/*! \brief Set Amount
	 */
	void setAmountOrder(long long  amountOrder);
	/*! \brief Get Price
	 */
	long long getPrice();

	/*! \brief Set Price
	 */
	void setPrice(long long  price);
	/*! \brief Get 1-buy, 2-sell
	 */
	long long getSide();

	/*! \brief Set 1-buy, 2-sell
	 */
	void setSide(long long  side);
	/*! \brief Get Order type
	 */
	std::string getOrderType();

	/*! \brief Set Order type
	 */
	void setOrderType(std::string  orderType);
	/*! \brief Get Time in force
	 */
	std::string getTimeInForce();

	/*! \brief Set Time in force
	 */
	void setTimeInForce(std::string  timeInForce);
	/*! \brief Get Expire time
	 */
	Date getExpireTime();

	/*! \brief Set Expire time
	 */
	void setExpireTime(Date  expireTime);
	/*! \brief Get Exec inst
	 */
	std::list<std::string> getExecInst();

	/*! \brief Set Exec inst
	 */
	void setExecInst(std::list <std::string> execInst);
	/*! \brief Get Client order id format
	 */
	std::string getClientOrderIdFormatExchange();

	/*! \brief Set Client order id format
	 */
	void setClientOrderIdFormatExchange(std::string  clientOrderIdFormatExchange);
	/*! \brief Get Exchange order id
	 */
	std::string getExchangeOrderId();

	/*! \brief Set Exchange order id
	 */
	void setExchangeOrderId(std::string  exchangeOrderId);
	/*! \brief Get Amount open
	 */
	long long getAmountOpen();

	/*! \brief Set Amount open
	 */
	void setAmountOpen(long long  amountOpen);
	/*! \brief Get Amount filled
	 */
	long long getAmountFilled();

	/*! \brief Set Amount filled
	 */
	void setAmountFilled(long long  amountFilled);
	/*! \brief Get Average price
	 */
	long long getAvgPx();

	/*! \brief Set Average price
	 */
	void setAvgPx(long long  avgPx);
	/*! \brief Get Status
	 */
	std::string getStatus();

	/*! \brief Set Status
	 */
	void setStatus(std::string  status);
	/*! \brief Get History status
	 */
	std::list<std::string> getStatusHistoryStatus();

	/*! \brief Set History status
	 */
	void setStatusHistoryStatus(std::list <std::string> statusHistoryStatus);
	/*! \brief Get History status time
	 */
	std::list<Date> getStatusHistoryTime();

	/*! \brief Set History status time
	 */
	void setStatusHistoryTime(std::list <Date> statusHistoryTime);
	/*! \brief Get Error message
	 */
	std::string getErrorMessageResult();

	/*! \brief Set Error message
	 */
	void setErrorMessageResult(std::string  errorMessageResult);
	/*! \brief Get Error message reason
	 */
	std::string getErrorMessageReason();

	/*! \brief Set Error message reason
	 */
	void setErrorMessageReason(std::string  errorMessageReason);
	/*! \brief Get Error message
	 */
	std::string getErrorMessageMessage();

	/*! \brief Set Error message
	 */
	void setErrorMessageMessage(std::string  errorMessageMessage);
	/*! \brief Get Fills time
	 */
	std::list<Date> getFillsTime();

	/*! \brief Set Fills time
	 */
	void setFillsTime(std::list <Date> fillsTime);
	/*! \brief Get Fills price
	 */
	std::list<long long> getFillsPrice();

	/*! \brief Set Fills price
	 */
	void setFillsPrice(std::list <long long> fillsPrice);
	/*! \brief Get Fills amount
	 */
	std::list<long long> getFillsAmount();

	/*! \brief Set Fills amount
	 */
	void setFillsAmount(std::list <long long> fillsAmount);
	/*! \brief Get Created time
	 */
	Date getCreatedTime();

	/*! \brief Set Created time
	 */
	void setCreatedTime(Date  createdTime);

private:
	std::string apikey;
	std::string exchangeId;
	std::string clientOrderId;
	std::string symbolIdExchange;
	std::string symbolIdCoinapi;
	long long amountOrder;
	long long price;
	long long side;
	std::string orderType;
	std::string timeInForce;
	Date expireTime;
	std::list <std::string>execInst;
	std::string clientOrderIdFormatExchange;
	std::string exchangeOrderId;
	long long amountOpen;
	long long amountFilled;
	long long avgPx;
	std::string status;
	std::list <std::string>statusHistoryStatus;
	std::list <Date>statusHistoryTime;
	std::string errorMessageResult;
	std::string errorMessageReason;
	std::string errorMessageMessage;
	std::list <Date>fillsTime;
	std::list <long long>fillsPrice;
	std::list <long long>fillsAmount;
	Date createdTime;
	void __init();
	void __cleanup();

};
}
}

#endif /* _OrderHistory_H_ */
