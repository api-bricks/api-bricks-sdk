goog.provide('API.Client.Cow.TradeDTO');

/**
 * Trade entity.
 * @record
 */
API.Client.CowTradeDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.CowTradeDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.CowTradeDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.CowTradeDTO.prototype.blockNumber;

/**
 * Identifier, format: (order id)|(transaction hash)|(event index).
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.id;

/**
 * Block's timestamp.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.timestamp;

/**
 * Transaction's gas price.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.gasPrice;

/**
 * Transaction's gas limit.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.gasLimit;

/**
 * Trade's fee amount.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.feeAmount;

/**
 * Trade event transaction hash.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.txHash;

/**
 * Reference to settlement.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.settlement;

/**
 * Buy amount.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.buyAmount;

/**
 * Sell amount.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.sellAmount;

/**
 * Address of token that is sold.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.sellToken;

/**
 * Address of token that is bought.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.buyToken;

/**
 * Reference to order.
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.order;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.CowTradeDTO.prototype.vid;

/**
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.poolId;

/**
 * @type {!string}
 * @export
 */
API.Client.CowTradeDTO.prototype.transactionId;

/**
 * @type {!number}
 * @export
 */
API.Client.CowTradeDTO.prototype.evaluatedPrice;

/**
 * @type {!number}
 * @export
 */
API.Client.CowTradeDTO.prototype.evaluatedAmount;

/**
 * @type {!API.Client.Transactions.ETradeAggressiveSide}
 * @export
 */
API.Client.CowTradeDTO.prototype.evaluatedAggressor;

