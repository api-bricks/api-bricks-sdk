goog.provide('API.Client.UniswapV3.TickDTO');

/**
 * Ticks are the boundaries between discrete areas in price space.
 * @record
 */
API.Client.UniswapV3TickDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.vid;

/**
 * Identifier, format: (pool address)#(tick index)
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.id;

/**
 * Pool address.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.poolAddress;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.tickIdx;

/**
 * Pool address.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.pool;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.liquidityGross;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.liquidityNet;

/**
 * Calculated price of token0 of tick within this pool - constant.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.price0;

/**
 * Calculated price of token1 of tick within this pool - constant.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.price1;

/**
 * Lifetime volume of token0 with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.volumeToken0;

/**
 * Lifetime volume of token1 with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.volumeToken1;

/**
 * Lifetime volume in derived USD with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.volumeUsd;

/**
 * Lifetime volume in untracked USD with this tick in range.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.untrackedVolumeUsd;

/**
 * Fees in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.feesUsd;

/**
 * All time collected fees in token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.collectedFeesToken0;

/**
 * All time collected fees in token1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.collectedFeesToken1;

/**
 * All time collected fees in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.collectedFeesUsd;

/**
 * Created time.
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.createdAtTimestamp;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.liquidityProviderCount;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.feeGrowthOutside0x128;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3TickDTO.prototype.feeGrowthOutside1x128;

