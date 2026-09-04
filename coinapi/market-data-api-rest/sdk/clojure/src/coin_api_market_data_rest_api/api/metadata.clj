(ns coin-api-market-data-rest-api.api.metadata
  (:require [coin-api-market-data-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [coin-api-market-data-rest-api.specs.v1/metric-data :refer :all]
            [coin-api-market-data-rest-api.specs.v1/listing-item :refer :all]
            [coin-api-market-data-rest-api.specs.v1/order-book-depth :refer :all]
            [coin-api-market-data-rest-api.specs.v1/metric-info :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange-rates :refer :all]
            [coin-api-market-data-rest-api.specs.ohlcv/exchange-timeseries-item :refer :all]
            [coin-api-market-data-rest-api.specs.market-data-metadata/asset :refer :all]
            [coin-api-market-data-rest-api.specs.v1/quote :refer :all]
            [coin-api-market-data-rest-api.specs.v1/symbol-mapping :refer :all]
            [coin-api-market-data-rest-api.specs.v1/general-data :refer :all]
            [coin-api-market-data-rest-api.specs.market-data-metadata/exchange :refer :all]
            [coin-api-market-data-rest-api.specs.v1/quote-trade :refer :all]
            [coin-api-market-data-rest-api.specs.v1/last-trade :refer :all]
            [coin-api-market-data-rest-api.specs.v1/option-exchange-group :refer :all]
            [coin-api-market-data-rest-api.specs.market-data-metadata/symbol :refer :all]
            [coin-api-market-data-rest-api.specs.v1/metric :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange-rates-timeseries-item :refer :all]
            [coin-api-market-data-rest-api.specs.v1/order-book :refer :all]
            [coin-api-market-data-rest-api.specs.v1/timeseries-period :refer :all]
            [coin-api-market-data-rest-api.specs.v1/trade :refer :all]
            [coin-api-market-data-rest-api.specs.v1/strike :refer :all]
            [coin-api-market-data-rest-api.specs.v1/chain-network-address :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange-rates-rate :refer :all]
            [coin-api-market-data-rest-api.specs.v1/exchange-rate :refer :all]
            [coin-api-market-data-rest-api.specs.v1/order-book-base :refer :all]
            [coin-api-market-data-rest-api.specs.v1/timeseries-item :refer :all]
            [coin-api-market-data-rest-api.specs.market-data-metadata/chain :refer :all]
            [coin-api-market-data-rest-api.specs.market-data-metadata/icon :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-assets-asset-id-get-with-http-info any?
  "List all assets by asset ID"
  [asset_id string?]
  (check-required-params asset_id)
  (call-api "/v1/assets/{asset_id}" :get
            {:path-params   {"asset_id" asset_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-assets-asset-id-get (s/coll-of market-data-metadata/asset-spec)
  "List all assets by asset ID"
  [asset_id string?]
  (let [res (:data (v1-assets-asset-id-get-with-http-info asset_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of market-data-metadata/asset-spec) res st/string-transformer)
       res)))


(defn-spec v1-assets-get-with-http-info any?
  "List all assets
  Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-assets-get-with-http-info nil))
  ([{:keys [filter_asset_id filter_asset_type]} (s/map-of keyword? any?)]
   (call-api "/v1/assets" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_asset_id" filter_asset_id "filter_asset_type" filter_asset_type }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-assets-get (s/coll-of market-data-metadata/asset-spec)
  "List all assets
  Retrieves all assets.
            
:::info
Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).
:::
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-assets-get nil))
  ([optional-params any?]
   (let [res (:data (v1-assets-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of market-data-metadata/asset-spec) res st/string-transformer)
        res))))


(defn-spec v1-assets-icons-size-get-with-http-info any?
  "List all asset icons
  Gets the list of icons (of the given size) for all the assets."
  [size int?]
  (check-required-params size)
  (call-api "/v1/assets/icons/{size}" :get
            {:path-params   {"size" size }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-assets-icons-size-get (s/coll-of market-data-metadata/icon-spec)
  "List all asset icons
  Gets the list of icons (of the given size) for all the assets."
  [size int?]
  (let [res (:data (v1-assets-icons-size-get-with-http-info size))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of market-data-metadata/icon-spec) res st/string-transformer)
       res)))


(defn-spec v1-chains-chain-id-get-with-http-info any?
  "List all chains by chain ID"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/v1/chains/{chain_id}" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-chains-chain-id-get (s/coll-of market-data-metadata/chain-spec)
  "List all chains by chain ID"
  [chain_id string?]
  (let [res (:data (v1-chains-chain-id-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of market-data-metadata/chain-spec) res st/string-transformer)
       res)))


(defn-spec v1-chains-get-with-http-info any?
  "List all blockchain chains
  Retrieves all blockchain chains supported by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-chains-get-with-http-info nil))
  ([{:keys [filter_chain_id]} (s/map-of keyword? any?)]
   (call-api "/v1/chains" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_chain_id" filter_chain_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-chains-get (s/coll-of market-data-metadata/chain-spec)
  "List all blockchain chains
  Retrieves all blockchain chains supported by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific chain. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-chains-get nil))
  ([optional-params any?]
   (let [res (:data (v1-chains-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of market-data-metadata/chain-spec) res st/string-transformer)
        res))))


(defn-spec v1-exchanges-exchange-id-get-with-http-info any?
  "List all exchanges by exchange_id"
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/v1/exchanges/{exchange_id}" :get
            {:path-params   {"exchange_id" exchange_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-exchanges-exchange-id-get (s/coll-of market-data-metadata/exchange-spec)
  "List all exchanges by exchange_id"
  [exchange_id string?]
  (let [res (:data (v1-exchanges-exchange-id-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of market-data-metadata/exchange-spec) res st/string-transformer)
       res)))


(defn-spec v1-exchanges-get-with-http-info any?
  "List all exchanges
  Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-exchanges-get-with-http-info nil))
  ([{:keys [filter_exchange_id]} (s/map-of keyword? any?)]
   (call-api "/v1/exchanges" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_exchange_id" filter_exchange_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-exchanges-get (s/coll-of market-data-metadata/exchange-spec)
  "List all exchanges
  Get a detailed list of exchanges provided by the system.
            
:::info
Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.
:::"
  ([] (v1-exchanges-get nil))
  ([optional-params any?]
   (let [res (:data (v1-exchanges-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of market-data-metadata/exchange-spec) res st/string-transformer)
        res))))


(defn-spec v1-exchanges-icons-size-get-with-http-info any?
  "List of icons for the exchanges"
  [size int?]
  (check-required-params size)
  (call-api "/v1/exchanges/icons/{size}" :get
            {:path-params   {"size" size }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-exchanges-icons-size-get (s/coll-of market-data-metadata/icon-spec)
  "List of icons for the exchanges"
  [size int?]
  (let [res (:data (v1-exchanges-icons-size-get-with-http-info size))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of market-data-metadata/icon-spec) res st/string-transformer)
       res)))


(defn-spec v1-symbols-exchange-id-active-get-with-http-info any?
  "List all active symbols
  Retrieves all currently active (listed) symbols, with optional filtering.
            
:::info
\"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.
:::
            
:::info
You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.
:::
            
### Symbol identifier
            
Our symbol identifier is created using a pattern that depends on symbol type.
            
Type | `symbol_id` pattern
--------- | ---------
SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`
FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`
OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`
PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`
DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}`
INDEX | `{exchange_id}_IDX_{index_id}`
CREDIT | `{exchange_id}_CRE_{asset_id_base}`
CONTACT  | `{exchange_id}_COT_{contract_id}`
OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}`
FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`
            
:::info
In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.
:::info
            
### Symbol types list (enumeration of `symbol_type` output variable)
            
Type | Name | Description
-------- | - | -----------
SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*
FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time
OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date
PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time
DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)*
INDEX | Index | Statistical composite that measures changes in the economy or markets.
CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.
CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*
OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)*
FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*
            
### Additional output variables for `symbol_type = INDEX`
            
Variable | Description
--------- | -----------
index_id | Index identifier
index_display_name | Human readable name of the index *(optional)*
index_display_description | Description of the index *(optional)*
            
### Additional output variables for `symbol_type = FUTURES`
            
Variable | Description
--------- | -----------
future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = PERPETUAL`
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = OPTION`
            
Variable | Description
--------- | -----------
option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options
option_strike_price | Price at which option contract can be exercised
option_contract_unit | Base asset amount of underlying spot which single option represents
option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`
option_expiration_time | Option contract expiration time in ISO 8601
            
### Additional output variables for `symbol_type = CONTRACT`
            
Variable | Description
--------- | -----------
contract_delivery_time | Predetermined time of contract delivery date in ISO 8601
contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*
contract_unit_asset | Identifier of the asset used to denominate the contract unit
contract_id | Identifier of contract by the exchange"
  ([exchange_id string?, ] (v1-symbols-exchange-id-active-get-with-http-info exchange_id nil))
  ([exchange_id string?, {:keys [filter_symbol_id filter_asset_id]} (s/map-of keyword? any?)]
   (check-required-params exchange_id)
   (call-api "/v1/symbols/{exchange_id}/active" :get
             {:path-params   {"exchange_id" exchange_id }
              :header-params {}
              :query-params  {"filter_symbol_id" filter_symbol_id "filter_asset_id" filter_asset_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-symbols-exchange-id-active-get (s/coll-of market-data-metadata/symbol-spec)
  "List all active symbols
  Retrieves all currently active (listed) symbols, with optional filtering.
            
:::info
\"price_precision\" and \"size_precision\" are data precisions and are not always the same precisions used for trading eg. for the \"BINANCE\" exchanges.
:::
            
:::info
You should not assume that the market data will be always within the resolution provided by the \"price_precision\" and \"size_precision\". The fact that the precision values can be derived from a posterior implies the fact that this data could be delayed, also it can be changed by the data source without notice and we will immediately deliver data with the new precision while could not update the precision values in this endpoint immediately.
:::
            
### Symbol identifier
            
Our symbol identifier is created using a pattern that depends on symbol type.
            
Type | `symbol_id` pattern
--------- | ---------
SPOT | `{exchange_id}_SPOT_{asset_id_base}_{asset_id_quote}`
FUTURES | `{exchange_id}_FTS_{asset_id_base}_{asset_id_quote}_{YYMMDD of future_delivery_time}`
OPTION | `{exchange_id}_OPT_{asset_id_base}_{asset_id_quote}_{YYMMDD of option_expiration_time}_{option_strike_price}_{option_type_is_call as C/P}`
PERPETUAL | `{exchange_id}_PERP_{asset_id_base}_{asset_id_quote}`
DEPLOYER_PERPETUAL | `{exchange_id}_DPERP_{deployer_symbol}_{asset_id_quote}`
INDEX | `{exchange_id}_IDX_{index_id}`
CREDIT | `{exchange_id}_CRE_{asset_id_base}`
CONTACT  | `{exchange_id}_COT_{contract_id}`
OPTION_COMBO | `{exchange_id}_OPTCMB_{exchange_symbol_id}`
FUTURE_COMBO | `{exchange_id}_FTSCMB_{exchange_symbol_id}`
            
:::info
In the unlikely event when the \"symbol_id\" for more than one market is the same. We will append the additional term (prefixed with the \"_\") at the end of the duplicated identifiers to differentiate them.
:::info
            
### Symbol types list (enumeration of `symbol_type` output variable)
            
Type | Name | Description
-------- | - | -----------
SPOT | FX Spot | Agreement to exchange one asset for another one *(e.g. Buy BTC for USD)*
FUTURES | Futures contract | FX Spot derivative contract where traders agree to trade fx spot at predetermined future time
OPTION | Option contract | FX Spot derivative contract where traders agree to trade right to require buy or sell of fx spot at agreed price on exercise date
PERPETUAL | Perpetual contract | FX Spot derivative contract where traders agree to trade fx spot continously without predetermined future delivery time
DEPLOYER_PERPETUAL | Deployer Perpetual contract | Perpetual contract for user-deployed markets *(e.g. Hyperliquid user-deployed perpetuals)*
INDEX | Index | Statistical composite that measures changes in the economy or markets.
CREDIT | Credit/Funding | Margin funding contract. Order book displays lending offers and borrow bids. Price represents the daily rate.
CONTRACT | Contract | Represents other types of financial instruments *(e.g. spreads, interest rate swap)*
OPTION_COMBO | Option Combo | Multi-leg option strategy combining two or more option positions *(e.g. put spread, protective collar)*
FUTURE_COMBO | Future Combo | Multi-leg futures calendar spread combining two futures positions *(e.g. futures vs perpetual)*
            
### Additional output variables for `symbol_type = INDEX`
            
Variable | Description
--------- | -----------
index_id | Index identifier
index_display_name | Human readable name of the index *(optional)*
index_display_description | Description of the index *(optional)*
            
### Additional output variables for `symbol_type = FUTURES`
            
Variable | Description
--------- | -----------
future_delivery_time | Predetermined time of futures contract delivery date in ISO 8601
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = PERPETUAL`
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = DEPLOYER_PERPETUAL`
            
Variable | Description
--------- | -----------
future_contract_unit | Contact size *(eg. 10 BTC if `future_contract_unit` = `10` and `future_contract_unit_asset` = `BTC`)*
future_contract_unit_asset | Identifier of the asset used to denominate the contract unit
            
### Additional output variables for `symbol_type = OPTION`
            
Variable | Description
--------- | -----------
option_type_is_call | Boolean value representing option type. `true` for Call options, `false` for Put options
option_strike_price | Price at which option contract can be exercised
option_contract_unit | Base asset amount of underlying spot which single option represents
option_exercise_style | Option exercise style. Can be `EUROPEAN` or `AMERICAN`
option_expiration_time | Option contract expiration time in ISO 8601
            
### Additional output variables for `symbol_type = CONTRACT`
            
Variable | Description
--------- | -----------
contract_delivery_time | Predetermined time of contract delivery date in ISO 8601
contract_unit | Contact size *(eg. 10 BTC if `contract_unit` = `10` and `contract_unit_asset` = `BTC`)*
contract_unit_asset | Identifier of the asset used to denominate the contract unit
contract_id | Identifier of contract by the exchange"
  ([exchange_id string?, ] (v1-symbols-exchange-id-active-get exchange_id nil))
  ([exchange_id string?, optional-params any?]
   (let [res (:data (v1-symbols-exchange-id-active-get-with-http-info exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of market-data-metadata/symbol-spec) res st/string-transformer)
        res))))


(defn-spec v1-symbols-exchange-id-history-get-with-http-info any?
  "List all historical symbols for an exchange.
  This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange.
The data is provided with pagination support."
  ([exchange_id string?, ] (v1-symbols-exchange-id-history-get-with-http-info exchange_id nil))
  ([exchange_id string?, {:keys [page limit]} (s/map-of keyword? any?)]
   (check-required-params exchange_id)
   (call-api "/v1/symbols/{exchange_id}/history" :get
             {:path-params   {"exchange_id" exchange_id }
              :header-params {}
              :query-params  {"page" page "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-symbols-exchange-id-history-get (s/coll-of market-data-metadata/symbol-spec)
  "List all historical symbols for an exchange.
  This endpoint provides access to symbols that are no longer actively traded or listed on a given exchange.
The data is provided with pagination support."
  ([exchange_id string?, ] (v1-symbols-exchange-id-history-get exchange_id nil))
  ([exchange_id string?, optional-params any?]
   (let [res (:data (v1-symbols-exchange-id-history-get-with-http-info exchange_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of market-data-metadata/symbol-spec) res st/string-transformer)
        res))))


(defn-spec v1-symbols-map-exchange-id-get-with-http-info any?
  "List active symbol mapping for the exchange"
  [exchange_id string?]
  (check-required-params exchange_id)
  (call-api "/v1/symbols/map/{exchange_id}" :get
            {:path-params   {"exchange_id" exchange_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json" "application/x-msgpack"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-symbols-map-exchange-id-get (s/coll-of v1/symbol-mapping-spec)
  "List active symbol mapping for the exchange"
  [exchange_id string?]
  (let [res (:data (v1-symbols-map-exchange-id-get-with-http-info exchange_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of v1/symbol-mapping-spec) res st/string-transformer)
       res)))


