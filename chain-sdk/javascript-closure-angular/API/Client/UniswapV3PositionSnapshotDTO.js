goog.provide('API.Client.UniswapV3.PositionSnapshotDTO');

/**
 * @record
 */
API.Client.UniswapV3PositionSnapshotDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.blockNumber;

/**
 * NFT token identifier, format: (NFT token id)#(block number).
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.id;

/**
 * Owner of the NFT.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.owner;

/**
 * Pool the position is within.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.pool;

/**
 * Position of which the snap was taken of.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.position;

/**
 * Timestamp of block in which the snap was created.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.timestamp;

/**
 * Total position liquidity.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.liquidity;

/**
 * Amount of token 0 ever deposited to position.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.depositedToken0;

/**
 * Amount of token 1 ever deposited to position.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.depositedToken1;

/**
 * Amount of token 0 ever withdrawn from position (without fees).
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.withdrawnToken0;

/**
 * Amount of token 1 ever withdrawn from position (without fees).
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.withdrawnToken1;

/**
 * All time collected fees in token0.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.collectedFeesToken0;

/**
 * All time collected fees in token1.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.collectedFeesToken1;

/**
 * Transaction in which the snapshot was initialized.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.transaction;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.feeGrowthInside0LastX128;

/**
 * Variable needed for fee computation.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.feeGrowthInside1LastX128;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3PositionSnapshotDTO.prototype.vid;

