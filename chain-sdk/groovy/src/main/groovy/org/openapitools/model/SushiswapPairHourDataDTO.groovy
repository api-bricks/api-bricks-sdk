package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SushiswapPairHourDataDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (pair id)-(hour start timestamp). */
    String id
    /* Hour start timestamp. */
    Integer date
    /* Reference to pair. */
    String pair
    /* Reserve of token0 (updated during each transaction on pair). */
    String reserve0
    /* Reserve of token1 (updated during each transaction on pair). */
    String reserve1
    /* Reserve of token0 plus token1 stored as a derived USD amount. */
    String reserveUsd
    /* Total amount of token0 swapped throughout hour. */
    String volumeToken0
    /* Total amount of token1 swapped throughout hour. */
    String volumeToken1
    /* Total volume within pair throughout hour. */
    String volumeUsd
    /* Amount of transactions on pair throughout hour. */
    String txCount
    /*  */
    Long vid
}
