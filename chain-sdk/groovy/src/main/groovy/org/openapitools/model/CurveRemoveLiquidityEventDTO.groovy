package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class CurveRemoveLiquidityEventDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /*  */
    String id
    /*  */
    String pool
    /*  */
    String provider
    /*  */
    List<String> tokenAmounts
    /*  */
    List<String> fees
    /*  */
    String tokenSupply
    /*  */
    String invariant
    /*  */
    String block
    /*  */
    String timestamp
    /*  */
    String transaction
    /*  */
    Long vid
}
