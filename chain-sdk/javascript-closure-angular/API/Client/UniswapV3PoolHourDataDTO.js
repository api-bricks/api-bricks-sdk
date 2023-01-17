goog.provide('API.Client.UniswapV3.PoolHourDataDTO');

/**
 * Hourly stats tracker for pool.
 * @record
 */
API.Client.UniswapV3PoolHourDataDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.blockNumber;

/**
 * Identifier, format: (pool address)-(day id)
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.id;

/**
 * Unix timestamp for start of hour.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.periodStartUnix;

/**
 * Pointer to pool.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.pool;

/**
 * In range liquidity at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.liquidity;

/**
 * Current price tracker at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.sqrtPrice;

/**
 * Price of token0 - derived from sqrtPrice.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.token0Price;

/**
 * Price of token1 - derived from sqrtPrice.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.token1Price;

/**
 * Current tick at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.tick;

/**
 * Tracker for global fee growth.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.feeGrowthGlobal0x128;

/**
 * Tracker for global fee growth.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.feeGrowthGlobal1x128;

/**
 * Total value locked derived in USD at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.tvlUsd;

/**
 * Volume in token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.volumeToken0;

/**
 * Volume in token1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.volumeToken1;

/**
 * Volume in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.volumeUsd;

/**
 * Fees in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.feesUsd;

/**
 * Number of transactions during period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.txCount;

/**
 * Opening price of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.open;

/**
 * High price of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.high;

/**
 * Low price of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.low;

/**
 * Close price of token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.close;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PoolHourDataDTO.prototype.vid;

