package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Fills;
import org.openapitools.model.OrdStatus;

@Canonical
class OrderExecutionReportAllOf {
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
    List<List<String>> statusHistory = new ArrayList<List<String>>()
    /* Error message. */
    String errorMessage
    /* Relay fill information on working orders. */
    List<Fills> fills = new ArrayList<Fills>()
}
