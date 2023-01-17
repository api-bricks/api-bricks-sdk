goog.provide('API.Client.UniswapV3.TickDayDataDTO');

/**
 * Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
 * @record
 */
API.Client.UniswapV3TickDayDataDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.blockNumber;

/**
 * Identifier, format: (pool address)-(tick index)-(timestamp).
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.id;

/**
 * Timestamp rounded to current day by dividing by 86400.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.date;

/**
 * Pointer to pool.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.pool;

/**
 * Pointer to tick.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.tick;

/**
 * Total liquidity pool has as tick lower or upper at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.liquidityGross;

/**
 * How much liquidity changes when tick crossed at end of period.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.liquidityNet;

/**
 * Hourly volume of token0 with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.volumeToken0;

/**
 * Hourly volume of token1 with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.volumeToken1;

/**
 * Hourly volume in derived USD with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.volumeUsd;

/**
 * Fees in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.feesUsd;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.feeGrowthOutside0x128;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.feeGrowthOutside1x128;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TickDayDataDTO.prototype.vid;

