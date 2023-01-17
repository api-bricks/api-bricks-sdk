goog.provide('API.Client.Sushiswap.PairDayDataDTO');

/**
 * Tracks pair data across each day.
 * @record
 */
API.Client.SushiswapPairDayDataDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.blockNumber;

/**
 * Identifier, format: (pair id)-(day start timestamp).
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.id;

/**
 * Unix timestamp for start of day.
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.date;

/**
 * Reference to pair.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.pair;

/**
 * Reference to token0.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.token0;

/**
 * Reference to token1.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.token1;

/**
 * Reserve of token0 (updated during each transaction on pair).
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.reserve0;

/**
 * Reserve of token1 (updated during each transaction on pair).
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.reserve1;

/**
 * Total supply of liquidity token distributed to LPs.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.totalSupply;

/**
 * Reserve of token0 plus token1 stored as a derived USD amount.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.reserveUsd;

/**
 * Total amount of token0 swapped throughout day.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.volumeToken0;

/**
 * Total amount of token1 swapped throughout day.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.volumeToken1;

/**
 * Total volume within pair throughout day.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.volumeUsd;

/**
 * Amount of transactions on pair throughout day.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.txCount;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairDayDataDTO.prototype.vid;

