//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for MetadataApi
void main() {
  // final instance = MetadataApi();

  group('tests for MetadataApi', () {
    // List all assets by asset ID
    //
    //Future<List<MarketDataMetadataAsset>> v1AssetsAssetIdGet(String assetId) async
    test('test v1AssetsAssetIdGet', () async {
      // TODO
    });

    // List all assets
    //
    // Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
    //
    //Future<List<MarketDataMetadataAsset>> v1AssetsGet({ String filterAssetId, String filterAssetType }) async
    test('test v1AssetsGet', () async {
      // TODO
    });

    // List all asset icons
    //
    // Gets the list of icons (of the given size) for all the assets.
    //
    //Future<List<MarketDataMetadataIcon>> v1AssetsIconsSizeGet(int size) async
    test('test v1AssetsIconsSizeGet', () async {
      // TODO
    });

    // List all chains by chain ID
    //
    //Future<List<MarketDataMetadataChain>> v1ChainsChainIdGet(String chainId) async
    test('test v1ChainsChainIdGet', () async {
      // TODO
    });

    // List all blockchain chains
    //
    // Retrieves all blockchain chains supported by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
    //
    //Future<List<MarketDataMetadataChain>> v1ChainsGet({ String filterChainId }) async
    test('test v1ChainsGet', () async {
      // TODO
    });

    // List all exchanges by exchange_id
    //
    //Future<List<MarketDataMetadataExchange>> v1ExchangesExchangeIdGet(String exchangeId) async
    test('test v1ExchangesExchangeIdGet', () async {
      // TODO
    });

    // List all exchanges
    //
    // Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
    //
    //Future<List<MarketDataMetadataExchange>> v1ExchangesGet({ String filterExchangeId }) async
    test('test v1ExchangesGet', () async {
      // TODO
    });

    // List of icons for the exchanges
    //
    //Future<List<MarketDataMetadataIcon>> v1ExchangesIconsSizeGet(int size) async
    test('test v1ExchangesIconsSizeGet', () async {
      // TODO
    });

    // List all active symbols
    //
    // Retrieves all currently active (listed) symbols, with optional filtering.              :::info \"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges. :::              :::info You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately. :::              ### Symbol identifier              Our symbol identifier is created using a pattern that depends on symbol type.              Type | `symbol_id` pattern --------- | --------- SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}` FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}` OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}` PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}` DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}` INDEX | `{exchange_id}_IDX_{index_id}` CREDIT | `{exchange_id}_CRE_{asset_id_base}` CONTACT  | `{exchange_id}_COT_{contract_id}` OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}` FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`              :::info In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them. :::info              ### Symbol types list (enumeration of `symbol_type` output variable)              Type | Name | Description -------- | - | ----------- SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)* FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)* INDEX | Index | Statistical composite that measures changes in the economy or markets. CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate. CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)* OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)* FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*              ### Additional output variables for `symbol_type = INDEX`              Variable | Description --------- | ----------- index_id | Index identifier index_display_name | Human readable name of the index *(optional)* index_display_description | Description of the index *(optional)*              ### Additional output variables for `symbol_type = FUTURES`              Variable | Description --------- | ----------- future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601 future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`              Variable | Description --------- | ----------- future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)* future_contract_unit_asset | Identifier of the asset used to denominate the contract unit              ### Additional output variables for `symbol_type = OPTION`              Variable | Description --------- | ----------- option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options option_strike_price | Price at which option contract can be exercised option_contract_unit | Base asset amount of underlying spot which single option represents option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN` option_expiration_time | Option contract expiration time in ISO 8601              ### Additional output variables for `symbol_type = CONTRACT`              Variable | Description --------- | ----------- contract_delivery_time | Predetermined time of contract delivery date in ISO 8601 contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)* contract_unit_asset | Identifier of the asset used to denominate the contract unit contract_id | Identifier of contract by the exchange
    //
    //Future<List<MarketDataMetadataSymbol>> v1SymbolsExchangeIdActiveGet(String exchangeId, { String filterSymbolId, String filterAssetId }) async
    test('test v1SymbolsExchangeIdActiveGet', () async {
      // TODO
    });

    // List all historical symbols for an exchange.
    //
    // This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange. The data is provided with pagination support.
    //
    //Future<List<MarketDataMetadataSymbol>> v1SymbolsExchangeIdHistoryGet(String exchangeId, { int page, int limit }) async
    test('test v1SymbolsExchangeIdHistoryGet', () async {
      // TODO
    });

    // List active symbol mapping for the exchange
    //
    //Future<List<V1SymbolMapping>> v1SymbolsMapExchangeIdGet(String exchangeId) async
    test('test v1SymbolsMapExchangeIdGet', () async {
      // TODO
    });

  });
}
