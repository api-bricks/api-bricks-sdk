package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.NumericsBigInteger;

@Canonical
class UniswapV3TickDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /*  */
    Long vid
    /* Identifier, format: (pool address)#(tick index) */
    String id
    /* Pool address. */
    String poolAddress
    
    NumericsBigInteger tickIdx
    /* Pool address. */
    String pool
    
    NumericsBigInteger liquidityGross
    
    NumericsBigInteger liquidityNet
    /* Calculated price of token0 of tick within this pool - constant. */
    String price0
    /* Calculated price of token1 of tick within this pool - constant. */
    String price1
    /* Lifetime volume of token0 with this tick in range. */
    String volumeToken0
    /* Lifetime volume of token1 with this tick in range. */
    String volumeToken1
    /* Lifetime volume in derived USD with this tick in range. */
    String volumeUsd
    /* Lifetime volume in untracked USD with this tick in range. */
    String untrackedVolumeUsd
    /* Fees in USD. */
    String feesUsd
    /* All time collected fees in token0. */
    String collectedFeesToken0
    /* All time collected fees in token1. */
    String collectedFeesToken1
    /* All time collected fees in USD. */
    String collectedFeesUsd
    /* Created time. */
    Date createdAtTimestamp
    
    NumericsBigInteger liquidityProviderCount
    
    NumericsBigInteger feeGrowthOutside0x128
    
    NumericsBigInteger feeGrowthOutside1x128
}
