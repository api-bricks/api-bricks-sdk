package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.PositionDataInner;

@Canonical
class Position {
    /* Exchange identifier used to identify the routing destination. */
    String exchangeId
    
    List<PositionDataInner> data = new ArrayList<>()
}
