package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DexWithdrawDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (transaction hash)-(id). */
    String id
    /*  */
    String user
    /*  */
    String tokenAddress
    /*  */
    String amount
    /*  */
    String createEpoch
    /*  */
    String createBatchId
    /*  */
    String txHash
    /*  */
    Long vid
}
