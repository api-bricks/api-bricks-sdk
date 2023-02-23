goog.provide('API.Client.OrderHistory');

/**
 * @record
 */
API.Client.OrderHistory = function() {}

/**
 * Apikey
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.apikey;

/**
 * Exchange id
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.exchangeId;

/**
 * Client order id
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.clientOrderId;

/**
 * Symbol id exchange
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.symbolIdExchange;

/**
 * Symbol id in coinapi
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.symbolIdCoinapi;

/**
 * Amount
 * @type {!number}
 * @export
 */
API.Client.OrderHistory.prototype.amountOrder;

/**
 * Price
 * @type {!number}
 * @export
 */
API.Client.OrderHistory.prototype.price;

/**
 * 1-buy, 2-sell
 * @type {!number}
 * @export
 */
API.Client.OrderHistory.prototype.side;

/**
 * Order type
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.orderType;

/**
 * Time in force
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.timeInForce;

/**
 * Expire time
 * @type {!API.Client.date}
 * @export
 */
API.Client.OrderHistory.prototype.expireTime;

/**
 * Exec inst
 * @type {!Array<!string>}
 * @export
 */
API.Client.OrderHistory.prototype.execInst;

/**
 * Client order id format
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.clientOrderIdFormatExchange;

/**
 * Exchange order id
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.exchangeOrderId;

/**
 * Amount open
 * @type {!number}
 * @export
 */
API.Client.OrderHistory.prototype.amountOpen;

/**
 * Amount filled
 * @type {!number}
 * @export
 */
API.Client.OrderHistory.prototype.amountFilled;

/**
 * Average price
 * @type {!number}
 * @export
 */
API.Client.OrderHistory.prototype.avgPx;

/**
 * Status
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.status;

/**
 * History status
 * @type {!Array<!string>}
 * @export
 */
API.Client.OrderHistory.prototype.statusHistoryStatus;

/**
 * History status time
 * @type {!Array<!API.Client.date>}
 * @export
 */
API.Client.OrderHistory.prototype.statusHistoryTime;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.errorMessageResult;

/**
 * Error message reason
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.errorMessageReason;

/**
 * Error message
 * @type {!string}
 * @export
 */
API.Client.OrderHistory.prototype.errorMessageMessage;

/**
 * Fills time
 * @type {!Array<!API.Client.date>}
 * @export
 */
API.Client.OrderHistory.prototype.fillsTime;

/**
 * Fills price
 * @type {!Array<!number>}
 * @export
 */
API.Client.OrderHistory.prototype.fillsPrice;

/**
 * Fills amount
 * @type {!Array<!number>}
 * @export
 */
API.Client.OrderHistory.prototype.fillsAmount;

/**
 * Created time
 * @type {!API.Client.date}
 * @export
 */
API.Client.OrderHistory.prototype.createdTime;

