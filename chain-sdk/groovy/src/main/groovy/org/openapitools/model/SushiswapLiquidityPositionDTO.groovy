package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class SushiswapLiquidityPositionDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (pair address)-(user address) */
    String id
    /* User address. */
    String user
    /* Pair address. */
    String pair
    /* Amount of LP tokens minted for this position. */
    String liquidityTokenBalance
    /* Block number at which position was created. */
    Integer block
    /* Creation time. */
    Integer timestamp
    /*  */
    Long vid
}
