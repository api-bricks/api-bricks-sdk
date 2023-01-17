package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class DexPriceDTO {
    
    Date entryTime
    
    Date recvTime
    /* Number of block in which entity was recorded. */
    Long blockNumber
    /* Identifier, format: (token id)-(batch id). */
    String id
    /* Token identifier. */
    String token
    /* Batch identifier. */
    String batchId
    /* Price enumerator in OWL (derivative of the GNO token). */
    String priceInOwlNumerator
    /* Price denominator in OWL (derivative of the GNO token). */
    String priceInOwlDenominator
    /* Volume. */
    String volume
    /* Create epoch. */
    String createEpoch
    /* Transaction hash. */
    String txHash
    /*  */
    Long vid
}
