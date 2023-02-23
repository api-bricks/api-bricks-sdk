package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BalanceDataInner {
    /* Exchange currency code. */
    String assetIdExchange
    /* CoinAPI currency code. */
    String assetIdCoinapi
    /* Value of the current total currency balance on the exchange. */
    Double balance
    /* Value of the current available currency balance on the exchange that can be used as collateral. */
    Double available
    /* Value of the current locked currency balance by the exchange. */
    Double locked
    /* Source of the last modification.  */
    String lastUpdatedBy
    /* Current exchange rate to the USD for the single unit of the currency.  */
    Double rateUsd
    /* Value of the current total traded. */
    Double traded
}
