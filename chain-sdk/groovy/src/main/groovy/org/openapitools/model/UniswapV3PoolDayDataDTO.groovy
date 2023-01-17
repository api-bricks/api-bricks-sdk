package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class UniswapV3PoolDayDataDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (pool address)-(day id). */
    String id
    /* Timestamp rounded to current day by dividing by 86400 */
    Integer date
    /* Pointer to pool. */
    String pool
    /* In range liquidity at end of period. */
    String liquidity
    /* Current price tracker at end of period. */
    String sqrtPrice
    /* Price of token0 - derived from sqrtPrice. */
    String token0Price
    /* Price of token1 - derived from sqrtPrice. */
    String token1Price
    /* Current tick at end of period. */
    String tick
    /* Tracker for global fee growth. */
    String feeGrowthGlobal0x128
    /* Tracker for global fee growth. */
    String feeGrowthGlobal1x128
    /* Total value locked derived in USD at end of period. */
    String tvlUsd
    /* Volume in token0. */
    String volumeToken0
    /* Volume in token1. */
    String volumeToken1
    /* Volume in USD. */
    String volumeUsd
    /* Fees in USD. */
    String feesUsd
    /* Number of transactions during period. */
    String txCount
    /* Opening price of token0. */
    String open
    /* High price of token0. */
    String high
    /* Low price of token0. */
    String low
    /* Close price of token0. */
    String close
    /*  */
    Long vid
}
