package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;

@Canonical
class Fills {
    /* Execution time. */
    Date time = null
    /* Execution price. */
    BigDecimal price
    /* Executed quantity. */
    BigDecimal amount
}
