package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DexSolutionDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /*  */
    String id
    /*  */
    String batch
    /*  */
    String solver
    /*  */
    String feeReward
    /*  */
    String objectiveValue
    /*  */
    String utility
    /*  */
    List<String> trades
    /*  */
    String createEpoch
    /*  */
    String revertEpoch
    /*  */
    String txHash
    /*  */
    String txLogIndex
    /*  */
    Long vid
}
