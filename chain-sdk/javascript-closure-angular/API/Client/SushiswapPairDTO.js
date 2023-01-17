goog.provide('API.Client.Sushiswap.PairDTO');

/**
 * Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 * @record
 */
API.Client.SushiswapPairDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.blockNumber;

/**
 * Pair contract address.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.id;

/**
 * Factory contract address.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.factory;

/**
 * Friendly name, format: (token0 name)-(token1 name)
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.name;

/**
 * Reference to token0 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.token0;

/**
 * Reference to token0 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.token1;

/**
 * Reserve of token0.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.reserve0;

/**
 * Reserve of token1.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.reserve1;

/**
 * Total supply of liquidity token distributed to LPs.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.totalSupply;

/**
 * Total liquidity in pair stored as an amount of ETH.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.reserveEth;

/**
 * Total liquidity amount in pair stored as an amount of USD.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.reserveUsd;

/**
 * Total liquidity with only tracked amount.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.trackedReserveEth;

/**
 * Token0 per token1.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.token0Price;

/**
 * Token1 per token0.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.token1Price;

/**
 * Amount of token0 swapped on this pair.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.volumeToken0;

/**
 * Amount of token1 swapped on this pair.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.volumeToken1;

/**
 * Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.volumeUsd;

/**
 * Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.untrackedVolumeUsd;

/**
 * All time amount of transactions on this pair.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.txCount;

/**
 * Total number of LPs.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.liquidityProviderCount;

/**
 * Timestamp.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.timestamp;

/**
 * Block number in which pair information was created in.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.block;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.vid;

/**
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairDTO.prototype.evaluatedAsk;

