goog.provide('API.Client.Dex.OrderDTO');

/**
 * Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.
 * @record
 */
API.Client.DexOrderDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.DexOrderDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.DexOrderDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.DexOrderDTO.prototype.blockNumber;

/**
 * Identifier, format: (owner address)-(order id)
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.id;

/**
 * Reference to owner.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.owner;

/**
 * Order id.
 * @type {!number}
 * @export
 */
API.Client.DexOrderDTO.prototype.orderId;

/**
 * Batch id from which order became valid.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.fromBatchId;

/**
 * Start of epoch in which order was placed and became valid.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.fromEpoch;

/**
 * Batch id until which trade was still valid.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.untilBatchId;

/**
 * End of epoch in which order was placed.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.untilEpoch;

/**
 * Identifier of token that was bought.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.buyToken;

/**
 * Identifier of token that was sold.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.sellToken;

/**
 * Price enumerator.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.priceNumerator;

/**
 * Price denominator.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.priceDenominator;

/**
 * Maximum sell amount.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.maxSellAmount;

/**
 * Minimum receive amount.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.minReceiveAmount;

/**
 * Sold volume.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.soldVolume;

/**
 * Bought volume.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.boughtVolume;

/**
 * Epoch in which order was created.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.createEpoch;

/**
 * Epoch in which order was cancelled.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.cancelEpoch;

/**
 * Epoch in which order was deleted.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.deleteEpoch;

/**
 * Transaction hash.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.txHash;

/**
 * Event index within transaction.
 * @type {!string}
 * @export
 */
API.Client.DexOrderDTO.prototype.txLogIndex;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.DexOrderDTO.prototype.vid;

