(ns on-chain-api.api.sushiswap
  (:require [on-chain-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [on-chain-api.specs.sushiswap/factory-dto :refer :all]
            [on-chain-api.specs.curve/gauge-type-dto :refer :all]
            [on-chain-api.specs.curve/gauge-weight-vote-dto :refer :all]
            [on-chain-api.specs.sushiswap/token-day-data-dto :refer :all]
            [on-chain-api.specs.curve/gauge-withdraw-dto :refer :all]
            [on-chain-api.specs.dex/deposit-dto :refer :all]
            [on-chain-api.specs.sushiswap/mint-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/mint-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/uniswap-day-data-v3-dto :refer :all]
            [on-chain-api.specs.curve/proposal-dto :refer :all]
            [on-chain-api.specs.sushiswap/liquidity-position-snapshot-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/burn-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-snapshot-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-day-data-v3-dto :refer :all]
            [on-chain-api.specs.curve/transfer-ownership-event-dto :refer :all]
            [on-chain-api.specs.sushiswap/day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-day-data-v2-dto :refer :all]
            [on-chain-api.specs.curve/proposal-vote-dto :refer :all]
            [on-chain-api.specs.curve/coin-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-v3-dto :refer :all]
            [on-chain-api.specs.curve/account-dto :refer :all]
            [on-chain-api.specs.curve/underlying-coin-dto :refer :all]
            [on-chain-api.specs.cow/trade-dto :refer :all]
            [on-chain-api.specs.curve/gauge-deposit-dto :refer :all]
            [on-chain-api.specs.sushiswap/transaction-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-day-data-dto :refer :all]
            [on-chain-api.specs.dex/trade-dto :refer :all]
            [on-chain-api.specs.dex/withdraw-dto :refer :all]
            [on-chain-api.specs.curve/gauge-liquidity-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/swap-v2-dto :refer :all]
            [on-chain-api.specs.dex/token-dto :refer :all]
            [on-chain-api.specs.cow/settlement-dto :refer :all]
            [on-chain-api.specs.curve/gauge-weight-dto :refer :all]
            [on-chain-api.specs.sushiswap/swap-dto :refer :all]
            [on-chain-api.specs.sushiswap/bundle-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/bundle-v3-dto :refer :all]
            [on-chain-api.specs.cow/order-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/uniswap-day-data-v2-dto :refer :all]
            [on-chain-api.specs.curve/gauge-total-weight-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-dto :refer :all]
            [on-chain-api.specs.curve/hourly-volume-dto :refer :all]
            [on-chain-api.specs.dex/price-dto :refer :all]
            [on-chain-api.specs.dex/solution-dto :refer :all]
            [on-chain-api.specs.curve/pool-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/swap-v3-dto :refer :all]
            [on-chain-api.specs.curve/gauge-dto :refer :all]
            [on-chain-api.specs.sushiswap/hour-data-dto :refer :all]
            [on-chain-api.specs.curve/contract-version-dto :refer :all]
            [on-chain-api.specs.curve/remove-liquidity-one-event-dto :refer :all]
            [on-chain-api.specs.cow/token-dto :refer :all]
            [on-chain-api.specs.dex/batch-dto :refer :all]
            [on-chain-api.specs.dex/order-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/liquidity-position-v2-dto :refer :all]
            [on-chain-api.specs.curve/token-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.cow/user-dto :refer :all]
            [on-chain-api.specs.dex/user-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/transaction-v2-dto :refer :all]
            [on-chain-api.specs.curve/admin-fee-change-log-dto :refer :all]
            [on-chain-api.specs.curve/gauge-type-weight-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/factory-v3-dto :refer :all]
            [on-chain-api.specs.curve/voting-app-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/burn-v2-dto :refer :all]
            [on-chain-api.specs.curve/system-state-dto :refer :all]
            [on-chain-api.specs.curve/add-liquidity-event-dto :refer :all]
            [on-chain-api.specs.curve/exchange-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/liquidity-position-snapshot-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-day-data-v3-dto :refer :all]
            [on-chain-api.specs.curve/amplification-coeff-change-log-dto :refer :all]
            [on-chain-api.specs.transactions/e-trade-aggressive-side :refer :all]
            [on-chain-api.specs.sushiswap/token-dto :refer :all]
            [on-chain-api.specs.sushiswap/burn-dto :refer :all]
            [on-chain-api.specs.sushiswap/user-dto :refer :all]
            [on-chain-api.specs.curve/fee-change-log-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/mint-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/uniswap-factory-v2-dto :refer :all]
            [on-chain-api.specs.curve/weekly-volume-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/transaction-v3-dto :refer :all]
            [on-chain-api.specs.curve/contract-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-hour-data-v2-dto :refer :all]
            [on-chain-api.specs.numerics/big-integer :refer :all]
            [on-chain-api.specs.dex/withdraw-request-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-v3-dto :refer :all]
            [on-chain-api.specs.curve/lp-token-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-hour-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-day-data-v2-dto :refer :all]
            [on-chain-api.specs.curve/daily-volume-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-v3-dto :refer :all]
            [on-chain-api.specs.dex/stats-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/liquidity-position-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/user-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/bundle-v2-dto :refer :all]
            [on-chain-api.specs.curve/remove-liquidity-event-dto :refer :all]
            )
  (:import (java.io File)))


(defn-spec curve-get-exchanges-current-with-http-info any?
  "Exchanges (current) 🔥
  Gets exchanges."
  []
  (call-api "/dapps/sushiswap/exchanges/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-get-exchanges-current (s/coll-of curve/exchange-dto-spec)
  "Exchanges (current) 🔥
  Gets exchanges."
  []
  (let [res (:data (curve-get-exchanges-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/exchange-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-get-trades-current-with-http-info any?
  "Trades (current) 🔥
  Gets trades."
  []
  (call-api "/dapps/sushiswap/trades/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-get-trades-current (s/coll-of dex/trade-dto-spec)
  "Trades (current) 🔥
  Gets trades."
  []
  (let [res (:data (dex-get-trades-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/trade-dto-spec) res st/string-transformer)
       res)))


(defn-spec sushiswap-get-bundles-historical-with-http-info any?
  "Bundles (historical) 🔥
  Gets bundles."
  ([] (sushiswap-get-bundles-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-bundles-historical (s/coll-of sushiswap/bundle-dto-spec)
  "Bundles (historical) 🔥
  Gets bundles."
  ([] (sushiswap-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/bundle-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-burns-historical-with-http-info any?
  "Burns (historical) 🔥
  Gets burns."
  ([] (sushiswap-get-burns-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-burns-historical (s/coll-of sushiswap/burn-dto-spec)
  "Burns (historical) 🔥
  Gets burns."
  ([] (sushiswap-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-burns-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/burn-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-day-datas-historical-with-http-info any?
  "DayDatas (historical) 🔥
  Gets daydatas."
  ([] (sushiswap-get-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/daydatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-day-datas-historical (s/coll-of sushiswap/day-data-dto-spec)
  "DayDatas (historical) 🔥
  Gets daydatas."
  ([] (sushiswap-get-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-factorys-historical-with-http-info any?
  "Factorys (historical) 🔥
  Gets factorys."
  ([] (sushiswap-get-factorys-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/factorys/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-factorys-historical (s/coll-of sushiswap/factory-dto-spec)
  "Factorys (historical) 🔥
  Gets factorys."
  ([] (sushiswap-get-factorys-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-factorys-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/factory-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-hour-datas-historical-with-http-info any?
  "HourDatas (historical) 🔥
  Gets hourdatas."
  ([] (sushiswap-get-hour-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/hourdatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-hour-datas-historical (s/coll-of sushiswap/hour-data-dto-spec)
  "HourDatas (historical) 🔥
  Gets hourdatas."
  ([] (sushiswap-get-hour-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-hour-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/hour-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-liquidity-position-snapshots-historical-with-http-info any?
  "LiquidityPositionSnapshots (historical) 🔥
  Gets liquiditypositionsnapshots."
  ([] (sushiswap-get-liquidity-position-snapshots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/liquiditypositionsnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-liquidity-position-snapshots-historical (s/coll-of sushiswap/liquidity-position-snapshot-dto-spec)
  "LiquidityPositionSnapshots (historical) 🔥
  Gets liquiditypositionsnapshots."
  ([] (sushiswap-get-liquidity-position-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-liquidity-position-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/liquidity-position-snapshot-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-liquidity-positions-historical-with-http-info any?
  "LiquidityPositions (historical) 🔥
  Gets liquiditypositions."
  ([] (sushiswap-get-liquidity-positions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/liquiditypositions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-liquidity-positions-historical (s/coll-of sushiswap/liquidity-position-dto-spec)
  "LiquidityPositions (historical) 🔥
  Gets liquiditypositions."
  ([] (sushiswap-get-liquidity-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-liquidity-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/liquidity-position-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-mints-historical-with-http-info any?
  "Mints (historical) 🔥
  Gets mints."
  ([] (sushiswap-get-mints-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-mints-historical (s/coll-of sushiswap/mint-dto-spec)
  "Mints (historical) 🔥
  Gets mints."
  ([] (sushiswap-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/mint-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-pair-day-datas-historical-with-http-info any?
  "PairDayDatas (historical) 🔥
  Gets pairdaydatas."
  ([] (sushiswap-get-pair-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/pairdaydatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-pair-day-datas-historical (s/coll-of sushiswap/pair-day-data-dto-spec)
  "PairDayDatas (historical) 🔥
  Gets pairdaydatas."
  ([] (sushiswap-get-pair-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-pair-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/pair-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-pair-hour-datas-historical-with-http-info any?
  "PairHourDatas (historical) 🔥
  Gets pairhourdatas."
  ([] (sushiswap-get-pair-hour-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/pairhourdatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-pair-hour-datas-historical (s/coll-of sushiswap/pair-hour-data-dto-spec)
  "PairHourDatas (historical) 🔥
  Gets pairhourdatas."
  ([] (sushiswap-get-pair-hour-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-pair-hour-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/pair-hour-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-pairs-historical-with-http-info any?
  "Pairs (historical) 🔥
  Gets pairs."
  ([] (sushiswap-get-pairs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id name token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/pairs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "name" name "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-pairs-historical (s/coll-of sushiswap/pair-dto-spec)
  "Pairs (historical) 🔥
  Gets pairs."
  ([] (sushiswap-get-pairs-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-pairs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/pair-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-pools-current-with-http-info any?
  "Pools (current) 🔥
  Gets pools."
  []
  (call-api "/dapps/sushiswap/pools/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec sushiswap-get-pools-current (s/coll-of sushiswap/pair-dto-spec)
  "Pools (current) 🔥
  Gets pools."
  []
  (let [res (:data (sushiswap-get-pools-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of sushiswap/pair-dto-spec) res st/string-transformer)
       res)))


(defn-spec sushiswap-get-swaps-current-with-http-info any?
  "Swaps (current) 🔥
  Gets swaps."
  []
  (call-api "/dapps/sushiswap/swaps/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec sushiswap-get-swaps-current (s/coll-of sushiswap/swap-dto-spec)
  "Swaps (current) 🔥
  Gets swaps."
  []
  (let [res (:data (sushiswap-get-swaps-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of sushiswap/swap-dto-spec) res st/string-transformer)
       res)))


(defn-spec sushiswap-get-swaps-historical-with-http-info any?
  "Swaps (historical) 🔥
  Gets swaps."
  ([] (sushiswap-get-swaps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-swaps-historical (s/coll-of sushiswap/swap-dto-spec)
  "Swaps (historical) 🔥
  Gets swaps."
  ([] (sushiswap-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-token-day-datas-historical-with-http-info any?
  "TokenDayDatas (historical) 🔥
  Gets tokendaydatas."
  ([] (sushiswap-get-token-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/tokendaydatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-token-day-datas-historical (s/coll-of sushiswap/token-day-data-dto-spec)
  "TokenDayDatas (historical) 🔥
  Gets tokendaydatas."
  ([] (sushiswap-get-token-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-token-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/token-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-tokens-current-with-http-info any?
  "Tokens (current) 🔥
  Gets tokens."
  []
  (call-api "/dapps/sushiswap/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec sushiswap-get-tokens-current (s/coll-of sushiswap/token-dto-spec)
  "Tokens (current) 🔥
  Gets tokens."
  []
  (let [res (:data (sushiswap-get-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of sushiswap/token-dto-spec) res st/string-transformer)
       res)))


(defn-spec sushiswap-get-tokens-historical-with-http-info any?
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (sushiswap-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-tokens-historical (s/coll-of sushiswap/token-dto-spec)
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (sushiswap-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-transactions-historical-with-http-info any?
  "Transactions (historical) 🔥
  Gets transactions."
  ([] (sushiswap-get-transactions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-transactions-historical (s/coll-of sushiswap/transaction-dto-spec)
  "Transactions (historical) 🔥
  Gets transactions."
  ([] (sushiswap-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/transaction-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-users-historical-with-http-info any?
  "Users (historical) 🔥
  Gets users."
  ([] (sushiswap-get-users-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-users-historical (s/coll-of sushiswap/user-dto-spec)
  "Users (historical) 🔥
  Gets users."
  ([] (sushiswap-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/user-dto-spec) res st/string-transformer)
        res))))


