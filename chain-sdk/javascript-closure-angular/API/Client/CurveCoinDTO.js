goog.provide('API.Client.Curve.CoinDTO');

/**
 * @record
 */
API.Client.CurveCoinDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.CurveCoinDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.CurveCoinDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.CurveCoinDTO.prototype.blockNumber;

/**
 * Identifier, format: (pool_id)-(coin_index).
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.id;

/**
 * Coin index.
 * @type {!number}
 * @export
 */
API.Client.CurveCoinDTO.prototype.index;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.pool;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.token;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.underlying;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.balance;

/**
 * Exchange rate between this coin and the associated underlying coin within the pool.
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.rate;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.updated;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.updatedAtBlock;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.updatedAtTransaction;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.CurveCoinDTO.prototype.vid;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.CurveCoinDTO.prototype.blockRange;

