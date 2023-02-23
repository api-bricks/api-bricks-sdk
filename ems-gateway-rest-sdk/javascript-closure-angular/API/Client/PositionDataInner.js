goog.provide('API.Client.Position_data_inner');

/**
 * The Position object.
 * @record
 */
API.Client.PositionDataInner = function() {}

/**
 * Exchange symbol.
 * @type {!string}
 * @export
 */
API.Client.PositionDataInner.prototype.symbolIdExchange;

/**
 * CoinAPI symbol.
 * @type {!string}
 * @export
 */
API.Client.PositionDataInner.prototype.symbolIdCoinapi;

/**
 * Calculated average price of all fills on this position.
 * @type {!number}
 * @export
 */
API.Client.PositionDataInner.prototype.avgEntryPrice;

/**
 * The current position quantity.
 * @type {!number}
 * @export
 */
API.Client.PositionDataInner.prototype.quantity;

/**
 * @type {!API.Client.OrdSide}
 * @export
 */
API.Client.PositionDataInner.prototype.side;

/**
 * Unrealised profit or loss (PNL) of this position.
 * @type {!number}
 * @export
 */
API.Client.PositionDataInner.prototype.unrealizedPnl;

/**
 * Leverage for this position reported by the exchange.
 * @type {!number}
 * @export
 */
API.Client.PositionDataInner.prototype.leverage;

/**
 * Is cross margin mode enable for this position?
 * @type {!boolean}
 * @export
 */
API.Client.PositionDataInner.prototype.crossMargin;

/**
 * Liquidation price. If mark price will reach this value, the position will be liquidated.
 * @type {!number}
 * @export
 */
API.Client.PositionDataInner.prototype.liquidationPrice;

/**
 * @type {!API.Client.Object}
 * @export
 */
API.Client.PositionDataInner.prototype.rawData;

