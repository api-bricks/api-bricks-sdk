package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SushiswapBurnDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (transaction id):(transaction.burns.length). */
    String id
    /* Reference to the transaction Burn was included in. */
    String transaction
    /* Timestamp of Burn, used to sort recent liquidity removals. */
    String timestamp
    /* Reference to pair. */
    String pair
    /* Amount of liquidity tokens burned. */
    String liquidity
    /* Address that initiated the liquidity removal. */
    String sender
    /* Amount of token0 removed. */
    String amount0
    /* Amount of token1 removed. */
    String amount1
    /* Recipient of tokens. */
    String to
    /* Index in the transaction event was emitted. */
    String logIndex
    /* Derived amount based on available prices of tokens. */
    String amountUsd
    /*  */
    Boolean complete
    /* Address of fee recipient (if fee is on). */
    String feeTo
    /* Amount of tokens sent to fee recipient (if fee is on). */
    String feeLiquidity
    /*  */
    Long vid
}
