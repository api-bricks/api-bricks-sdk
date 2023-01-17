goog.provide('API.Client.Curve.UnderlyingCoinDTO');

/**
 * @record
 */
API.Client.CurveUnderlyingCoinDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.blockNumber;

/**
 * Equals to: (pool_id)-(coin_index).
 * @type {!string}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.id;

/**
 * Coin index.
 * @type {!number}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.index;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.pool;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.token;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.coin;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.balance;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.updated;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.updatedAtBlock;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.updatedAtTransaction;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.CurveUnderlyingCoinDTO.prototype.vid;

