#ifndef _MetadataManager_H_
#define _MetadataManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "MarketDataMetadata.Asset.h"
#include "MarketDataMetadata.Chain.h"
#include "MarketDataMetadata.Exchange.h"
#include "MarketDataMetadata.Icon.h"
#include "MarketDataMetadata.Symbol.h"
#include "V1.SymbolMapping.h"
#include <list>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Metadata Metadata
 * \ingroup Operations
 *  @{
 */
class MetadataManager {
public:
	MetadataManager();
	virtual ~MetadataManager();

/*! \brief List all assets by asset ID. *Synchronous*
 *
 * 
 * \param assetId The asset ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsAssetIdGetSync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<MarketDataMetadata.Asset>, Error, void* )
	, void* userData);

/*! \brief List all assets by asset ID. *Asynchronous*
 *
 * 
 * \param assetId The asset ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsAssetIdGetAsync(char * accessToken,
	std::string assetId, 
	void(* handler)(std::list<MarketDataMetadata.Asset>, Error, void* )
	, void* userData);


/*! \brief List all assets. *Synchronous*
 *
 * Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
 * \param filterAssetType Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsGetSync(char * accessToken,
	std::string filterAssetId, std::string filterAssetType, 
	void(* handler)(std::list<MarketDataMetadata.Asset>, Error, void* )
	, void* userData);

/*! \brief List all assets. *Asynchronous*
 *
 * Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterAssetId Comma or semicolon delimited asset identifiers used to filter response. (optional, eg. `BTC;ETH`).
 * \param filterAssetType Optional asset type filter. Allowed values: FIAT, STABLECOIN, CRYPTO, COMMODITY, STOCK.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsGetAsync(char * accessToken,
	std::string filterAssetId, std::string filterAssetType, 
	void(* handler)(std::list<MarketDataMetadata.Asset>, Error, void* )
	, void* userData);


/*! \brief List all asset icons. *Synchronous*
 *
 * Gets the list of icons (of the given size) for all the assets.
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsIconsSizeGetSync(char * accessToken,
	int size, 
	void(* handler)(std::list<MarketDataMetadata.Icon>, Error, void* )
	, void* userData);

/*! \brief List all asset icons. *Asynchronous*
 *
 * Gets the list of icons (of the given size) for all the assets.
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1AssetsIconsSizeGetAsync(char * accessToken,
	int size, 
	void(* handler)(std::list<MarketDataMetadata.Icon>, Error, void* )
	, void* userData);


/*! \brief List all chains by chain ID. *Synchronous*
 *
 * 
 * \param chainId The chain ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ChainsChainIdGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<MarketDataMetadata.Chain>, Error, void* )
	, void* userData);

/*! \brief List all chains by chain ID. *Asynchronous*
 *
 * 
 * \param chainId The chain ID. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ChainsChainIdGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<MarketDataMetadata.Chain>, Error, void* )
	, void* userData);


/*! \brief List all blockchain chains. *Synchronous*
 *
 * Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterChainId Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ChainsGetSync(char * accessToken,
	std::string filterChainId, 
	void(* handler)(std::list<MarketDataMetadata.Chain>, Error, void* )
	, void* userData);

/*! \brief List all blockchain chains. *Asynchronous*
 *
 * Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterChainId Comma or semicolon delimited chain identifiers used to filter response. (optional, eg. `ETHEREUM;ARBITRUM`).
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ChainsGetAsync(char * accessToken,
	std::string filterChainId, 
	void(* handler)(std::list<MarketDataMetadata.Chain>, Error, void* )
	, void* userData);


/*! \brief List all exchanges by exchange_id. *Synchronous*
 *
 * 
 * \param exchangeId The ID of the exchange. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesExchangeIdGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<MarketDataMetadata.Exchange>, Error, void* )
	, void* userData);

/*! \brief List all exchanges by exchange_id. *Asynchronous*
 *
 * 
 * \param exchangeId The ID of the exchange. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<MarketDataMetadata.Exchange>, Error, void* )
	, void* userData);


/*! \brief List all exchanges. *Synchronous*
 *
 * Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterExchangeId Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesGetSync(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<MarketDataMetadata.Exchange>, Error, void* )
	, void* userData);

/*! \brief List all exchanges. *Asynchronous*
 *
 * Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
 * \param filterExchangeId Comma or semicolon delimited exchange identifiers used to filter response. (optional, eg. `BITSTAMP;GEMINI`)
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesGetAsync(char * accessToken,
	std::string filterExchangeId, 
	void(* handler)(std::list<MarketDataMetadata.Exchange>, Error, void* )
	, void* userData);


/*! \brief List of icons for the exchanges. *Synchronous*
 *
 * 
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesIconsSizeGetSync(char * accessToken,
	int size, 
	void(* handler)(std::list<MarketDataMetadata.Icon>, Error, void* )
	, void* userData);

/*! \brief List of icons for the exchanges. *Asynchronous*
 *
 * 
 * \param size The size of the icons. *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1ExchangesIconsSizeGetAsync(char * accessToken,
	int size, 
	void(* handler)(std::list<MarketDataMetadata.Icon>, Error, void* )
	, void* userData);


/*! \brief List all active symbols. *Synchronous*
 *
 * Retrieves all currently active (listed) symbols, with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}` OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}` FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange
 * \param exchangeId The ID of the exchange. *Required*
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
 * \param filterAssetId The filter for asset ID.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsExchangeIdActiveGetSync(char * accessToken,
	std::string exchangeId, std::string filterSymbolId, std::string filterAssetId, 
	void(* handler)(std::list<MarketDataMetadata.Symbol>, Error, void* )
	, void* userData);

/*! \brief List all active symbols. *Asynchronous*
 *
 * Retrieves all currently active (listed) symbols, with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}` OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}` FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange
 * \param exchangeId The ID of the exchange. *Required*
 * \param filterSymbolId Comma or semicolon delimited parts of symbol identifier used to filter response. (optional, eg. `BITSTAMP`_ or `BINANCE_SPOT_`)
 * \param filterAssetId The filter for asset ID.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsExchangeIdActiveGetAsync(char * accessToken,
	std::string exchangeId, std::string filterSymbolId, std::string filterAssetId, 
	void(* handler)(std::list<MarketDataMetadata.Symbol>, Error, void* )
	, void* userData);


/*! \brief List all historical symbols for an exchange.. *Synchronous*
 *
 * This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.
 * \param exchangeId The ID of the exchange. *Required*
 * \param page The page number for pagination (starts from 1).
 * \param limit Number of records to return per page.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsExchangeIdHistoryGetSync(char * accessToken,
	std::string exchangeId, int page, int limit, 
	void(* handler)(std::list<MarketDataMetadata.Symbol>, Error, void* )
	, void* userData);

/*! \brief List all historical symbols for an exchange.. *Asynchronous*
 *
 * This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.
 * \param exchangeId The ID of the exchange. *Required*
 * \param page The page number for pagination (starts from 1).
 * \param limit Number of records to return per page.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsExchangeIdHistoryGetAsync(char * accessToken,
	std::string exchangeId, int page, int limit, 
	void(* handler)(std::list<MarketDataMetadata.Symbol>, Error, void* )
	, void* userData);


/*! \brief List active symbol mapping for the exchange. *Synchronous*
 *
 * 
 * \param exchangeId The ID of the exchange (from the Metadata -> Exchanges) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsMapExchangeIdGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.SymbolMapping>, Error, void* )
	, void* userData);

/*! \brief List active symbol mapping for the exchange. *Asynchronous*
 *
 * 
 * \param exchangeId The ID of the exchange (from the Metadata -> Exchanges) *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool v1SymbolsMapExchangeIdGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<V1.SymbolMapping>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://rest.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* MetadataManager_H_ */
