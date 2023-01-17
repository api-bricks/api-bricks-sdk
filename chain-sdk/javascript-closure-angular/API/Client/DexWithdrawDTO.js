goog.provide('API.Client.Dex.WithdrawDTO');

/**
 * Withdraw of an user.
 * @record
 */
API.Client.DexWithdrawDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.blockNumber;

/**
 * Identifier, format: (transaction hash)-(id).
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.id;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.user;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.tokenAddress;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.amount;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.createEpoch;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.createBatchId;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.txHash;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.DexWithdrawDTO.prototype.vid;

