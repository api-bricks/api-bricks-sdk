package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DexDepositDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (transaction hash)-(token id). */
    String id
    /* User address. */
    String user
    /* Token address. */
    String tokenAddress
    /* Amount of deposit. */
    String amount
    /* Identifier (numerical). */
    String batchId
    /* Create epoch. */
    String createEpoch
    /* Transaction hash. */
    String txHash
    /*  */
    Long vid
}
