package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class UniswapV3PositionSnapshotDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* NFT token identifier, format: (NFT token id)#(block number). */
    String id
    /* Owner of the NFT. */
    String owner
    /* Pool the position is within. */
    String pool
    /* Position of which the snap was taken of. */
    String position
    /* Timestamp of block in which the snap was created. */
    String timestamp
    /* Total position liquidity. */
    String liquidity
    /* Amount of token 0 ever deposited to position. */
    String depositedToken0
    /* Amount of token 1 ever deposited to position. */
    String depositedToken1
    /* Amount of token 0 ever withdrawn from position (without fees). */
    String withdrawnToken0
    /* Amount of token 1 ever withdrawn from position (without fees). */
    String withdrawnToken1
    /* All time collected fees in token0. */
    String collectedFeesToken0
    /* All time collected fees in token1. */
    String collectedFeesToken1
    /* Transaction in which the snapshot was initialized. */
    String transaction
    /* Variable needed for fee computation. */
    String feeGrowthInside0LastX128
    /* Variable needed for fee computation. */
    String feeGrowthInside1LastX128
    /*  */
    Long vid
}
