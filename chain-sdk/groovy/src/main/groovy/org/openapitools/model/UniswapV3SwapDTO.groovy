package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.NumericsBigInteger;
import org.openapitools.model.TransactionsETradeAggressiveSide;

@Canonical
class UniswapV3SwapDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /*  */
    Long vid
    /* Identifier, format: (transaction hash) + # + (index in swaps Transaction array). */
    String id
    /* Pointer to transaction. */
    String transaction
    /* Timestamp of transaction. */
    Date timestamp
    /* Pool swap occured within. */
    String pool
    /* Reference to token0 as stored in pair contract. */
    String token0
    /* Reference to token1 as stored in pair contract. */
    String token1
    /* Sender of the swap. */
    String sender
    /* Recipient of the swap. */
    String recipient
    /* Transaction origin: the EOA (Externally Owned Account) that initiated the transaction */
    String origin
    /* Delta of token0 swapped. */
    String amount0
    /* Delta of token1 swapped. */
    String amount1
    /* Derived amount of tokens sold in USD. */
    String amountUsd
    
    NumericsBigInteger sqrtPriceX96
    
    NumericsBigInteger tick
    
    NumericsBigInteger logIndex
    
    Double evaluatedPrice
    
    Double evaluatedAmount
    
    TransactionsETradeAggressiveSide evaluatedAggressor
    
    String poolId
    
    String transactionId
}
