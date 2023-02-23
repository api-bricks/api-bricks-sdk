package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Fills;
import org.openapitools.model.OrdSide;
import org.openapitools.model.OrdStatus;
import org.openapitools.model.OrdType;
import org.openapitools.model.TimeInForce;

@Canonical
class OrderExecutionReport {
    /* Exchange identifier used to identify the routing destination. */
    String exchangeId
    /* The unique identifier of the order assigned by the client. */
    String clientOrderId
    /* Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. */
    String symbolIdExchange
    /* CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. */
    String symbolIdCoinapi
    /* Order quantity. */
    BigDecimal amountOrder
    /* Order price. */
    BigDecimal price
    
    OrdSide side
    
    OrdType orderType
    
    TimeInForce timeInForce
    /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
    Date expireTime = null
    /* Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a>  */
    List<String> execInst = new ArrayList<>()
    /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
    String clientOrderIdFormatExchange
    /* Unique identifier of the order assigned by the exchange or executing system. */
    String exchangeOrderId
    /* Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` */
    BigDecimal amountOpen
    /* Total quantity filled. */
    BigDecimal amountFilled
    /* Calculated average price of all fills on this order. */
    BigDecimal avgPx
    
    OrdStatus status
    /* Timestamped history of order status changes. */
    List<List<String>> statusHistory = new ArrayList<>()
    /* Error message. */
    String errorMessage
    /* Relay fill information on working orders. */
    List<Fills> fills = new ArrayList<>()
}
