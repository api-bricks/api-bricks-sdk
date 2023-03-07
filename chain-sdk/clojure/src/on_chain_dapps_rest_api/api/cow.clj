(ns on-chain-dapps-rest-api.api.cow
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


(defn-spec cow-get-orders-historical-with-http-info any?
  "Orders (historical)
  Gets orders."
  ([] (cow-get-orders-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/orders/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec cow-get-orders-historical (s/coll-of cow/order-dto-spec)
  "Orders (historical)
  Gets orders."
  ([] (cow-get-orders-historical nil))
  ([optional-params any?]
   (let [res (:data (cow-get-orders-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cow/order-dto-spec) res st/string-transformer)
        res))))


(defn-spec cow-get-settlements-historical-with-http-info any?
  "Settlements (historical)
  Gets settlements."
  ([] (cow-get-settlements-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/settlements/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec cow-get-settlements-historical (s/coll-of cow/settlement-dto-spec)
  "Settlements (historical)
  Gets settlements."
  ([] (cow-get-settlements-historical nil))
  ([optional-params any?]
   (let [res (:data (cow-get-settlements-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cow/settlement-dto-spec) res st/string-transformer)
        res))))


(defn-spec cow-get-tokens-historical-with-http-info any?
  "Tokens (historical)
  Gets tokens."
  ([] (cow-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address name symbol]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "name" name "symbol" symbol }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec cow-get-tokens-historical (s/coll-of cow/token-dto-spec)
  "Tokens (historical)
  Gets tokens."
  ([] (cow-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (cow-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cow/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec cow-get-trades-historical-with-http-info any?
  "Trades (historical)
  Gets trades."
  ([] (cow-get-trades-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id sell_token buy_token]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/trades/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "sell_token" sell_token "buy_token" buy_token }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec cow-get-trades-historical (s/coll-of cow/trade-dto-spec)
  "Trades (historical)
  Gets trades."
  ([] (cow-get-trades-historical nil))
  ([optional-params any?]
   (let [res (:data (cow-get-trades-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cow/trade-dto-spec) res st/string-transformer)
        res))))


(defn-spec cow-get-users-historical-with-http-info any?
  "Users (historical)
  Gets users."
  ([] (cow-get-users-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec cow-get-users-historical (s/coll-of cow/user-dto-spec)
  "Users (historical)
  Gets users."
  ([] (cow-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (cow-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of cow/user-dto-spec) res st/string-transformer)
        res))))


(defn-spec cow-orders-current-with-http-info any?
  "Orders (current)
  Gets orders."
  []
  (call-api "/dapps/cow/orders/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec cow-orders-current (s/coll-of cow/order-dto-spec)
  "Orders (current)
  Gets orders."
  []
  (let [res (:data (cow-orders-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cow/order-dto-spec) res st/string-transformer)
       res)))


(defn-spec cow-settlements-current-with-http-info any?
  "Settlements (current)
  Gets settlements."
  []
  (call-api "/dapps/cow/settlements/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec cow-settlements-current (s/coll-of cow/settlement-dto-spec)
  "Settlements (current)
  Gets settlements."
  []
  (let [res (:data (cow-settlements-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cow/settlement-dto-spec) res st/string-transformer)
       res)))


(defn-spec cow-tokens-current-with-http-info any?
  "Tokens (current)
  Gets tokens."
  []
  (call-api "/dapps/cow/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec cow-tokens-current (s/coll-of cow/token-dto-spec)
  "Tokens (current)
  Gets tokens."
  []
  (let [res (:data (cow-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cow/token-dto-spec) res st/string-transformer)
       res)))


(defn-spec cow-trades-current-with-http-info any?
  "Trades (current)
  Gets trades."
  []
  (call-api "/dapps/cow/trades/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec cow-trades-current (s/coll-of cow/trade-dto-spec)
  "Trades (current)
  Gets trades."
  []
  (let [res (:data (cow-trades-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cow/trade-dto-spec) res st/string-transformer)
       res)))


(defn-spec cow-users-current-with-http-info any?
  "Users (current)
  Gets users."
  []
  (call-api "/dapps/cow/users/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec cow-users-current (s/coll-of cow/user-dto-spec)
  "Users (current)
  Gets users."
  []
  (let [res (:data (cow-users-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of cow/user-dto-spec) res st/string-transformer)
       res)))


