(ns on-chain-dapps-rest-api.api.cryptopunks
  (:require [on-chain-dapps-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [on-chain-dapps-rest-api.specs.sushiswap/factory-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-type-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-weight-vote-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/token-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-withdraw-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/burn-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/deposit-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/mint-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/pool-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/trade-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/proposal-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/liquidity-position-snapshot-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/bid-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/swap-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/position-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/liquidity-position-snapshot-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/pair-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/transfer-ownership-event-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/proposal-vote-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/coin-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/transaction-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/item-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/account-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/underlying-coin-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cow/trade-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-deposit-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/transaction-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/token-v3-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/trade-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/withdraw-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-liquidity-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/pool-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/token-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cow/settlement-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-weight-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/swap-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/factory-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/bundle-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cow/order-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-total-weight-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/pair-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/swap-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/hourly-volume-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/price-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/solution-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/pool-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/hour-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/collection-daily-snapshot-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/contract-version-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/pair-hour-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/tick-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/remove-liquidity-one-event-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cow/token-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/batch-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/token-hour-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/order-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/token-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/user-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cow/user-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/user-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/admin-fee-change-log-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/gauge-type-weight-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/collection-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/voting-app-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/system-state-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/data-sources-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/add-liquidity-event-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/exchange-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/pair-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/bundle-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/mint-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/amplification-coeff-change-log-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/liquidity-position-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/user-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/transaction-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/token-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/token-dto :refer :all]
            [on-chain-dapps-rest-api.specs.transactions/e-trade-aggressive-side :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/token-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/pair-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/burn-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/user-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/uniswap-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/uniswap-day-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/fee-change-log-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/bundle-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/weekly-volume-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/pool-hour-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/contract-dto :refer :all]
            [on-chain-dapps-rest-api.specs.numerics/big-integer :refer :all]
            [on-chain-dapps-rest-api.specs.dex/withdraw-request-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/lp-token-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/pair-hour-data-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/daily-volume-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/burn-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/tick-dto :refer :all]
            [on-chain-dapps-rest-api.specs.dex/stats-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/market-place-dto :refer :all]
            [on-chain-dapps-rest-api.specs.sushiswap/liquidity-position-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/uniswap-factory-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v3/position-snapshot-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/mint-dto :refer :all]
            [on-chain-dapps-rest-api.specs.cryptopunks/marketplace-daily-snapshot-dto :refer :all]
            [on-chain-dapps-rest-api.specs.uniswap-v2/token-dto :refer :all]
            [on-chain-dapps-rest-api.specs.curve/remove-liquidity-event-dto :refer :all]
            )
  (:import (java.io File)))


(defn-spec c-ryptopunks-bids-current-with-http-info any?
  "Bids (current)
  Gets bids."
  []
  (call-api "/dapps/cryptopunks/bids/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-bids-current (s/coll-of cryptopunks/bid-dto-spec)
  "Bids (current)
  Gets bids."
  []
  (let [res (:data (c-ryptopunks-bids-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/bid-dto-spec) res st/string-transformer)
       res)))


(defn-spec c-ryptopunks-collection-daily-snapshots-current-with-http-info any?
  "CollectionDailySnapshots (current)
  Gets collectionDailySnapshots."
  []
  (call-api "/dapps/cryptopunks/collectionDailySnapshots/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-collection-daily-snapshots-current (s/coll-of cryptopunks/collection-daily-snapshot-dto-spec)
  "CollectionDailySnapshots (current)
  Gets collectionDailySnapshots."
  []
  (let [res (:data (c-ryptopunks-collection-daily-snapshots-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/collection-daily-snapshot-dto-spec) res st/string-transformer)
       res)))


(defn-spec c-ryptopunks-collections-current-with-http-info any?
  "Collections (current)
  Gets collections."
  []
  (call-api "/dapps/cryptopunks/collections/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-collections-current (s/coll-of cryptopunks/collection-dto-spec)
  "Collections (current)
  Gets collections."
  []
  (let [res (:data (c-ryptopunks-collections-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/collection-dto-spec) res st/string-transformer)
       res)))


(defn-spec c-ryptopunks-data-sources-current-with-http-info any?
  "DataSources (current)
  Gets dataSources."
  []
  (call-api "/dapps/cryptopunks/dataSources/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-data-sources-current (s/coll-of cryptopunks/data-sources-dto-spec)
  "DataSources (current)
  Gets dataSources."
  []
  (let [res (:data (c-ryptopunks-data-sources-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/data-sources-dto-spec) res st/string-transformer)
       res)))


(defn-spec c-ryptopunks-get-bids-historical-with-http-info any?
  "Bids (historical)
  Gets bids."
  ([] (c-ryptopunks-get-bids-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/bids/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-bids-historical (s/coll-of cryptopunks/bid-dto-spec)
  "Bids (historical)
  Gets bids."
  ([] (c-ryptopunks-get-bids-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-bids-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/bid-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-get-collection-daily-snapshots-historical-with-http-info any?
  "CollectionDailySnapshots (historical)
  Gets collectionDailySnapshots."
  ([] (c-ryptopunks-get-collection-daily-snapshots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/collectionDailySnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-collection-daily-snapshots-historical (s/coll-of cryptopunks/collection-daily-snapshot-dto-spec)
  "CollectionDailySnapshots (historical)
  Gets collectionDailySnapshots."
  ([] (c-ryptopunks-get-collection-daily-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-collection-daily-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/collection-daily-snapshot-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-get-collections-historical-with-http-info any?
  "Collections (historical)
  Gets collections."
  ([] (c-ryptopunks-get-collections-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/collections/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-collections-historical (s/coll-of cryptopunks/collection-dto-spec)
  "Collections (historical)
  Gets collections."
  ([] (c-ryptopunks-get-collections-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-collections-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/collection-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-get-data-sources-historical-with-http-info any?
  "DataSources (historical)
  Gets dataSources."
  ([] (c-ryptopunks-get-data-sources-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/dataSources/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-data-sources-historical (s/coll-of cryptopunks/data-sources-dto-spec)
  "DataSources (historical)
  Gets dataSources."
  ([] (c-ryptopunks-get-data-sources-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-data-sources-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/data-sources-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-get-items-historical-with-http-info any?
  "Items (historical)
  Gets items."
  ([] (c-ryptopunks-get-items-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/items/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-items-historical (s/coll-of cryptopunks/item-dto-spec)
  "Items (historical)
  Gets items."
  ([] (c-ryptopunks-get-items-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-items-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/item-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-get-market-places-historical-with-http-info any?
  "MarketPlaces (historical)
  Gets marketPlaces."
  ([] (c-ryptopunks-get-market-places-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/marketPlaces/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-market-places-historical (s/coll-of cryptopunks/market-place-dto-spec)
  "MarketPlaces (historical)
  Gets marketPlaces."
  ([] (c-ryptopunks-get-market-places-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-market-places-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/market-place-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-get-marketplace-daily-snapshots-historical-with-http-info any?
  "MarketplaceDailySnapshots (historical)
  Gets marketplaceDailySnapshots."
  ([] (c-ryptopunks-get-marketplace-daily-snapshots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/marketplaceDailySnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-marketplace-daily-snapshots-historical (s/coll-of cryptopunks/marketplace-daily-snapshot-dto-spec)
  "MarketplaceDailySnapshots (historical)
  Gets marketplaceDailySnapshots."
  ([] (c-ryptopunks-get-marketplace-daily-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-marketplace-daily-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/marketplace-daily-snapshot-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-get-trades-historical-with-http-info any?
  "Trades (historical)
  Gets trades."
  ([] (c-ryptopunks-get-trades-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/trades/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-trades-historical (s/coll-of cryptopunks/trade-dto-spec)
  "Trades (historical)
  Gets trades."
  ([] (c-ryptopunks-get-trades-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-trades-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/trade-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-get-users-historical-with-http-info any?
  "Users (historical)
  Gets users."
  ([] (c-ryptopunks-get-users-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cryptopunks/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec c-ryptopunks-get-users-historical (s/coll-of cryptopunks/user-dto-spec)
  "Users (historical)
  Gets users."
  ([] (c-ryptopunks-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (c-ryptopunks-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cryptopunks/user-dto-spec) res st/string-transformer)
        res))))


(defn-spec c-ryptopunks-items-current-with-http-info any?
  "Items (current)
  Gets items."
  []
  (call-api "/dapps/cryptopunks/items/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-items-current (s/coll-of cryptopunks/item-dto-spec)
  "Items (current)
  Gets items."
  []
  (let [res (:data (c-ryptopunks-items-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/item-dto-spec) res st/string-transformer)
       res)))


(defn-spec c-ryptopunks-market-places-current-with-http-info any?
  "MarketPlaces (current)
  Gets marketPlaces."
  []
  (call-api "/dapps/cryptopunks/marketPlaces/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-market-places-current (s/coll-of cryptopunks/market-place-dto-spec)
  "MarketPlaces (current)
  Gets marketPlaces."
  []
  (let [res (:data (c-ryptopunks-market-places-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/market-place-dto-spec) res st/string-transformer)
       res)))


(defn-spec c-ryptopunks-marketplace-daily-snapshots-current-with-http-info any?
  "MarketplaceDailySnapshots (current)
  Gets marketplaceDailySnapshots."
  []
  (call-api "/dapps/cryptopunks/marketplaceDailySnapshots/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-marketplace-daily-snapshots-current (s/coll-of cryptopunks/marketplace-daily-snapshot-dto-spec)
  "MarketplaceDailySnapshots (current)
  Gets marketplaceDailySnapshots."
  []
  (let [res (:data (c-ryptopunks-marketplace-daily-snapshots-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/marketplace-daily-snapshot-dto-spec) res st/string-transformer)
       res)))


(defn-spec c-ryptopunks-trades-current-with-http-info any?
  "Trades (current)
  Gets trades."
  []
  (call-api "/dapps/cryptopunks/trades/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-trades-current (s/coll-of cryptopunks/trade-dto-spec)
  "Trades (current)
  Gets trades."
  []
  (let [res (:data (c-ryptopunks-trades-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/trade-dto-spec) res st/string-transformer)
       res)))


(defn-spec c-ryptopunks-users-current-with-http-info any?
  "Users (current)
  Gets users."
  []
  (call-api "/dapps/cryptopunks/users/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec c-ryptopunks-users-current (s/coll-of cryptopunks/user-dto-spec)
  "Users (current)
  Gets users."
  []
  (let [res (:data (c-ryptopunks-users-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cryptopunks/user-dto-spec) res st/string-transformer)
       res)))


