package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DexOrderDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (owner address)-(order id) */
    String id
    /* Reference to owner. */
    String owner
    /* Order id. */
    Integer orderId
    /* Batch id from which order became valid. */
    String fromBatchId
    /* Start of epoch in which order was placed and became valid. */
    String fromEpoch
    /* Batch id until which trade was still valid. */
    String untilBatchId
    /* End of epoch in which order was placed. */
    String untilEpoch
    /* Identifier of token that was bought. */
    String buyToken
    /* Identifier of token that was sold. */
    String sellToken
    /* Price enumerator. */
    String priceNumerator
    /* Price denominator. */
    String priceDenominator
    /* Maximum sell amount. */
    String maxSellAmount
    /* Minimum receive amount. */
    String minReceiveAmount
    /* Sold volume. */
    String soldVolume
    /* Bought volume. */
    String boughtVolume
    /* Epoch in which order was created. */
    String createEpoch
    /* Epoch in which order was cancelled. */
    String cancelEpoch
    /* Epoch in which order was deleted. */
    String deleteEpoch
    /* Transaction hash. */
    String txHash
    /* Event index within transaction. */
    String txLogIndex
    /*  */
    Long vid
}
