goog.provide('API.Client.Balance_data_inner');

/**
 * @record
 */
API.Client.BalanceDataInner = function() {}

/**
 * Exchange currency code.
 * @type {!string}
 * @export
 */
API.Client.BalanceDataInner.prototype.assetIdExchange;

/**
 * CoinAPI currency code.
 * @type {!string}
 * @export
 */
API.Client.BalanceDataInner.prototype.assetIdCoinapi;

/**
 * Value of the current total currency balance on the exchange.
 * @type {!number}
 * @export
 */
API.Client.BalanceDataInner.prototype.balance;

/**
 * Value of the current available currency balance on the exchange that can be used as collateral.
 * @type {!number}
 * @export
 */
API.Client.BalanceDataInner.prototype.available;

/**
 * Value of the current locked currency balance by the exchange.
 * @type {!number}
 * @export
 */
API.Client.BalanceDataInner.prototype.locked;

/**
 * Source of the last modification. 
 * @type {!string}
 * @export
 */
API.Client.BalanceDataInner.prototype.lastUpdatedBy;

/**
 * Current exchange rate to the USD for the single unit of the currency. 
 * @type {!number}
 * @export
 */
API.Client.BalanceDataInner.prototype.rateUsd;

/**
 * Value of the current total traded.
 * @type {!number}
 * @export
 */
API.Client.BalanceDataInner.prototype.traded;

/** @enum {string} */
API.Client.BalanceDataInner.LastUpdatedByEnum = { 
  INITIALIZATION: 'INITIALIZATION',
  BALANCE_MANAGER: 'BALANCE_MANAGER',
  EXCHANGE: 'EXCHANGE',
}
