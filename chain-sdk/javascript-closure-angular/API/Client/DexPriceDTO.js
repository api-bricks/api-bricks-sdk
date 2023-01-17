goog.provide('API.Client.Dex.PriceDTO');

/**
 * Token price in conjuction with batch id.
 * @record
 */
API.Client.DexPriceDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.DexPriceDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.DexPriceDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.DexPriceDTO.prototype.blockNumber;

/**
 * Identifier, format: (token id)-(batch id).
 * @type {!string}
 * @export
 */
API.Client.DexPriceDTO.prototype.id;

/**
 * Token identifier.
 * @type {!string}
 * @export
 */
API.Client.DexPriceDTO.prototype.token;

/**
 * Batch identifier.
 * @type {!string}
 * @export
 */
API.Client.DexPriceDTO.prototype.batchId;

/**
 * Price enumerator in OWL (derivative of the GNO token).
 * @type {!string}
 * @export
 */
API.Client.DexPriceDTO.prototype.priceInOwlNumerator;

/**
 * Price denominator in OWL (derivative of the GNO token).
 * @type {!string}
 * @export
 */
API.Client.DexPriceDTO.prototype.priceInOwlDenominator;

/**
 * Volume.
 * @type {!string}
 * @export
 */
API.Client.DexPriceDTO.prototype.volume;

/**
 * Create epoch.
 * @type {!string}
 * @export
 */
API.Client.DexPriceDTO.prototype.createEpoch;

/**
 * Transaction hash.
 * @type {!string}
 * @export
 */
API.Client.DexPriceDTO.prototype.txHash;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.DexPriceDTO.prototype.vid;

