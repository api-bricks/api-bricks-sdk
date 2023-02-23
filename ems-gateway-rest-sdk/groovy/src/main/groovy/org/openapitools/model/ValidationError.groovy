package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class ValidationError {
    
    String type
    
    String title
    
    BigDecimal status
    
    String traceId
    
    String errors
}
