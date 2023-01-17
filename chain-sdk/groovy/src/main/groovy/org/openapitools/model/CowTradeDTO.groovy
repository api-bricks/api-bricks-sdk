package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.TransactionsETradeAggressiveSide;

@Canonical
class CowTradeDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (order id)|(transaction hash)|(event index). */
    String id
    /* Block's timestamp. */
    String timestamp
    /* Transaction's gas price. */
    String gasPrice
    /* Transaction's gas limit. */
    String gasLimit
    /* Trade's fee amount. */
    String feeAmount
    /* Trade event transaction hash. */
    String txHash
    /* Reference to settlement. */
    String settlement
    /* Buy amount. */
    String buyAmount
    /* Sell amount. */
    String sellAmount
    /* Address of token that is sold. */
    String sellToken
    /* Address of token that is bought. */
    String buyToken
    /* Reference to order. */
    String order
    /*  */
    Long vid
    
    String poolId
    
    String transactionId
    
    Double evaluatedPrice
    
    Double evaluatedAmount
    
    TransactionsETradeAggressiveSide evaluatedAggressor
}
