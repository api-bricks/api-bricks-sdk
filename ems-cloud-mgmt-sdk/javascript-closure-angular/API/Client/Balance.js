goog.provide('API.Client.Balance');

/**
 * @record
 */
API.Client.Balance = function() {}

/**
 * Exchange identifier used to identify the routing destination.
 * @type {!string}
 * @export
 */
API.Client.Balance.prototype.exchangeId;

/**
 * @type {!Array<!API.Client.Balance_data_inner>}
 * @export
 */
API.Client.Balance.prototype.data;

