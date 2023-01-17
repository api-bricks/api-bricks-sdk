package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class CurveCoinDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (pool_id)-(coin_index). */
    String id
    /* Coin index. */
    Integer index
    /*  */
    String pool
    /*  */
    String token
    /*  */
    String underlying
    /*  */
    String balance
    /* Exchange rate between this coin and the associated underlying coin within the pool. */
    String rate
    /*  */
    String updated
    /*  */
    String updatedAtBlock
    /*  */
    String updatedAtTransaction
    /*  */
    Long vid
    /*  */
    String blockRange
}
