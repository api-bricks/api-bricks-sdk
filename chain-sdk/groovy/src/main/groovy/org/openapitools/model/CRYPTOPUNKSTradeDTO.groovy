package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class CRYPTOPUNKSTradeDTO {
    
    Date entryTime
    
    Date recvTime
    /*  */
    String blockNumber
    /*  */
    Long vid
    /*  */
    String blockRange
    /*  */
    String id
    /*  */
    String transactionHash
    /*  */
    Integer logIndex
    /*  */
    String timestamp
    /*  */
    Boolean isBundle
    /*  */
    String collection
    /*  */
    String tokenId
    /*  */
    String amount
    /*  */
    String priceEth
    /*  */
    String buyer
    /*  */
    String seller
}
