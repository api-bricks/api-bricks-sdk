goog.provide('API.Client.ValidationError');

/**
 * @record
 */
API.Client.ValidationError = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ValidationError.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.ValidationError.prototype.title;

/**
 * @type {!number}
 * @export
 */
API.Client.ValidationError.prototype.status;

/**
 * @type {!string}
 * @export
 */
API.Client.ValidationError.prototype.traceId;

/**
 * @type {!string}
 * @export
 */
API.Client.ValidationError.prototype.errors;

