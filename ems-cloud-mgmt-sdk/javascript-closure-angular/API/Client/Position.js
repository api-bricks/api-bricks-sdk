goog.provide('API.Client.Position');

/**
 * @record
 */
API.Client.Position = function() {}

/**
 * Exchange identifier used to identify the routing destination.
 * @type {!string}
 * @export
 */
API.Client.Position.prototype.exchangeId;

/**
 * @type {!Array<!API.Client.Position_data_inner>}
 * @export
 */
API.Client.Position.prototype.data;

