package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SushiswapLiquidityPositionSnapshotDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (pair address)-(user address)-(timestamp) */
    String id
    /* Reference to LP identifier. */
    String liquidityPosition
    /* Creation time. */
    Integer timestamp
    /* Block in which snapshot has been created. */
    Integer block
    /* Reference to user. */
    String user
    /* Reference to the pair liquidity is being provided on. */
    String pair
    /* Snapshot of token0 price in USD. */
    String token0PriceUsd
    /* Snapshot of token0 price in USD. */
    String token1PriceUsd
    /* Snapshot of pair token0 reserves. */
    String reserve0
    /* Snapshot of pair token1 reserves. */
    String reserve1
    /* Snapshot of pair reserves in USD. */
    String reserveUsd
    /* Snapshot of pool token supply. */
    String liquidityTokenTotalSupply
    /* Snapshot of users pool token balance. */
    String liquidityTokenBalance
    /*  */
    Long vid
}
