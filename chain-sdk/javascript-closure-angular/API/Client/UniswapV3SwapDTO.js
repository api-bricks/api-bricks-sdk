goog.provide('API.Client.UniswapV3.SwapDTO');

/**
 * Swap are created for each token swap within a pair.
 * @record
 */
API.Client.UniswapV3SwapDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.blockNumber;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.vid;

/**
 * Identifier, format: (transaction hash) + # + (index in swaps Transaction array).
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.id;

/**
 * Pointer to transaction.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.transaction;

/**
 * Timestamp of transaction.
 * @type {!Date}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.timestamp;

/**
 * Pool swap occured within.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.pool;

/**
 * Reference to token0 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.token0;

/**
 * Reference to token1 as stored in pair contract.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.token1;

/**
 * Sender of the swap.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.sender;

/**
 * Recipient of the swap.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.recipient;

/**
 * Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.origin;

/**
 * Delta of token0 swapped.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.amount0;

/**
 * Delta of token1 swapped.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.amount1;

/**
 * Derived amount of tokens sold in USD.
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.amountUsd;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.sqrtPriceX96;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.tick;

/**
 * @type {!API.Client.Numerics.BigInteger}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.logIndex;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.evaluatedPrice;

/**
 * @type {!number}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.evaluatedAmount;

/**
 * @type {!API.Client.Transactions.ETradeAggressiveSide}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.evaluatedAggressor;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.poolId;

/**
 * @type {!string}
 * @export
 */
API.Client.UniswapV3SwapDTO.prototype.transactionId;

