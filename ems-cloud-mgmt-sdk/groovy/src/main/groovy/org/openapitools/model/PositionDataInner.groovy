package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.OrdSide;

@Canonical
class PositionDataInner {
    /* Exchange symbol. */
    String symbolIdExchange
    /* CoinAPI symbol. */
    String symbolIdCoinapi
    /* Calculated average price of all fills on this position. */
    BigDecimal avgEntryPrice
    /* The current position quantity. */
    BigDecimal quantity
    
    OrdSide side
    /* Unrealised profit or loss (PNL) of this position. */
    BigDecimal unrealizedPnl
    /* Leverage for this position reported by the exchange. */
    BigDecimal leverage
    /* Is cross margin mode enable for this position? */
    Boolean crossMargin
    /* Liquidation price. If mark price will reach this value, the position will be liquidated. */
    BigDecimal liquidationPrice
    
    Object rawData
}
