package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.RejectReason;

@Canonical
class MessageReject {
    /* Message type, constant. */
    String type
    
    RejectReason rejectReason
    /* If the message related to exchange, then the identifier of the exchange will be provided. */
    String exchangeId
    /* Message text. */
    String message
    /* Value of rejected request, if available. */
    String rejectedMessage
}
