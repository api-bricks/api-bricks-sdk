package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.OrdSide;
import org.openapitools.model.OrdType;
import org.openapitools.model.TimeInForce;

@Canonical
class OrderNewSingleRequest {
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
}
