package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class OrderHistory {
    /* Apikey */
    String apikey
    /* Exchange id */
    String exchangeId
    /* Client order id */
    String clientOrderId
    /* Symbol id exchange */
    String symbolIdExchange
    /* Symbol id in coinapi */
    String symbolIdCoinapi
    /* Amount */
    BigDecimal amountOrder
    /* Price */
    BigDecimal price
    /* 1-buy, 2-sell */
    BigDecimal side
    /* Order type */
    String orderType
    /* Time in force */
    String timeInForce
    /* Expire time */
    Date expireTime = null
    /* Exec inst */
    List<String> execInst
    /* Client order id format */
    String clientOrderIdFormatExchange
    /* Exchange order id */
    String exchangeOrderId
    /* Amount open */
    BigDecimal amountOpen
    /* Amount filled */
    BigDecimal amountFilled
    /* Average price */
    BigDecimal avgPx
    /* Status */
    String status
    /* History status */
    List<String> statusHistoryStatus
    /* History status time */
    List<Date> statusHistoryTime
    /* Error message */
    String errorMessageResult
    /* Error message reason */
    String errorMessageReason
    /* Error message */
    String errorMessageMessage
    /* Fills time */
    List<Date> fillsTime
    /* Fills price */
    List<BigDecimal> fillsPrice
    /* Fills amount */
    List<BigDecimal> fillsAmount
    /* Created time */
    Date createdTime = null
}
