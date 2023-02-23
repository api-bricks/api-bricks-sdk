goog.provide('API.Client.OrderNewSingleRequest');

/**
 * The new order message.
 * @record
 */
API.Client.OrderNewSingleRequest = function() {}

/**
 * Exchange identifier used to identify the routing destination.
 * @type {!string}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.exchangeId;

/**
 * The unique identifier of the order assigned by the client.
 * @type {!string}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.clientOrderId;

/**
 * Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
 * @type {!string}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.symbolIdExchange;

/**
 * CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
 * @type {!string}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.symbolIdCoinapi;

/**
 * Order quantity.
 * @type {!number}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.amountOrder;

/**
 * Order price.
 * @type {!number}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.price;

/**
 * @type {!API.Client.OrdSide}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.side;

/**
 * @type {!API.Client.OrdType}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.orderType;

/**
 * @type {!API.Client.TimeInForce}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.timeInForce;

/**
 * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
 * @type {!API.Client.date}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.expireTime;

/**
 * Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
 * @type {!Array<!string>}
 * @export
 */
API.Client.OrderNewSingleRequest.prototype.execInst;

/** @enum {string} */
API.Client.OrderNewSingleRequest.Array&lt;!ExecInstEnum&gt; = { 
  MAKER_OR_CANCEL: 'MAKER_OR_CANCEL',
  AUCTION_ONLY: 'AUCTION_ONLY',
  INDICATION_OF_INTEREST: 'INDICATION_OF_INTEREST',
}
