package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class CurveTokenDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /*  */
    String id
    /*  */
    String address
    /*  */
    String decimals
    /*  */
    String name
    /*  */
    String symbol
    /*  */
    List<String> pools
    /*  */
    Long vid
    
    String tokenSymbol
}
