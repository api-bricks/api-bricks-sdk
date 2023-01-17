goog.provide('API.Client.Dex.WithdrawRequestDTO');

/**
 * Withdraw request of an user
 * @record
 */
API.Client.DexWithdrawRequestDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.blockNumber;

/**
 * Identifier, format: (transaction hash)-(id).
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.id;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.user;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.tokenAddress;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.amount;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.withdrawableFromBatchId;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.createEpoch;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.createBatchId;

/**
 * 
 * @type {!string}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.txHash;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.DexWithdrawRequestDTO.prototype.vid;

