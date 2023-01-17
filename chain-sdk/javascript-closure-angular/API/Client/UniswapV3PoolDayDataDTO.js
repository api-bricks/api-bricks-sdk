goog.provide('API.Client.UniswapV3.PoolDayDataDTO');

/**
 * Data accumulated and condensed into day stats for each pool.
 * @record
 */
API.Client.UniswapV3PoolDayDataDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.blockNumber;

/**
 * Identifier, format: (pool address)-(day id).
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.id;

/**
 * Timestamp rounded to current day by dividing by 86400
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.date;

/**
 * Pointer to pool.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.pool;

/**
 * In range liquidity at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.liquidity;

/**
 * Current price tracker at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.sqrtPrice;

/**
 * Price of token0 - derived from sqrtPrice.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.token0Price;

/**
 * Price of token1 - derived from sqrtPrice.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.token1Price;

/**
 * Current tick at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.tick;

/**
 * Tracker for global fee growth.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.feeGrowthGlobal0x128;

/**
 * Tracker for global fee growth.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.feeGrowthGlobal1x128;

/**
 * Total value locked derived in USD at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.tvlUsd;

/**
 * Volume in token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.volumeToken0;

/**
 * Volume in token1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.volumeToken1;

/**
 * Volume in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.volumeUsd;

/**
 * Fees in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.feesUsd;

/**
 * Number of transactions during period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.txCount;

/**
 * Opening price of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.open;

/**
 * High price of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.high;

/**
 * Low price of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.low;

/**
 * Close price of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.close;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PoolDayDataDTO.prototype.vid;

