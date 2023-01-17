goog.provide('API.Client.Sushiswap.PairHourDataDTO');

/**
 * Tracks pair data across each hour.
 * @record
 */
API.Client.SushiswapPairHourDataDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.blockNumber;

/**
 * Identifier, format: (pair id)-(hour start timestamp).
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.id;

/**
 * Hour start timestamp.
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.date;

/**
 * Reference to pair.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.pair;

/**
 * Reserve of token0 (updated during each transaction on pair).
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.reserve0;

/**
 * Reserve of token1 (updated during each transaction on pair).
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.reserve1;

/**
 * Reserve of token0 plus token1 stored as a derived USD amount.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.reserveUsd;

/**
 * Total amount of token0 swapped throughout hour.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.volumeToken0;

/**
 * Total amount of token1 swapped throughout hour.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.volumeToken1;

/**
 * Total volume within pair throughout hour.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.volumeUsd;

/**
 * Amount of transactions on pair throughout hour.
 * @type {!string}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.txCount;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.SushiswapPairHourDataDTO.prototype.vid;

