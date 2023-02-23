goog.provide('API.Client.OrderExecutionReport_allOf');

/**
 * The order execution report message.
 * @record
 */
API.Client.OrderExecutionReportAllOf = function() {}

/**
 * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.clientOrderIdFormatExchange;

/**
 * Unique identifier of the order assigned by the exchange or executing system.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.exchangeOrderId;

/**
 * Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.amountOpen;

/**
 * Total quantity filled.
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.amountFilled;

/**
 * Calculated average price of all fills on this order.
 * @type {!number}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.avgPx;

/**
 * @type {!API.Client.OrdStatus}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.status;

/**
 * Timestamped history of order status changes.
 * @type {!Array<!Array<!string>>}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.statusHistory;

/**
 * Error message.
 * @type {!string}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.errorMessage;

/**
 * Relay fill information on working orders.
 * @type {!Array<!API.Client.Fills>}
 * @export
 */
API.Client.OrderExecutionReportAllOf.prototype.fills;

