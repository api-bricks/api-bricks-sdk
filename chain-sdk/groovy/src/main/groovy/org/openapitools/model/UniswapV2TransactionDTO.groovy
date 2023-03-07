package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class UniswapV2TransactionDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Ethereum transaction hash. */
    String id
    /* Timestamp. */
    String timestamp
    /* Array of Mint events within the transaction, 0 or greater. */
    List<String> mints
    /* Array of Burn events within transaction, 0 or greater. */
    List<String> burns
    /* Array of Swap events within transaction, 0 or greater. */
    List<String> swaps
    /*  */
    Long vid
}
