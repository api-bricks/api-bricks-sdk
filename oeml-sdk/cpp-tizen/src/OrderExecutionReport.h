/*
 * OrderExecutionReport.h
 *
 * The order execution report object.
 */

#ifndef _OrderExecutionReport_H_
#define _OrderExecutionReport_H_


#include <string>
#include "Date.h"
#include "Fills.h"
#include "OrdSide.h"
#include "OrdStatus.h"
#include "OrdType.h"
#include "OrderExecutionReport_allOf.h"
#include "OrderNewSingleRequest.h"
#include "TimeInForce.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief The order execution report object.
 *
 *  \ingroup Models
 *
 */

class OrderExecutionReport : public Object {
public:
	/*! \brief Constructor.
	 */
	OrderExecutionReport();
	OrderExecutionReport(char* str);

	/*! \brief Destructor.
	 */
	virtual ~OrderExecutionReport();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Exchange identifier used to identify the routing destination.
	 */
	std::string getExchangeId();

	/*! \brief Set Exchange identifier used to identify the routing destination.
	 */
	void setExchangeId(std::string  exchange_id);
	/*! \brief Get The unique identifier of the order assigned by the client.
	 */
	std::string getClientOrderId();

	/*! \brief Set The unique identifier of the order assigned by the client.
	 */
	void setClientOrderId(std::string  client_order_id);
	/*! \brief Get Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
	 */
	std::string getSymbolIdExchange();

	/*! \brief Set Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
	 */
	void setSymbolIdExchange(std::string  symbol_id_exchange);
	/*! \brief Get CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
	 */
	std::string getSymbolIdCoinapi();

	/*! \brief Set CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
	 */
	void setSymbolIdCoinapi(std::string  symbol_id_coinapi);
	/*! \brief Get Order quantity.
	 */
	long long getAmountOrder();

	/*! \brief Set Order quantity.
	 */
	void setAmountOrder(long long  amount_order);
	/*! \brief Get Order price.
	 */
	long long getPrice();

	/*! \brief Set Order price.
	 */
	void setPrice(long long  price);
	/*! \brief Get 
	 */
	OrdSide getSide();

	/*! \brief Set 
	 */
	void setSide(OrdSide  side);
	/*! \brief Get 
	 */
	OrdType getOrderType();

	/*! \brief Set 
	 */
	void setOrderType(OrdType  order_type);
	/*! \brief Get 
	 */
	TimeInForce getTimeInForce();

	/*! \brief Set 
	 */
	void setTimeInForce(TimeInForce  time_in_force);
	/*! \brief Get Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
	 */
	Date getExpireTime();

	/*! \brief Set Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
	 */
	void setExpireTime(Date  expire_time);
	/*! \brief Get Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
	 */
	std::list<std::string> getExecInst();

	/*! \brief Set Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
	 */
	void setExecInst(std::list <std::string> exec_inst);
	/*! \brief Get The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
	 */
	std::string getClientOrderIdFormatExchange();

	/*! \brief Set The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
	 */
	void setClientOrderIdFormatExchange(std::string  client_order_id_format_exchange);
	/*! \brief Get Unique identifier of the order assigned by the exchange or executing system.
	 */
	std::string getExchangeOrderId();

	/*! \brief Set Unique identifier of the order assigned by the exchange or executing system.
	 */
	void setExchangeOrderId(std::string  exchange_order_id);
	/*! \brief Get Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
	 */
	long long getAmountOpen();

	/*! \brief Set Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
	 */
	void setAmountOpen(long long  amount_open);
	/*! \brief Get Total quantity filled.
	 */
	long long getAmountFilled();

	/*! \brief Set Total quantity filled.
	 */
	void setAmountFilled(long long  amount_filled);
	/*! \brief Get Calculated average price of all fills on this order.
	 */
	long long getAvgPx();

	/*! \brief Set Calculated average price of all fills on this order.
	 */
	void setAvgPx(long long  avg_px);
	/*! \brief Get 
	 */
	OrdStatus getStatus();

	/*! \brief Set 
	 */
	void setStatus(OrdStatus  status);
	/*! \brief Get Timestamped history of order status changes.
	 */
	std::list<std::list> getStatusHistory();

	/*! \brief Set Timestamped history of order status changes.
	 */
	void setStatusHistory(std::list <std::list> status_history);
	/*! \brief Get Error message.
	 */
	std::string getErrorMessage();

	/*! \brief Set Error message.
	 */
	void setErrorMessage(std::string  error_message);
	/*! \brief Get Relay fill information on working orders.
	 */
	std::list<Fills> getFills();

	/*! \brief Set Relay fill information on working orders.
	 */
	void setFills(std::list <Fills> fills);

private:
	std::string exchange_id;
	std::string client_order_id;
	std::string symbol_id_exchange;
	std::string symbol_id_coinapi;
	long long amount_order;
	long long price;
	OrdSide side;
	OrdType order_type;
	TimeInForce time_in_force;
	Date expire_time;
	std::list <std::string>exec_inst;
	std::string client_order_id_format_exchange;
	std::string exchange_order_id;
	long long amount_open;
	long long amount_filled;
	long long avg_px;
	OrdStatus status;
	std::list <std::list>status_history;
	std::string error_message;
	std::list <Fills>fills;
	void __init();
	void __cleanup();

};
}
}

#endif /* _OrderExecutionReport_H_ */
