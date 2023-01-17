package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class UniswapV3TickDayDataDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (pool address)-(tick index)-(timestamp). */
    String id
    /* Timestamp rounded to current day by dividing by 86400. */
    Integer date
    /* Pointer to pool. */
    String pool
    /* Pointer to tick. */
    String tick
    /* Total liquidity pool has as tick lower or upper at end of period. */
    String liquidityGross
    /* How much liquidity changes when tick crossed at end of period. */
    String liquidityNet
    /* Hourly volume of token0 with this tick in range. */
    String volumeToken0
    /* Hourly volume of token1 with this tick in range. */
    String volumeToken1
    /* Hourly volume in derived USD with this tick in range. */
    String volumeUsd
    /* Fees in USD. */
    String feesUsd
    /* Variable needed for fee computation. */
    String feeGrowthOutside0x128
    /* Variable needed for fee computation. */
    String feeGrowthOutside1x128
    /*  */
    Long vid
}
