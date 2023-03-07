(ns on-chain-dapps-rest-api.api.curve
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


(defn-spec curve-accounts-current-with-http-info any?
  "Accounts (current)
  Gets accounts."
  []
  (call-api "/dapps/curve/accounts/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-accounts-current (s/coll-of curve/account-dto-spec)
  "Accounts (current)
  Gets accounts."
  []
  (let [res (:data (curve-accounts-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/account-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-add-liquidity-events-current-with-http-info any?
  "AddLiquidityEvents (current)
  Gets addLiquidityEvents."
  []
  (call-api "/dapps/curve/addLiquidityEvents/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-add-liquidity-events-current (s/coll-of curve/add-liquidity-event-dto-spec)
  "AddLiquidityEvents (current)
  Gets addLiquidityEvents."
  []
  (let [res (:data (curve-add-liquidity-events-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/add-liquidity-event-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-admin-fee-change-logs-current-with-http-info any?
  "AdminFeeChangeLogs (current)
  Gets adminFeeChangeLogs."
  []
  (call-api "/dapps/curve/adminFeeChangeLogs/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-admin-fee-change-logs-current (s/coll-of curve/admin-fee-change-log-dto-spec)
  "AdminFeeChangeLogs (current)
  Gets adminFeeChangeLogs."
  []
  (let [res (:data (curve-admin-fee-change-logs-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/admin-fee-change-log-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-amplification-coeff-change-logs-current-with-http-info any?
  "AmplificationCoeffChangeLogs (current)
  Gets amplificationCoeffChangeLogs."
  []
  (call-api "/dapps/curve/amplificationCoeffChangeLogs/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-amplification-coeff-change-logs-current (s/coll-of curve/amplification-coeff-change-log-dto-spec)
  "AmplificationCoeffChangeLogs (current)
  Gets amplificationCoeffChangeLogs."
  []
  (let [res (:data (curve-amplification-coeff-change-logs-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/amplification-coeff-change-log-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-coins-current-with-http-info any?
  "Coins (current)
  Gets coins."
  []
  (call-api "/dapps/curve/coins/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-coins-current (s/coll-of curve/coin-dto-spec)
  "Coins (current)
  Gets coins."
  []
  (let [res (:data (curve-coins-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/coin-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-contract-versions-current-with-http-info any?
  "ContractVersions (current)
  Gets contractVersions."
  []
  (call-api "/dapps/curve/contractVersions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-contract-versions-current (s/coll-of curve/contract-version-dto-spec)
  "ContractVersions (current)
  Gets contractVersions."
  []
  (let [res (:data (curve-contract-versions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/contract-version-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-contracts-current-with-http-info any?
  "Contracts (current)
  Gets contracts."
  []
  (call-api "/dapps/curve/contracts/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-contracts-current (s/coll-of curve/contract-dto-spec)
  "Contracts (current)
  Gets contracts."
  []
  (let [res (:data (curve-contracts-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/contract-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-daily-volumes-current-with-http-info any?
  "DailyVolumes (current)
  Gets dailyVolumes."
  []
  (call-api "/dapps/curve/dailyVolumes/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-daily-volumes-current (s/coll-of curve/daily-volume-dto-spec)
  "DailyVolumes (current)
  Gets dailyVolumes."
  []
  (let [res (:data (curve-daily-volumes-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/daily-volume-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-exchanges-current-with-http-info any?
  "Exchanges (current)
  Gets exchanges."
  ([] (curve-exchanges-current-with-http-info nil))
  ([{:keys [pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/exchanges/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-exchanges-current (s/coll-of curve/exchange-dto-spec)
  "Exchanges (current)
  Gets exchanges."
  ([] (curve-exchanges-current nil))
  ([optional-params any?]
   (let [res (:data (curve-exchanges-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/exchange-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-fee-change-logs-current-with-http-info any?
  "FeeChangeLogs (current)
  Gets feeChangeLogs."
  []
  (call-api "/dapps/curve/feeChangeLogs/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-fee-change-logs-current (s/coll-of curve/fee-change-log-dto-spec)
  "FeeChangeLogs (current)
  Gets feeChangeLogs."
  []
  (let [res (:data (curve-fee-change-logs-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/fee-change-log-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauge-deposits-current-with-http-info any?
  "GaugeDeposits (current)
  Gets gaugeDeposits."
  []
  (call-api "/dapps/curve/gaugeDeposits/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauge-deposits-current (s/coll-of curve/gauge-deposit-dto-spec)
  "GaugeDeposits (current)
  Gets gaugeDeposits."
  []
  (let [res (:data (curve-gauge-deposits-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-deposit-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauge-liquidities-current-with-http-info any?
  "GaugeLiquidities (current)
  Gets gaugeLiquidities."
  []
  (call-api "/dapps/curve/gaugeLiquidities/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauge-liquidities-current (s/coll-of curve/gauge-liquidity-dto-spec)
  "GaugeLiquidities (current)
  Gets gaugeLiquidities."
  []
  (let [res (:data (curve-gauge-liquidities-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-liquidity-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauge-total-weights-current-with-http-info any?
  "GaugeTotalWeights (current)
  Gets gaugeTotalWeights."
  []
  (call-api "/dapps/curve/gaugeTotalWeights/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauge-total-weights-current (s/coll-of curve/gauge-total-weight-dto-spec)
  "GaugeTotalWeights (current)
  Gets gaugeTotalWeights."
  []
  (let [res (:data (curve-gauge-total-weights-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-total-weight-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauge-type-weights-current-with-http-info any?
  "GaugeTypeWeights (current)
  Gets gaugeTypeWeights."
  []
  (call-api "/dapps/curve/gaugeTypeWeights/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauge-type-weights-current (s/coll-of curve/gauge-type-weight-dto-spec)
  "GaugeTypeWeights (current)
  Gets gaugeTypeWeights."
  []
  (let [res (:data (curve-gauge-type-weights-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-type-weight-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauge-types-current-with-http-info any?
  "GaugeTypes (current)
  Gets gaugeTypes."
  []
  (call-api "/dapps/curve/gaugeTypes/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauge-types-current (s/coll-of curve/gauge-type-dto-spec)
  "GaugeTypes (current)
  Gets gaugeTypes."
  []
  (let [res (:data (curve-gauge-types-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-type-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauge-weight-votes-current-with-http-info any?
  "GaugeWeightVotes (current)
  Gets gaugeWeightVotes."
  []
  (call-api "/dapps/curve/gaugeWeightVotes/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauge-weight-votes-current (s/coll-of curve/gauge-weight-vote-dto-spec)
  "GaugeWeightVotes (current)
  Gets gaugeWeightVotes."
  []
  (let [res (:data (curve-gauge-weight-votes-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-weight-vote-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauge-weights-current-with-http-info any?
  "GaugeWeights (current)
  Gets gaugeWeights."
  []
  (call-api "/dapps/curve/gaugeWeights/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauge-weights-current (s/coll-of curve/gauge-weight-dto-spec)
  "GaugeWeights (current)
  Gets gaugeWeights."
  []
  (let [res (:data (curve-gauge-weights-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-weight-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauge-withdraws-current-with-http-info any?
  "GaugeWithdraws (current)
  Gets gaugeWithdraws."
  []
  (call-api "/dapps/curve/gaugeWithdraws/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauge-withdraws-current (s/coll-of curve/gauge-withdraw-dto-spec)
  "GaugeWithdraws (current)
  Gets gaugeWithdraws."
  []
  (let [res (:data (curve-gauge-withdraws-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-withdraw-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-gauges-current-with-http-info any?
  "Gauges (current)
  Gets gauges."
  []
  (call-api "/dapps/curve/gauges/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-gauges-current (s/coll-of curve/gauge-dto-spec)
  "Gauges (current)
  Gets gauges."
  []
  (let [res (:data (curve-gauges-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/gauge-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-get-accounts-historical-with-http-info any?
  "Accounts (historical)
  Gets accounts."
  ([] (curve-get-accounts-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/accounts/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-accounts-historical (s/coll-of curve/account-dto-spec)
  "Accounts (historical)
  Gets accounts."
  ([] (curve-get-accounts-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-accounts-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/account-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-add-liquidity-events-historical-with-http-info any?
  "AddLiquidityEvents (historical)
  Gets addLiquidityEvents."
  ([] (curve-get-add-liquidity-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/addLiquidityEvents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-add-liquidity-events-historical (s/coll-of curve/add-liquidity-event-dto-spec)
  "AddLiquidityEvents (historical)
  Gets addLiquidityEvents."
  ([] (curve-get-add-liquidity-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-add-liquidity-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/add-liquidity-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-admin-fee-change-logs-historical-with-http-info any?
  "AdminFeeChangeLogs (historical)
  Gets adminFeeChangeLogs."
  ([] (curve-get-admin-fee-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/adminFeeChangeLogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-admin-fee-change-logs-historical (s/coll-of curve/admin-fee-change-log-dto-spec)
  "AdminFeeChangeLogs (historical)
  Gets adminFeeChangeLogs."
  ([] (curve-get-admin-fee-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-admin-fee-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/admin-fee-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-amplification-coeff-change-logs-historical-with-http-info any?
  "AmplificationCoeffChangeLogs (historical)
  Gets amplificationCoeffChangeLogs."
  ([] (curve-get-amplification-coeff-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/amplificationCoeffChangeLogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-amplification-coeff-change-logs-historical (s/coll-of curve/amplification-coeff-change-log-dto-spec)
  "AmplificationCoeffChangeLogs (historical)
  Gets amplificationCoeffChangeLogs."
  ([] (curve-get-amplification-coeff-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-amplification-coeff-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/amplification-coeff-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-coins-historical-with-http-info any?
  "Coins (historical)
  Gets coins."
  ([] (curve-get-coins-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/coins/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-coins-historical (s/coll-of curve/coin-dto-spec)
  "Coins (historical)
  Gets coins."
  ([] (curve-get-coins-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-coins-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/coin-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-contract-versions-historical-with-http-info any?
  "ContractVersions (historical)
  Gets contractVersions."
  ([] (curve-get-contract-versions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/contractVersions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-contract-versions-historical (s/coll-of curve/contract-version-dto-spec)
  "ContractVersions (historical)
  Gets contractVersions."
  ([] (curve-get-contract-versions-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-contract-versions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/contract-version-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-contracts-historical-with-http-info any?
  "Contracts (historical)
  Gets contracts."
  ([] (curve-get-contracts-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/contracts/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-contracts-historical (s/coll-of curve/contract-dto-spec)
  "Contracts (historical)
  Gets contracts."
  ([] (curve-get-contracts-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-contracts-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/contract-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-daily-volumes-historical-with-http-info any?
  "DailyVolumes (historical)
  Gets dailyVolumes."
  ([] (curve-get-daily-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/dailyVolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-daily-volumes-historical (s/coll-of curve/daily-volume-dto-spec)
  "DailyVolumes (historical)
  Gets dailyVolumes."
  ([] (curve-get-daily-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-daily-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/daily-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-exchanges-historical-with-http-info any?
  "Exchanges (historical)
  Gets exchanges."
  ([] (curve-get-exchanges-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/exchanges/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-exchanges-historical (s/coll-of curve/exchange-dto-spec)
  "Exchanges (historical)
  Gets exchanges."
  ([] (curve-get-exchanges-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-exchanges-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/exchange-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-fee-change-logs-historical-with-http-info any?
  "FeeChangeLogs (historical)
  Gets feeChangeLogs."
  ([] (curve-get-fee-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/feeChangeLogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-fee-change-logs-historical (s/coll-of curve/fee-change-log-dto-spec)
  "FeeChangeLogs (historical)
  Gets feeChangeLogs."
  ([] (curve-get-fee-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-fee-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/fee-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-deposits-historical-with-http-info any?
  "GaugeDeposits (historical)
  Gets gaugeDeposits."
  ([] (curve-get-gauge-deposits-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeDeposits/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-deposits-historical (s/coll-of curve/gauge-deposit-dto-spec)
  "GaugeDeposits (historical)
  Gets gaugeDeposits."
  ([] (curve-get-gauge-deposits-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-deposits-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-deposit-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-liquidities-historical-with-http-info any?
  "GaugeLiquidities (historical)
  Gets gaugeLiquidities."
  ([] (curve-get-gauge-liquidities-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeLiquidities/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-liquidities-historical (s/coll-of curve/gauge-liquidity-dto-spec)
  "GaugeLiquidities (historical)
  Gets gaugeLiquidities."
  ([] (curve-get-gauge-liquidities-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-liquidities-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-liquidity-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-total-weights-historical-with-http-info any?
  "GaugeTotalWeights (historical)
  Gets gaugeTotalWeights."
  ([] (curve-get-gauge-total-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeTotalWeights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-total-weights-historical (s/coll-of curve/gauge-total-weight-dto-spec)
  "GaugeTotalWeights (historical)
  Gets gaugeTotalWeights."
  ([] (curve-get-gauge-total-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-total-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-total-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-type-weights-historical-with-http-info any?
  "GaugeTypeWeights (historical)
  Gets gaugeTypeWeights."
  ([] (curve-get-gauge-type-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeTypeWeights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-type-weights-historical (s/coll-of curve/gauge-type-weight-dto-spec)
  "GaugeTypeWeights (historical)
  Gets gaugeTypeWeights."
  ([] (curve-get-gauge-type-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-type-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-type-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-types-historical-with-http-info any?
  "GaugeTypes (historical)
  Gets gaugeTypes."
  ([] (curve-get-gauge-types-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id name]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeTypes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-types-historical (s/coll-of curve/gauge-type-dto-spec)
  "GaugeTypes (historical)
  Gets gaugeTypes."
  ([] (curve-get-gauge-types-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-types-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-type-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-weight-votes-historical-with-http-info any?
  "GaugeWeightVotes (historical)
  Gets gaugeWeightVotes."
  ([] (curve-get-gauge-weight-votes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeWeightVotes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-weight-votes-historical (s/coll-of curve/gauge-weight-vote-dto-spec)
  "GaugeWeightVotes (historical)
  Gets gaugeWeightVotes."
  ([] (curve-get-gauge-weight-votes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-weight-votes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-weight-vote-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-weights-historical-with-http-info any?
  "GaugeWeights (historical)
  Gets gaugeWeights."
  ([] (curve-get-gauge-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeWeights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-weights-historical (s/coll-of curve/gauge-weight-dto-spec)
  "GaugeWeights (historical)
  Gets gaugeWeights."
  ([] (curve-get-gauge-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-withdraws-historical-with-http-info any?
  "GaugeWithdraws (historical)
  Gets gaugeWithdraws."
  ([] (curve-get-gauge-withdraws-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeWithdraws/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-withdraws-historical (s/coll-of curve/gauge-withdraw-dto-spec)
  "GaugeWithdraws (historical)
  Gets gaugeWithdraws."
  ([] (curve-get-gauge-withdraws-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-withdraws-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-withdraw-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-historical-with-http-info any?
  "Gauges (historical)
  Gets gauges."
  ([] (curve-get-gauges-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gauges/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-historical (s/coll-of curve/gauge-dto-spec)
  "Gauges (historical)
  Gets gauges."
  ([] (curve-get-gauges-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-hourly-volumes-historical-with-http-info any?
  "HourlyVolumes (historical)
  Gets hourlyVolumes."
  ([] (curve-get-hourly-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/hourlyVolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-hourly-volumes-historical (s/coll-of curve/hourly-volume-dto-spec)
  "HourlyVolumes (historical)
  Gets hourlyVolumes."
  ([] (curve-get-hourly-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-hourly-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/hourly-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-lp-tokens-historical-with-http-info any?
  "LpTokens (historical)
  Gets lpTokens."
  ([] (curve-get-lp-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address name symbol pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/lpTokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "name" name "symbol" symbol "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-lp-tokens-historical (s/coll-of curve/lp-token-dto-spec)
  "LpTokens (historical)
  Gets lpTokens."
  ([] (curve-get-lp-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-lp-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/lp-token-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-pools-historical-with-http-info any?
  "Pools (historical)
  Gets pools."
  ([] (curve-get-pools-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id name]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-pools-historical (s/coll-of curve/pool-dto-spec)
  "Pools (historical)
  Gets pools."
  ([] (curve-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/pool-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-proposal-votes-historical-with-http-info any?
  "ProposalVotes (historical)
  Gets proposalVotes."
  ([] (curve-get-proposal-votes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/proposalVotes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-proposal-votes-historical (s/coll-of curve/proposal-vote-dto-spec)
  "ProposalVotes (historical)
  Gets proposalVotes."
  ([] (curve-get-proposal-votes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-proposal-votes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/proposal-vote-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-proposals-historical-with-http-info any?
  "Proposals (historical)
  Gets proposals."
  ([] (curve-get-proposals-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/proposals/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-proposals-historical (s/coll-of curve/proposal-dto-spec)
  "Proposals (historical)
  Gets proposals."
  ([] (curve-get-proposals-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-proposals-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/proposal-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-remove-liquidity-events-historical-with-http-info any?
  "RemoveLiquidityEvents (historical)
  Gets removeLiquidityEvents."
  ([] (curve-get-remove-liquidity-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/removeLiquidityEvents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-remove-liquidity-events-historical (s/coll-of curve/remove-liquidity-event-dto-spec)
  "RemoveLiquidityEvents (historical)
  Gets removeLiquidityEvents."
  ([] (curve-get-remove-liquidity-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-remove-liquidity-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/remove-liquidity-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-remove-liquidity-one-events-historical-with-http-info any?
  "RemoveLiquidityOneEvents (historical)
  Gets removeLiquidityOneEvents."
  ([] (curve-get-remove-liquidity-one-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/removeLiquidityOneEvents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-remove-liquidity-one-events-historical (s/coll-of curve/remove-liquidity-one-event-dto-spec)
  "RemoveLiquidityOneEvents (historical)
  Gets removeLiquidityOneEvents."
  ([] (curve-get-remove-liquidity-one-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-remove-liquidity-one-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/remove-liquidity-one-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-system-states-historical-with-http-info any?
  "SystemStates (historical)
  Gets systemStates."
  ([] (curve-get-system-states-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/systemStates/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-system-states-historical (s/coll-of curve/system-state-dto-spec)
  "SystemStates (historical)
  Gets systemStates."
  ([] (curve-get-system-states-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-system-states-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/system-state-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-tokens-historical-with-http-info any?
  "Tokens (historical)
  Gets tokens."
  ([] (curve-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address name symbol]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "name" name "symbol" symbol }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-tokens-historical (s/coll-of curve/token-dto-spec)
  "Tokens (historical)
  Gets tokens."
  ([] (curve-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-transfer-ownership-events-historical-with-http-info any?
  "TransferOwnershipEvents (historical)
  Gets transferOwnershipEvents."
  ([] (curve-get-transfer-ownership-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/transferOwnershipEvents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-transfer-ownership-events-historical (s/coll-of curve/transfer-ownership-event-dto-spec)
  "TransferOwnershipEvents (historical)
  Gets transferOwnershipEvents."
  ([] (curve-get-transfer-ownership-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-transfer-ownership-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/transfer-ownership-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-underlying-coins-historical-with-http-info any?
  "UnderlyingCoins (historical)
  Gets underlyingCoins."
  ([] (curve-get-underlying-coins-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/underlyingCoins/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-underlying-coins-historical (s/coll-of curve/underlying-coin-dto-spec)
  "UnderlyingCoins (historical)
  Gets underlyingCoins."
  ([] (curve-get-underlying-coins-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-underlying-coins-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/underlying-coin-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-voting-apps-historical-with-http-info any?
  "VotingApps (historical)
  Gets votingApps."
  ([] (curve-get-voting-apps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/votingApps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-voting-apps-historical (s/coll-of curve/voting-app-dto-spec)
  "VotingApps (historical)
  Gets votingApps."
  ([] (curve-get-voting-apps-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-voting-apps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/voting-app-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-weekly-volumes-historical-with-http-info any?
  "WeeklyVolumes (historical)
  Gets weeklyVolumes."
  ([] (curve-get-weekly-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/weeklyVolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-weekly-volumes-historical (s/coll-of curve/weekly-volume-dto-spec)
  "WeeklyVolumes (historical)
  Gets weeklyVolumes."
  ([] (curve-get-weekly-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-weekly-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/weekly-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-hourly-volumes-current-with-http-info any?
  "HourlyVolumes (current)
  Gets hourlyVolumes."
  []
  (call-api "/dapps/curve/hourlyVolumes/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-hourly-volumes-current (s/coll-of curve/hourly-volume-dto-spec)
  "HourlyVolumes (current)
  Gets hourlyVolumes."
  []
  (let [res (:data (curve-hourly-volumes-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/hourly-volume-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-lp-tokens-current-with-http-info any?
  "LpTokens (current)
  Gets lpTokens."
  []
  (call-api "/dapps/curve/lpTokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-lp-tokens-current (s/coll-of curve/lp-token-dto-spec)
  "LpTokens (current)
  Gets lpTokens."
  []
  (let [res (:data (curve-lp-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/lp-token-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-pools-current-with-http-info any?
  "Pools (current)
  Gets pools."
  ([] (curve-pools-current-with-http-info nil))
  ([{:keys [id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/pools/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-pools-current (s/coll-of curve/pool-dto-spec)
  "Pools (current)
  Gets pools."
  ([] (curve-pools-current nil))
  ([optional-params any?]
   (let [res (:data (curve-pools-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/pool-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-proposal-votes-current-with-http-info any?
  "ProposalVotes (current)
  Gets proposalVotes."
  []
  (call-api "/dapps/curve/proposalVotes/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-proposal-votes-current (s/coll-of curve/proposal-vote-dto-spec)
  "ProposalVotes (current)
  Gets proposalVotes."
  []
  (let [res (:data (curve-proposal-votes-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/proposal-vote-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-proposals-current-with-http-info any?
  "Proposals (current)
  Gets proposals."
  []
  (call-api "/dapps/curve/proposals/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-proposals-current (s/coll-of curve/proposal-dto-spec)
  "Proposals (current)
  Gets proposals."
  []
  (let [res (:data (curve-proposals-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/proposal-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-remove-liquidity-events-current-with-http-info any?
  "RemoveLiquidityEvents (current)
  Gets removeLiquidityEvents."
  []
  (call-api "/dapps/curve/removeLiquidityEvents/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-remove-liquidity-events-current (s/coll-of curve/remove-liquidity-event-dto-spec)
  "RemoveLiquidityEvents (current)
  Gets removeLiquidityEvents."
  []
  (let [res (:data (curve-remove-liquidity-events-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/remove-liquidity-event-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-remove-liquidity-one-events-current-with-http-info any?
  "RemoveLiquidityOneEvents (current)
  Gets removeLiquidityOneEvents."
  []
  (call-api "/dapps/curve/removeLiquidityOneEvents/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-remove-liquidity-one-events-current (s/coll-of curve/remove-liquidity-one-event-dto-spec)
  "RemoveLiquidityOneEvents (current)
  Gets removeLiquidityOneEvents."
  []
  (let [res (:data (curve-remove-liquidity-one-events-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/remove-liquidity-one-event-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-system-states-current-with-http-info any?
  "SystemStates (current)
  Gets systemStates."
  []
  (call-api "/dapps/curve/systemStates/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-system-states-current (s/coll-of curve/system-state-dto-spec)
  "SystemStates (current)
  Gets systemStates."
  []
  (let [res (:data (curve-system-states-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/system-state-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-tokens-current-with-http-info any?
  "Tokens (current)
  Gets tokens."
  []
  (call-api "/dapps/curve/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-tokens-current (s/coll-of curve/token-dto-spec)
  "Tokens (current)
  Gets tokens."
  []
  (let [res (:data (curve-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/token-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-transfer-ownership-events-current-with-http-info any?
  "TransferOwnershipEvents (current)
  Gets transferOwnershipEvents."
  []
  (call-api "/dapps/curve/transferOwnershipEvents/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-transfer-ownership-events-current (s/coll-of curve/transfer-ownership-event-dto-spec)
  "TransferOwnershipEvents (current)
  Gets transferOwnershipEvents."
  []
  (let [res (:data (curve-transfer-ownership-events-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/transfer-ownership-event-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-underlying-coins-current-with-http-info any?
  "UnderlyingCoins (current)
  Gets underlyingCoins."
  []
  (call-api "/dapps/curve/underlyingCoins/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-underlying-coins-current (s/coll-of curve/underlying-coin-dto-spec)
  "UnderlyingCoins (current)
  Gets underlyingCoins."
  []
  (let [res (:data (curve-underlying-coins-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/underlying-coin-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-voting-apps-current-with-http-info any?
  "VotingApps (current)
  Gets votingApps."
  []
  (call-api "/dapps/curve/votingApps/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-voting-apps-current (s/coll-of curve/voting-app-dto-spec)
  "VotingApps (current)
  Gets votingApps."
  []
  (let [res (:data (curve-voting-apps-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/voting-app-dto-spec) res st/string-transformer)
       res)))


(defn-spec curve-weekly-volumes-current-with-http-info any?
  "WeeklyVolumes (current)
  Gets weeklyVolumes."
  []
  (call-api "/dapps/curve/weeklyVolumes/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-weekly-volumes-current (s/coll-of curve/weekly-volume-dto-spec)
  "WeeklyVolumes (current)
  Gets weeklyVolumes."
  []
  (let [res (:data (curve-weekly-volumes-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/weekly-volume-dto-spec) res st/string-transformer)
       res)))


