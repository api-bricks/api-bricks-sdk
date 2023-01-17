goog.provide('API.Client.Sushiswap.LiquidityPositionDTO');

/**
 * @record
 */
API.Client.SushiswapLiquidityPositionDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.blockNumber;

/**
 * Identifier, format: (pair address)-(user address)
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.id;

/**
 * User address.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.user;

/**
 * Pair address.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.pair;

/**
 * Amount of LP tokens minted for this position.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.liquidityTokenBalance;

/**
 * Block number at which position was created.
 * @type {!number}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.block;

/**
 * Creation time.
 * @type {!number}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.timestamp;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.SushiswapLiquidityPositionDTO.prototype.vid;

