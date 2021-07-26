goog.provide('API.Client.MessageReject');

/**
 * @record
 */
API.Client.MessageReject = function() {}

/**
 * Message type, constant.
 * @type {!string}
 * @export
 */
API.Client.MessageReject.prototype.type;

/**
 * @type {!API.Client.RejectReason}
 * @export
 */
API.Client.MessageReject.prototype.rejectReason;

/**
 * If the message related to exchange, then the identifier of the exchange will be provided.
 * @type {!string}
 * @export
 */
API.Client.MessageReject.prototype.exchangeId;

/**
 * Message text.
 * @type {!string}
 * @export
 */
API.Client.MessageReject.prototype.message;

/**
 * Value of rejected request, if available.
 * @type {!string}
 * @export
 */
API.Client.MessageReject.prototype.rejectedMessage;

