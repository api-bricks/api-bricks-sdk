package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class OrderCancelAllRequest {
    /* Identifier of the exchange from which active orders should be canceled. */
    String exchangeId
}
