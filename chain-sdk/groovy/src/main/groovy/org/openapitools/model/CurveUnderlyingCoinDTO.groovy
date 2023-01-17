package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class CurveUnderlyingCoinDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Equals to: (pool_id)-(coin_index). */
    String id
    /* Coin index. */
    Integer index
    /*  */
    String pool
    /*  */
    String token
    /*  */
    String coin
    /*  */
    String balance
    /*  */
    String updated
    /*  */
    String updatedAtBlock
    /*  */
    String updatedAtTransaction
    /*  */
    Long vid
}
