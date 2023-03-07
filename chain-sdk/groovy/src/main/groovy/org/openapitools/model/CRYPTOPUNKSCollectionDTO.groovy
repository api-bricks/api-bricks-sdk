package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class CRYPTOPUNKSCollectionDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /*  */
    Long vid
    /*  */
    String blockRange
    /*  */
    String id
    /*  */
    String name
    /*  */
    String symbol
    /*  */
    String totalSupply
    /*  */
    String royaltyFee
    /*  */
    String cumulativeTradeVolumeEth
    /*  */
    String marketplaceRevenueEth
    /*  */
    String creatorRevenueEth
    /*  */
    String totalRevenueEth
    /*  */
    Integer tradeCount
    /*  */
    Integer buyerCount
    /*  */
    Integer sellerCount
}
