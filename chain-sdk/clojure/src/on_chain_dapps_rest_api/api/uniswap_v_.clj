(ns on-chain-dapps-rest-api.api.uniswap-v-
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


(defn-spec uniswap-v2-bundles-current-with-http-info any?
  "Bundles (current)
  Gets bundles."
  []
  (call-api "/dapps/uniswapv2/bundles/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-bundles-current (s/coll-of uniswap-v2/bundle-dto-spec)
  "Bundles (current)
  Gets bundles."
  []
  (let [res (:data (uniswap-v2-bundles-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/bundle-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-burns-current-with-http-info any?
  "Burns (current)
  Gets burns."
  []
  (call-api "/dapps/uniswapv2/burns/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-burns-current (s/coll-of uniswap-v2/burn-dto-spec)
  "Burns (current)
  Gets burns."
  []
  (let [res (:data (uniswap-v2-burns-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/burn-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-get-bundles-historical-with-http-info any?
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v2-get-bundles-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-bundles-historical (s/coll-of uniswap-v2/bundle-dto-spec)
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v2-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/bundle-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-burns-historical-with-http-info any?
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v2-get-burns-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-burns-historical (s/coll-of uniswap-v2/burn-dto-spec)
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v2-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-burns-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/burn-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-position-snapshots-historical-with-http-info any?
  "LiquidityPositionSnapshots (historical)
  Gets liquidityPositionSnapshots."
  ([] (uniswap-v2-get-liquidity-position-snapshots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquidityPositionSnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-position-snapshots-historical (s/coll-of uniswap-v2/liquidity-position-snapshot-dto-spec)
  "LiquidityPositionSnapshots (historical)
  Gets liquidityPositionSnapshots."
  ([] (uniswap-v2-get-liquidity-position-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-position-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-snapshot-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-positions-historical-with-http-info any?
  "LiquidityPositions (historical)
  Gets liquidityPositions."
  ([] (uniswap-v2-get-liquidity-positions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquidityPositions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-positions-historical (s/coll-of uniswap-v2/liquidity-position-dto-spec)
  "LiquidityPositions (historical)
  Gets liquidityPositions."
  ([] (uniswap-v2-get-liquidity-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-mints-historical-with-http-info any?
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v2-get-mints-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-mints-historical (s/coll-of uniswap-v2/mint-dto-spec)
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v2-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/mint-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-day-data-historical-with-http-info any?
  "PairDayData (historical)
  Gets pairDayData."
  ([] (uniswap-v2-get-pair-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-day-data-historical (s/coll-of uniswap-v2/pair-day-data-dto-spec)
  "PairDayData (historical)
  Gets pairDayData."
  ([] (uniswap-v2-get-pair-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-hour-data-historical-with-http-info any?
  "PairHourData (historical)
  Gets pairHourData."
  ([] (uniswap-v2-get-pair-hour-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-hour-data-historical (s/coll-of uniswap-v2/pair-hour-data-dto-spec)
  "PairHourData (historical)
  Gets pairHourData."
  ([] (uniswap-v2-get-pair-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-hour-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pairs-historical-with-http-info any?
  "Pairs (historical)
  Gets pairs."
  ([] (uniswap-v2-get-pairs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pairs-historical (s/coll-of uniswap-v2/pair-dto-spec)
  "Pairs (historical)
  Gets pairs."
  ([] (uniswap-v2-get-pairs-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pairs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-swaps-historical-with-http-info any?
  "Swaps (historical)
  Gets swaps."
  ([] (uniswap-v2-get-swaps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-swaps-historical (s/coll-of uniswap-v2/swap-dto-spec)
  "Swaps (historical)
  Gets swaps."
  ([] (uniswap-v2-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-token-day-data-historical-with-http-info any?
  "TokenDayData (historical)
  Gets tokenDayData."
  ([] (uniswap-v2-get-token-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokenDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-token-day-data-historical (s/coll-of uniswap-v2/token-day-data-dto-spec)
  "TokenDayData (historical)
  Gets tokenDayData."
  ([] (uniswap-v2-get-token-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-token-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-tokens-historical-with-http-info any?
  "Tokens (historical)
  Gets tokens."
  ([] (uniswap-v2-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-tokens-historical (s/coll-of uniswap-v2/token-dto-spec)
  "Tokens (historical)
  Gets tokens."
  ([] (uniswap-v2-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-transactions-historical-with-http-info any?
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v2-get-transactions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-transactions-historical (s/coll-of uniswap-v2/transaction-dto-spec)
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v2-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/transaction-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-uniswap-day-data-historical-with-http-info any?
  "UniswapDayData (historical)
  Gets uniswapDayData."
  ([] (uniswap-v2-get-uniswap-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/uniswapDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-uniswap-day-data-historical (s/coll-of uniswap-v2/uniswap-day-data-dto-spec)
  "UniswapDayData (historical)
  Gets uniswapDayData."
  ([] (uniswap-v2-get-uniswap-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-uniswap-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-uniswap-factories-historical-with-http-info any?
  "UniswapFactories (historical)
  Gets uniswapFactories."
  ([] (uniswap-v2-get-uniswap-factories-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/uniswapFactories/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-uniswap-factories-historical (s/coll-of uniswap-v2/uniswap-factory-dto-spec)
  "UniswapFactories (historical)
  Gets uniswapFactories."
  ([] (uniswap-v2-get-uniswap-factories-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-uniswap-factories-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-factory-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-users-historical-with-http-info any?
  "Users (historical)
  Gets users."
  ([] (uniswap-v2-get-users-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-users-historical (s/coll-of uniswap-v2/user-dto-spec)
  "Users (historical)
  Gets users."
  ([] (uniswap-v2-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/user-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-liquidity-position-snapshots-current-with-http-info any?
  "LiquidityPositionSnapshots (current)
  Gets liquidityPositionSnapshots."
  []
  (call-api "/dapps/uniswapv2/liquidityPositionSnapshots/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-liquidity-position-snapshots-current (s/coll-of uniswap-v2/liquidity-position-snapshot-dto-spec)
  "LiquidityPositionSnapshots (current)
  Gets liquidityPositionSnapshots."
  []
  (let [res (:data (uniswap-v2-liquidity-position-snapshots-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/liquidity-position-snapshot-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-liquidity-positions-current-with-http-info any?
  "LiquidityPositions (current)
  Gets liquidityPositions."
  []
  (call-api "/dapps/uniswapv2/liquidityPositions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-liquidity-positions-current (s/coll-of uniswap-v2/liquidity-position-dto-spec)
  "LiquidityPositions (current)
  Gets liquidityPositions."
  []
  (let [res (:data (uniswap-v2-liquidity-positions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/liquidity-position-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-mints-current-with-http-info any?
  "Mints (current)
  Gets mints."
  []
  (call-api "/dapps/uniswapv2/mints/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-mints-current (s/coll-of uniswap-v2/mint-dto-spec)
  "Mints (current)
  Gets mints."
  []
  (let [res (:data (uniswap-v2-mints-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/mint-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-pair-day-data-current-with-http-info any?
  "PairDayData (current)
  Gets pairDayData."
  []
  (call-api "/dapps/uniswapv2/pairDayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-pair-day-data-current (s/coll-of uniswap-v2/pair-day-data-dto-spec)
  "PairDayData (current)
  Gets pairDayData."
  []
  (let [res (:data (uniswap-v2-pair-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/pair-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-pair-hour-data-current-with-http-info any?
  "PairHourData (current)
  Gets pairHourData."
  []
  (call-api "/dapps/uniswapv2/pairHourData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-pair-hour-data-current (s/coll-of uniswap-v2/pair-hour-data-dto-spec)
  "PairHourData (current)
  Gets pairHourData."
  []
  (let [res (:data (uniswap-v2-pair-hour-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/pair-hour-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-pairs-current-with-http-info any?
  "Pairs (current)
  Gets pairs."
  ([] (uniswap-v2-pairs-current-with-http-info nil))
  ([{:keys [id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairs/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-pairs-current (s/coll-of uniswap-v2/pair-dto-spec)
  "Pairs (current)
  Gets pairs."
  ([] (uniswap-v2-pairs-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-pairs-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-swaps-current-with-http-info any?
  "Swaps (current)
  Gets swaps."
  ([] (uniswap-v2-swaps-current-with-http-info nil))
  ([{:keys [pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/swaps/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-swaps-current (s/coll-of uniswap-v2/swap-dto-spec)
  "Swaps (current)
  Gets swaps."
  ([] (uniswap-v2-swaps-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-swaps-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-token-day-data-current-with-http-info any?
  "TokenDayData (current)
  Gets tokenDayData."
  []
  (call-api "/dapps/uniswapv2/tokenDayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-token-day-data-current (s/coll-of uniswap-v2/token-day-data-dto-spec)
  "TokenDayData (current)
  Gets tokenDayData."
  []
  (let [res (:data (uniswap-v2-token-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/token-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-tokens-current-with-http-info any?
  "Tokens (current)
  Gets tokens."
  []
  (call-api "/dapps/uniswapv2/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-tokens-current (s/coll-of uniswap-v2/token-dto-spec)
  "Tokens (current)
  Gets tokens."
  []
  (let [res (:data (uniswap-v2-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/token-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-transactions-current-with-http-info any?
  "Transactions (current)
  Gets transactions."
  []
  (call-api "/dapps/uniswapv2/transactions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-transactions-current (s/coll-of uniswap-v2/transaction-dto-spec)
  "Transactions (current)
  Gets transactions."
  []
  (let [res (:data (uniswap-v2-transactions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/transaction-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-uniswap-day-data-current-with-http-info any?
  "UniswapDayData (current)
  Gets uniswapDayData."
  []
  (call-api "/dapps/uniswapv2/uniswapDayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-uniswap-day-data-current (s/coll-of uniswap-v2/uniswap-day-data-dto-spec)
  "UniswapDayData (current)
  Gets uniswapDayData."
  []
  (let [res (:data (uniswap-v2-uniswap-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/uniswap-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-uniswap-factories-current-with-http-info any?
  "UniswapFactories (current)
  Gets uniswapFactories."
  []
  (call-api "/dapps/uniswapv2/uniswapFactories/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-uniswap-factories-current (s/coll-of uniswap-v2/uniswap-factory-dto-spec)
  "UniswapFactories (current)
  Gets uniswapFactories."
  []
  (let [res (:data (uniswap-v2-uniswap-factories-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/uniswap-factory-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-users-current-with-http-info any?
  "Users (current)
  Gets users."
  []
  (call-api "/dapps/uniswapv2/users/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-users-current (s/coll-of uniswap-v2/user-dto-spec)
  "Users (current)
  Gets users."
  []
  (let [res (:data (uniswap-v2-users-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/user-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-bundles-current-with-http-info any?
  "Bundles (current)
  Gets bundles."
  []
  (call-api "/dapps/uniswapv3/bundles/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-bundles-current (s/coll-of uniswap-v3/bundle-dto-spec)
  "Bundles (current)
  Gets bundles."
  []
  (let [res (:data (uniswap-v3-bundles-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/bundle-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-burns-current-with-http-info any?
  "Burns (current)
  Gets burns."
  []
  (call-api "/dapps/uniswapv3/burns/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-burns-current (s/coll-of uniswap-v3/burn-dto-spec)
  "Burns (current)
  Gets burns."
  []
  (let [res (:data (uniswap-v3-burns-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/burn-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-factories-current-with-http-info any?
  "Factories (current)
  Gets factories."
  []
  (call-api "/dapps/uniswapv3/factories/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-factories-current (s/coll-of uniswap-v3/factory-dto-spec)
  "Factories (current)
  Gets factories."
  []
  (let [res (:data (uniswap-v3-factories-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/factory-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-get-bundles-historical-with-http-info any?
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v3-get-bundles-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-bundles-historical (s/coll-of uniswap-v3/bundle-dto-spec)
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v3-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/bundle-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-burns-historical-with-http-info any?
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v3-get-burns-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-burns-historical (s/coll-of uniswap-v3/burn-dto-spec)
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v3-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-burns-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/burn-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-factories-historical-with-http-info any?
  "Factories (historical)
  Gets factories."
  ([] (uniswap-v3-get-factories-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/factories/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-factories-historical (s/coll-of uniswap-v3/factory-dto-spec)
  "Factories (historical)
  Gets factories."
  ([] (uniswap-v3-get-factories-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-factories-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/factory-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-mints-historical-with-http-info any?
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v3-get-mints-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-mints-historical (s/coll-of uniswap-v3/mint-dto-spec)
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v3-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/mint-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-day-data-historical-with-http-info any?
  "PoolDayData (historical)
  Gets poolDayData."
  ([] (uniswap-v3-get-pool-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-day-data-historical (s/coll-of uniswap-v3/pool-day-data-dto-spec)
  "PoolDayData (historical)
  Gets poolDayData."
  ([] (uniswap-v3-get-pool-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-hour-data-historical-with-http-info any?
  "PoolHourData (historical)
  Gets poolHourData."
  ([] (uniswap-v3-get-pool-hour-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-hour-data-historical (s/coll-of uniswap-v3/pool-hour-data-dto-spec)
  "PoolHourData (historical)
  Gets poolHourData."
  ([] (uniswap-v3-get-pool-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-historical-with-http-info any?
  "Pools (historical)
  Gets pools."
  ([] (uniswap-v3-get-pools-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pools-historical (s/coll-of uniswap-v3/pool-dto-spec)
  "Pools (historical)
  Gets pools."
  ([] (uniswap-v3-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-position-snapshots-historical-with-http-info any?
  "PositionSnapshots (historical)
  Gets positionSnapshots."
  ([] (uniswap-v3-get-position-snapshots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positionSnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-position-snapshots-historical (s/coll-of uniswap-v3/position-snapshot-dto-spec)
  "PositionSnapshots (historical)
  Gets positionSnapshots."
  ([] (uniswap-v3-get-position-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-position-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-historical-with-http-info any?
  "Positions (historical)
  Gets positions."
  ([] (uniswap-v3-get-positions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-positions-historical (s/coll-of uniswap-v3/position-dto-spec)
  "Positions (historical)
  Gets positions."
  ([] (uniswap-v3-get-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-swaps-historical-with-http-info any?
  "Swaps (historical)
  Gets swaps."
  ([] (uniswap-v3-get-swaps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-swaps-historical (s/coll-of uniswap-v3/swap-dto-spec)
  "Swaps (historical)
  Gets swaps."
  ([] (uniswap-v3-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tick-day-data-historical-with-http-info any?
  "TickDayData (historical)
  Gets tickDayData."
  ([] (uniswap-v3-get-tick-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tickDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tick-day-data-historical (s/coll-of uniswap-v3/tick-day-data-dto-spec)
  "TickDayData (historical)
  Gets tickDayData."
  ([] (uniswap-v3-get-tick-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tick-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-historical-with-http-info any?
  "Ticks (historical)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticks/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-ticks-historical (s/coll-of uniswap-v3/tick-dto-spec)
  "Ticks (historical)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-hour-data-historical-with-http-info any?
  "TokenHourData (historical)
  Gets tokenHourData."
  ([] (uniswap-v3-get-token-hour-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-hour-data-historical (s/coll-of uniswap-v3/token-hour-data-dto-spec)
  "TokenHourData (historical)
  Gets tokenHourData."
  ([] (uniswap-v3-get-token-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-v3-day-data-historical-with-http-info any?
  "TokenV3DayData (historical)
  Gets tokenV3DayData."
  ([] (uniswap-v3-get-token-v3-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenV3DayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-v3-day-data-historical (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "TokenV3DayData (historical)
  Gets tokenV3DayData."
  ([] (uniswap-v3-get-token-v3-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-v3-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-historical-with-http-info any?
  "Tokens (historical)
  Gets tokens."
  ([] (uniswap-v3-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tokens-historical (s/coll-of uniswap-v3/token-dto-spec)
  "Tokens (historical)
  Gets tokens."
  ([] (uniswap-v3-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-transactions-historical-with-http-info any?
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v3-get-transactions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-transactions-historical (s/coll-of uniswap-v3/transaction-dto-spec)
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v3-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/transaction-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-uniswap-day-data-historical-with-http-info any?
  "UniswapDayData (historical)
  Gets uniswapDayData."
  ([] (uniswap-v3-get-uniswap-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/uniswapDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-uniswap-day-data-historical (s/coll-of uniswap-v3/uniswap-day-data-dto-spec)
  "UniswapDayData (historical)
  Gets uniswapDayData."
  ([] (uniswap-v3-get-uniswap-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-uniswap-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/uniswap-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-mints-current-with-http-info any?
  "Mints (current)
  Gets mints."
  []
  (call-api "/dapps/uniswapv3/mints/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-mints-current (s/coll-of uniswap-v3/mint-dto-spec)
  "Mints (current)
  Gets mints."
  []
  (let [res (:data (uniswap-v3-mints-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/mint-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-pool-day-data-current-with-http-info any?
  "PoolDayData (current)
  Gets poolDayData."
  []
  (call-api "/dapps/uniswapv3/poolDayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-pool-day-data-current (s/coll-of uniswap-v3/pool-day-data-dto-spec)
  "PoolDayData (current)
  Gets poolDayData."
  []
  (let [res (:data (uniswap-v3-pool-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/pool-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-pool-hour-data-current-with-http-info any?
  "PoolHourData (current)
  Gets poolHourData."
  []
  (call-api "/dapps/uniswapv3/poolHourData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-pool-hour-data-current (s/coll-of uniswap-v3/pool-hour-data-dto-spec)
  "PoolHourData (current)
  Gets poolHourData."
  []
  (let [res (:data (uniswap-v3-pool-hour-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/pool-hour-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-pools-current-with-http-info any?
  "Pools (current)
  Gets pools."
  ([] (uniswap-v3-pools-current-with-http-info nil))
  ([{:keys [id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pools/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-pools-current (s/coll-of uniswap-v3/pool-dto-spec)
  "Pools (current)
  Gets pools."
  ([] (uniswap-v3-pools-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-pools-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-position-snapshots-current-with-http-info any?
  "PositionSnapshots (current)
  Gets positionSnapshots."
  []
  (call-api "/dapps/uniswapv3/positionSnapshots/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-position-snapshots-current (s/coll-of uniswap-v3/position-snapshot-dto-spec)
  "PositionSnapshots (current)
  Gets positionSnapshots."
  []
  (let [res (:data (uniswap-v3-position-snapshots-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/position-snapshot-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-positions-current-with-http-info any?
  "Positions (current)
  Gets positions."
  []
  (call-api "/dapps/uniswapv3/positions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-positions-current (s/coll-of uniswap-v3/position-dto-spec)
  "Positions (current)
  Gets positions."
  []
  (let [res (:data (uniswap-v3-positions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/position-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-swaps-current-with-http-info any?
  "Swaps (current)
  Gets swaps."
  ([] (uniswap-v3-swaps-current-with-http-info nil))
  ([{:keys [pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swaps/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-swaps-current (s/coll-of uniswap-v3/swap-dto-spec)
  "Swaps (current)
  Gets swaps."
  ([] (uniswap-v3-swaps-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-swaps-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-tick-day-data-current-with-http-info any?
  "TickDayData (current)
  Gets tickDayData."
  []
  (call-api "/dapps/uniswapv3/tickDayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-tick-day-data-current (s/coll-of uniswap-v3/tick-day-data-dto-spec)
  "TickDayData (current)
  Gets tickDayData."
  []
  (let [res (:data (uniswap-v3-tick-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/tick-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-ticks-current-with-http-info any?
  "Ticks (current)
  Gets ticks."
  []
  (call-api "/dapps/uniswapv3/ticks/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-ticks-current (s/coll-of uniswap-v3/tick-dto-spec)
  "Ticks (current)
  Gets ticks."
  []
  (let [res (:data (uniswap-v3-ticks-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/tick-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-token-hour-data-current-with-http-info any?
  "TokenHourData (current)
  Gets tokenHourData."
  []
  (call-api "/dapps/uniswapv3/tokenHourData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-token-hour-data-current (s/coll-of uniswap-v3/token-hour-data-dto-spec)
  "TokenHourData (current)
  Gets tokenHourData."
  []
  (let [res (:data (uniswap-v3-token-hour-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/token-hour-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-token-v3-day-data-current-with-http-info any?
  "TokenV3DayData (current)
  Gets tokenV3DayData."
  []
  (call-api "/dapps/uniswapv3/tokenV3DayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-token-v3-day-data-current (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "TokenV3DayData (current)
  Gets tokenV3DayData."
  []
  (let [res (:data (uniswap-v3-token-v3-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-tokens-current-with-http-info any?
  "Tokens (current)
  Gets tokens."
  []
  (call-api "/dapps/uniswapv3/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-tokens-current (s/coll-of uniswap-v3/token-dto-spec)
  "Tokens (current)
  Gets tokens."
  []
  (let [res (:data (uniswap-v3-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/token-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-transactions-current-with-http-info any?
  "Transactions (current)
  Gets transactions."
  []
  (call-api "/dapps/uniswapv3/transactions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-transactions-current (s/coll-of uniswap-v3/transaction-dto-spec)
  "Transactions (current)
  Gets transactions."
  []
  (let [res (:data (uniswap-v3-transactions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/transaction-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-uniswap-day-data-current-with-http-info any?
  "UniswapDayData (current)
  Gets uniswapDayData."
  []
  (call-api "/dapps/uniswapv3/uniswapDayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-uniswap-day-data-current (s/coll-of uniswap-v3/uniswap-day-data-dto-spec)
  "UniswapDayData (current)
  Gets uniswapDayData."
  []
  (let [res (:data (uniswap-v3-uniswap-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/uniswap-day-data-dto-spec) res st/string-transformer)
       res)))


