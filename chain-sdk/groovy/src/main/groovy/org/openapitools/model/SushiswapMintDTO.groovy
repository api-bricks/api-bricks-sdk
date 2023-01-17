package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SushiswapMintDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (transaction hash)-(index in the transaction mint array). */
    String id
    /* Reference to the transaction Mint was included in. */
    String transaction
    /* Timestamp of Mint, used to sort recent liquidity provisions. */
    String timestamp
    /* Reference to pair. */
    String pair
    /* Recipient of liquidity tokens. */
    String to
    /* Amount of liquidity tokens minted. */
    String liquidity
    /* Address that initiated the liquidity provision. */
    String sender
    /* Amount of token0 provided. */
    String amount0
    /* Amount of token1 provided. */
    String amount1
    /* Index in the transaction event was emitted. */
    String logIndex
    /* Derived USD value of token0 amount plus token1 amount. */
    String amountUsd
    /* Address of fee recipient (if fee is on). */
    String feeTo
    /* Amount of liquidity sent to fee recipient (if fee is on). */
    String feeLiquidity
    /*  */
    Long vid
}
