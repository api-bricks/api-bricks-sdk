goog.provide('API.Client.Sushiswap.BurnDTO');

/**
 * Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 * @record
 */
API.Client.SushiswapBurnDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.blockNumber;

/**
 * Identifier, format: (transaction id):(transaction.burns.length).
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.id;

/**
 * Reference to the transaction Burn was included in.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.transaction;

/**
 * Timestamp of Burn, used to sort recent liquidity removals.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.timestamp;

/**
 * Reference to pair.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.pair;

/**
 * Amount of liquidity tokens burned.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.liquidity;

/**
 * Address that initiated the liquidity removal.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.sender;

/**
 * Amount of token0 removed.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.amount0;

/**
 * Amount of token1 removed.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.amount1;

/**
 * Recipient of tokens.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.to;

/**
 * Index in the transaction event was emitted.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.logIndex;

/**
 * Derived amount based on available prices of tokens.
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.amountUsd;

/**
 * 
 * @type {!boolean}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.complete;

/**
 * Address of fee recipient (if fee is on).
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.feeTo;

/**
 * Amount of tokens sent to fee recipient (if fee is on).
 * @type {!string}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.feeLiquidity;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.SushiswapBurnDTO.prototype.vid;

