goog.provide('API.Client.OrderCancelAllRequest');

/**
 * Cancel all orders request object.
 * @record
 */
API.Client.OrderCancelAllRequest = function() {}

/**
 * Identifier of the exchange from which active orders should be canceled.
 * @type {!string}
 * @export
 */
API.Client.OrderCancelAllRequest.prototype.exchangeId;

