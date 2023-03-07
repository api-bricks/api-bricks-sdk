package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class CRYPTOPUNKSDataSourcesDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /*  */
    Integer vid
    /*  */
    String blockRange
    /*  */
    Integer causalityRegion
    /*  */
    Integer manifestIdx
    /*  */
    Integer parent
    /*  */
    String id
    /*  */
    String param
    /*  */
    String context
    /*  */
    Integer doneAt
}
