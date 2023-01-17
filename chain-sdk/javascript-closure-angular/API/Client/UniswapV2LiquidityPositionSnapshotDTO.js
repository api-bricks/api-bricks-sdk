goog.provide('API.Client.UniswapV2.LiquidityPositionSnapshotDTO');

/**
 * This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 * @record
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.blockNumber;

/**
 * Identifier, format: (pair address)-(user address)
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.id;

/**
 * Reference to LP identifier.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.liquidityPosition;

/**
 * Creation time.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.timestamp;

/**
 * Number of block in which LP snapshot was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.block;

/**
 * Reference to user.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.user;

/**
 * Reference to the pair liquidity is being provided on.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.pair;

/**
 * Snapshot of token0 price.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.token0PriceUsd;

/**
 * Snapshot of token0 price.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.token1PriceUsd;

/**
 * Snapshot of pair token0 reserves.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.reserve0;

/**
 * Snapshot of pair token1 reserves.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.reserve1;

/**
 * Snapshot of pair reserves in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.reserveUsd;

/**
 * Snapshot of pool token supply.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.liquidityTokenTotalSupply;

/**
 * Snapshot of users pool token balance.
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.liquidityTokenBalance;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.vid;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.UniswapV2LiquidityPositionSnapshotDTO.prototype.blockRange;

