package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SushiswapPairDayDataDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (pair id)-(day start timestamp). */
    String id
    /* Unix timestamp for start of day. */
    Integer date
    /* Reference to pair. */
    String pair
    /* Reference to token0. */
    String token0
    /* Reference to token1. */
    String token1
    /* Reserve of token0 (updated during each transaction on pair). */
    String reserve0
    /* Reserve of token1 (updated during each transaction on pair). */
    String reserve1
    /* Total supply of liquidity token distributed to LPs. */
    String totalSupply
    /* Reserve of token0 plus token1 stored as a derived USD amount. */
    String reserveUsd
    /* Total amount of token0 swapped throughout day. */
    String volumeToken0
    /* Total amount of token1 swapped throughout day. */
    String volumeToken1
    /* Total volume within pair throughout day. */
    String volumeUsd
    /* Amount of transactions on pair throughout day. */
    String txCount
    /*  */
    Long vid
}
