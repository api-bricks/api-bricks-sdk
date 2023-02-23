goog.provide('API.Client.Fills');

/**
 * @record
 */
API.Client.Fills = function() {}

/**
 * Execution time.
 * @type {!API.Client.date}
 * @export
 */
API.Client.Fills.prototype.time;

/**
 * Execution price.
 * @type {!number}
 * @export
 */
API.Client.Fills.prototype.price;

/**
 * Executed quantity.
 * @type {!number}
 * @export
 */
API.Client.Fills.prototype.amount;

