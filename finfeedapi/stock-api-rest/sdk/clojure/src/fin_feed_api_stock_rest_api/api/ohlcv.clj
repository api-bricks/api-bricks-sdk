(ns fin-feed-api-stock-rest-api.api.ohlcv
  (:require [fin-feed-api-stock-rest-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [fin-feed-api-stock-rest-api.specs.models/order-book-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/add-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.fin-feed-api/exchange-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/trading-status-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.iex-system-event/system-event-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.iex-trade/trade-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/auction-information-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/short-sale-price-test-status-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.ohlcv-time-series/exchange-timeseries-item :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/modify-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/security-event-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.iex-quote-update/quote-update-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/executed-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/admin-message-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/clear-book-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.fin-feed-api/symbol-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.ohlcv-time-series/timeseries-period :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/delete-order-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/security-directory-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.iex-price-level-update/price-level-update-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/retail-liquidity-indicator-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.ohlcv-time-series/timeseries-item :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/official-price-model :refer :all]
            [fin-feed-api-stock-rest-api.specs.models/operational-halt-status-model :refer :all]
            )
  (:import (java.io File)))


(defn-spec v1-ohlcv-exchange-exchange-id-history-get-with-http-info any?
  "Historical data by exchange
  Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange.
Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned."
  ([exchange_id string?, period_id string?, time_start string?, time_end string?, ] (v1-ohlcv-exchange-exchange-id-history-get-with-http-info exchange_id period_id time_start time_end nil))
  ([exchange_id string?, period_id string?, time_start string?, time_end string?, {:keys [limit]} (s/map-of keyword? any?)]
   (check-required-params exchange_id period_id time_start time_end)
   (call-api "/v1/ohlcv/exchange/{exchange_id}/history" :get
             {:path-params   {"exchange_id" exchange_id }
              :header-params {}
              :query-params  {"period_id" period_id "time_start" time_start "time_end" time_end "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-ohlcv-exchange-exchange-id-history-get (s/coll-of ohlcv-time-series/exchange-timeseries-item-spec)
  "Historical data by exchange
  Get OHLCV timeseries data returned in time ascending order. Data can be requested by the period and for the specific exchange.
Time range is limited to 24 hours. Use `limit` to cap the number of symbol rows returned."
  ([exchange_id string?, period_id string?, time_start string?, time_end string?, ] (v1-ohlcv-exchange-exchange-id-history-get exchange_id period_id time_start time_end nil))
  ([exchange_id string?, period_id string?, time_start string?, time_end string?, optional-params any?]
   (let [res (:data (v1-ohlcv-exchange-exchange-id-history-get-with-http-info exchange_id period_id time_start time_end optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of ohlcv-time-series/exchange-timeseries-item-spec) res st/string-transformer)
        res))))


(defn-spec v1-ohlcv-exchange-symbol-exchange-id-symbol-id-history-get-with-http-info any?
  "Historical data
  Get OHLCV timeseries data returned in time ascending order.
If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist."
  ([exchange_id string?, symbol_id string?, period_id string?, ] (v1-ohlcv-exchange-symbol-exchange-id-symbol-id-history-get-with-http-info exchange_id symbol_id period_id nil))
  ([exchange_id string?, symbol_id string?, period_id string?, {:keys [time_start time_end limit]} (s/map-of keyword? any?)]
   (check-required-params exchange_id symbol_id period_id)
   (call-api "/v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/history" :get
             {:path-params   {"exchange_id" exchange_id "symbol_id" symbol_id }
              :header-params {}
              :query-params  {"period_id" period_id "time_start" time_start "time_end" time_end "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-ohlcv-exchange-symbol-exchange-id-symbol-id-history-get (s/coll-of ohlcv-time-series/timeseries-item-spec)
  "Historical data
  Get OHLCV timeseries data returned in time ascending order.
If the requested window has no trades, the nearest available bars on the same UTC date are returned when they exist."
  ([exchange_id string?, symbol_id string?, period_id string?, ] (v1-ohlcv-exchange-symbol-exchange-id-symbol-id-history-get exchange_id symbol_id period_id nil))
  ([exchange_id string?, symbol_id string?, period_id string?, optional-params any?]
   (let [res (:data (v1-ohlcv-exchange-symbol-exchange-id-symbol-id-history-get-with-http-info exchange_id symbol_id period_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of ohlcv-time-series/timeseries-item-spec) res st/string-transformer)
        res))))


(defn-spec v1-ohlcv-exchange-symbol-exchange-id-symbol-id-latest-get-with-http-info any?
  "Latest data
  Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data
            
:::info
OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters. 
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::"
  ([exchange_id string?, symbol_id string?, period_id string?, ] (v1-ohlcv-exchange-symbol-exchange-id-symbol-id-latest-get-with-http-info exchange_id symbol_id period_id nil))
  ([exchange_id string?, symbol_id string?, period_id string?, {:keys [limit]} (s/map-of keyword? any?)]
   (check-required-params exchange_id symbol_id period_id)
   (call-api "/v1/ohlcv/exchange-symbol/{exchange_id}/{symbol_id}/latest" :get
             {:path-params   {"exchange_id" exchange_id "symbol_id" symbol_id }
              :header-params {}
              :query-params  {"period_id" period_id "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-ohlcv-exchange-symbol-exchange-id-symbol-id-latest-get (s/coll-of ohlcv-time-series/timeseries-item-spec)
  "Latest data
  Get OHLCV latest timeseries data returned in time descending order. Data can be requested by the period and for the specific symbol eg `BITSTAMP_SPOT_BTC_USD`, if you need to query timeseries by asset pairs eg. `BTC/USD`, then please reffer to the Exchange Rates Timeseries data
            
:::info
OHLCV Latest endpoint is just the shortcut to the OHLCV Historical endpoint with substituted `time_start` and `time_end` parameters. 
The OHLCV Historical endpoint data can be delayed a few seconds. Use OHLCV real-time data stream to get data without delay.
:::"
  ([exchange_id string?, symbol_id string?, period_id string?, ] (v1-ohlcv-exchange-symbol-exchange-id-symbol-id-latest-get exchange_id symbol_id period_id nil))
  ([exchange_id string?, symbol_id string?, period_id string?, optional-params any?]
   (let [res (:data (v1-ohlcv-exchange-symbol-exchange-id-symbol-id-latest-get-with-http-info exchange_id symbol_id period_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of ohlcv-time-series/timeseries-item-spec) res st/string-transformer)
        res))))


(defn-spec v1-ohlcv-periods-get-with-http-info any?
  "List all periods
  Get full list of supported time periods available for requesting OHLCV timeseries data.
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::"
  []
  (call-api "/v1/ohlcv/periods" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    ["APIKey" "JWT"]}))

(defn-spec v1-ohlcv-periods-get (s/coll-of ohlcv-time-series/timeseries-period-spec)
  "List all periods
  Get full list of supported time periods available for requesting OHLCV timeseries data.
            
### Available periods
            
Time unit | Period identifiers
--------- | -----------
Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC
Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN
Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS
Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH
Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS
            
:::tip
You can assume that we will not remove any periods from this response, however, we may add new ones.
:::"
  []
  (let [res (:data (v1-ohlcv-periods-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of ohlcv-time-series/timeseries-period-spec) res st/string-transformer)
       res)))


