goog.provide('API.Client.Dex.DepositDTO');

/**
 * Deposit of an user.
 * @record
 */
API.Client.DexDepositDTO = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.DexDepositDTO.prototype.entryTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.DexDepositDTO.prototype.recvTime;

/**
 * Number of block in which entity was recorded.
 * @type {!number}
 * @export
 */
API.Client.DexDepositDTO.prototype.blockNumber;

/**
 * Identifier, format: (transaction hash)-(token id).
 * @type {!string}
 * @export
 */
API.Client.DexDepositDTO.prototype.id;

/**
 * User address.
 * @type {!string}
 * @export
 */
API.Client.DexDepositDTO.prototype.user;

/**
 * Token address.
 * @type {!string}
 * @export
 */
API.Client.DexDepositDTO.prototype.tokenAddress;

/**
 * Amount of deposit.
 * @type {!string}
 * @export
 */
API.Client.DexDepositDTO.prototype.amount;

/**
 * Identifier (numerical).
 * @type {!string}
 * @export
 */
API.Client.DexDepositDTO.prototype.batchId;

/**
 * Create epoch.
 * @type {!string}
 * @export
 */
API.Client.DexDepositDTO.prototype.createEpoch;

/**
 * Transaction hash.
 * @type {!string}
 * @export
 */
API.Client.DexDepositDTO.prototype.txHash;

/**
 * 
 * @type {!number}
 * @export
 */
API.Client.DexDepositDTO.prototype.vid;

