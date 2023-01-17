goog.provide('API.Client.Sushiswap.LiquidityPositionSnapshotDTO');

/**
 * This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 * @record
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.blockNumber;

/**
 * Identifier, format: (pair address)-(user address)-(timestamp)
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.id;

/**
 * Reference to LP identifier.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.liquidityPosition;

/**
 * Creation time.
 * @type {!number}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.timestamp;

/**
 * Block in which snapshot has been created.
 * @type {!number}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.block;

/**
 * Reference to user.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.user;

/**
 * Reference to the pair liquidity is being provided on.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.pair;

/**
 * Snapshot of token0 price in USD.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.token0PriceUsd;

/**
 * Snapshot of token0 price in USD.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.token1PriceUsd;

/**
 * Snapshot of pair token0 reserves.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.reserve0;

/**
 * Snapshot of pair token1 reserves.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.reserve1;

/**
 * Snapshot of pair reserves in USD.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.reserveUsd;

/**
 * Snapshot of pool token supply.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.liquidityTokenTotalSupply;

/**
 * Snapshot of users pool token balance.
 * @type {!string}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.liquidityTokenBalance;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.SushiswapLiquidityPositionSnapshotDTO.prototype.vid;

