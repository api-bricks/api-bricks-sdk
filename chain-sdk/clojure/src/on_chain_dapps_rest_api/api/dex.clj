(ns on-chain-dapps-rest-api.api.dex
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


(defn-spec dex-batches-current-with-http-info any?
  "Batches (current)
  Gets batches."
  []
  (call-api "/dapps/dex/batches/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-batches-current (s/coll-of dex/batch-dto-spec)
  "Batches (current)
  Gets batches."
  []
  (let [res (:data (dex-batches-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/batch-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-deposits-current-with-http-info any?
  "Deposits (current)
  Gets deposits."
  []
  (call-api "/dapps/dex/deposits/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-deposits-current (s/coll-of dex/deposit-dto-spec)
  "Deposits (current)
  Gets deposits."
  []
  (let [res (:data (dex-deposits-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/deposit-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-get-batches-historical-with-http-info any?
  "Batches (historical)
  Gets batches."
  ([] (dex-get-batches-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/batches/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-batches-historical (s/coll-of dex/batch-dto-spec)
  "Batches (historical)
  Gets batches."
  ([] (dex-get-batches-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-batches-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/batch-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-deposits-historical-with-http-info any?
  "Deposits (historical)
  Gets deposits."
  ([] (dex-get-deposits-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/deposits/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-deposits-historical (s/coll-of dex/deposit-dto-spec)
  "Deposits (historical)
  Gets deposits."
  ([] (dex-get-deposits-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-deposits-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/deposit-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-orders-historical-with-http-info any?
  "Orders (historical)
  Gets orders."
  ([] (dex-get-orders-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id buy_token sell_token]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/orders/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "buy_token" buy_token "sell_token" sell_token }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-orders-historical (s/coll-of dex/order-dto-spec)
  "Orders (historical)
  Gets orders."
  ([] (dex-get-orders-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-orders-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/order-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-prices-historical-with-http-info any?
  "Prices (historical)
  Gets prices."
  ([] (dex-get-prices-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/prices/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-prices-historical (s/coll-of dex/price-dto-spec)
  "Prices (historical)
  Gets prices."
  ([] (dex-get-prices-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-prices-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/price-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-solutions-historical-with-http-info any?
  "Solutions (historical)
  Gets solutions."
  ([] (dex-get-solutions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/solutions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-solutions-historical (s/coll-of dex/solution-dto-spec)
  "Solutions (historical)
  Gets solutions."
  ([] (dex-get-solutions-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-solutions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/solution-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-stats-historical-with-http-info any?
  "Stats (historical)
  Gets stats."
  ([] (dex-get-stats-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/stats/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-stats-historical (s/coll-of dex/stats-dto-spec)
  "Stats (historical)
  Gets stats."
  ([] (dex-get-stats-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-stats-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/stats-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-tokens-historical-with-http-info any?
  "Tokens (historical)
  Gets tokens."
  ([] (dex-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-tokens-historical (s/coll-of dex/token-dto-spec)
  "Tokens (historical)
  Gets tokens."
  ([] (dex-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-trades-historical-with-http-info any?
  "Trades (historical)
  Gets trades."
  ([] (dex-get-trades-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id buy_token sell_token]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/trades/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "buy_token" buy_token "sell_token" sell_token }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-trades-historical (s/coll-of dex/trade-dto-spec)
  "Trades (historical)
  Gets trades."
  ([] (dex-get-trades-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-trades-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/trade-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-users-historical-with-http-info any?
  "Users (historical)
  Gets users."
  ([] (dex-get-users-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-users-historical (s/coll-of dex/user-dto-spec)
  "Users (historical)
  Gets users."
  ([] (dex-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/user-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-withdraw-requests-historical-with-http-info any?
  "WithdrawRequests (historical)
  Gets withdrawRequests."
  ([] (dex-get-withdraw-requests-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/withdrawRequests/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-withdraw-requests-historical (s/coll-of dex/withdraw-request-dto-spec)
  "WithdrawRequests (historical)
  Gets withdrawRequests."
  ([] (dex-get-withdraw-requests-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-withdraw-requests-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/withdraw-request-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-withdraws-historical-with-http-info any?
  "Withdraws (historical)
  Gets withdraws."
  ([] (dex-get-withdraws-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/withdraws/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-withdraws-historical (s/coll-of dex/withdraw-dto-spec)
  "Withdraws (historical)
  Gets withdraws."
  ([] (dex-get-withdraws-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-withdraws-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/withdraw-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-orders-current-with-http-info any?
  "Orders (current)
  Gets orders."
  []
  (call-api "/dapps/dex/orders/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-orders-current (s/coll-of dex/order-dto-spec)
  "Orders (current)
  Gets orders."
  []
  (let [res (:data (dex-orders-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/order-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-prices-current-with-http-info any?
  "Prices (current)
  Gets prices."
  []
  (call-api "/dapps/dex/prices/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-prices-current (s/coll-of dex/price-dto-spec)
  "Prices (current)
  Gets prices."
  []
  (let [res (:data (dex-prices-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/price-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-solutions-current-with-http-info any?
  "Solutions (current)
  Gets solutions."
  []
  (call-api "/dapps/dex/solutions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-solutions-current (s/coll-of dex/solution-dto-spec)
  "Solutions (current)
  Gets solutions."
  []
  (let [res (:data (dex-solutions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/solution-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-stats-current-with-http-info any?
  "Stats (current)
  Gets stats."
  []
  (call-api "/dapps/dex/stats/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-stats-current (s/coll-of dex/stats-dto-spec)
  "Stats (current)
  Gets stats."
  []
  (let [res (:data (dex-stats-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/stats-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-tokens-current-with-http-info any?
  "Tokens (current)
  Gets tokens."
  []
  (call-api "/dapps/dex/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-tokens-current (s/coll-of dex/token-dto-spec)
  "Tokens (current)
  Gets tokens."
  []
  (let [res (:data (dex-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/token-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-trades-current-with-http-info any?
  "Trades (current)
  Gets trades."
  []
  (call-api "/dapps/dex/trades/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-trades-current (s/coll-of dex/trade-dto-spec)
  "Trades (current)
  Gets trades."
  []
  (let [res (:data (dex-trades-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/trade-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-users-current-with-http-info any?
  "Users (current)
  Gets users."
  []
  (call-api "/dapps/dex/users/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-users-current (s/coll-of dex/user-dto-spec)
  "Users (current)
  Gets users."
  []
  (let [res (:data (dex-users-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/user-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-withdraw-requests-current-with-http-info any?
  "WithdrawRequests (current)
  Gets withdrawRequests."
  []
  (call-api "/dapps/dex/withdrawRequests/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-withdraw-requests-current (s/coll-of dex/withdraw-request-dto-spec)
  "WithdrawRequests (current)
  Gets withdrawRequests."
  []
  (let [res (:data (dex-withdraw-requests-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/withdraw-request-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-withdraws-current-with-http-info any?
  "Withdraws (current)
  Gets withdraws."
  []
  (call-api "/dapps/dex/withdraws/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-withdraws-current (s/coll-of dex/withdraw-dto-spec)
  "Withdraws (current)
  Gets withdraws."
  []
  (let [res (:data (dex-withdraws-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/withdraw-dto-spec) res st/string-transformer)
       res)))


