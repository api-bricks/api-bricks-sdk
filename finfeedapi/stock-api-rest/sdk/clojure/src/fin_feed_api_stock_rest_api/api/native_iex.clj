(ns fin-feed-api-stock-rest-api.api.native-iex
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


(defn-spec v1-native-iex-admin-messages-symbol-get-with-http-info any?
  "Get Admin Messages
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-admin-messages-symbol-get-with-http-info symbol nil))
  ([symbol string?, {:keys [date time_start limit]} (s/map-of keyword? any?)]
   (check-required-params symbol)
   (call-api "/v1/native/iex/admin/messages/{symbol}" :get
             {:path-params   {"symbol" symbol }
              :header-params {}
              :query-params  {"date" date "time_start" time_start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-native-iex-admin-messages-symbol-get (s/coll-of models/admin-message-model-spec)
  "Get Admin Messages
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-admin-messages-symbol-get symbol nil))
  ([symbol string?, optional-params any?]
   (let [res (:data (v1-native-iex-admin-messages-symbol-get-with-http-info symbol optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of models/admin-message-model-spec) res st/string-transformer)
        res))))


(defn-spec v1-native-iex-admin-system-event-get-with-http-info any?
  "Get System Events
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([] (v1-native-iex-admin-system-event-get-with-http-info nil))
  ([{:keys [date time_start limit]} (s/map-of keyword? any?)]
   (call-api "/v1/native/iex/admin/system-event" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"date" date "time_start" time_start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-native-iex-admin-system-event-get (s/coll-of iex-system-event/system-event-model-spec)
  "Get System Events
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([] (v1-native-iex-admin-system-event-get nil))
  ([optional-params any?]
   (let [res (:data (v1-native-iex-admin-system-event-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of iex-system-event/system-event-model-spec) res st/string-transformer)
        res))))


(defn-spec v1-native-iex-level1-quote-symbol-get-with-http-info any?
  "Get Level-1 Quotes
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-level1-quote-symbol-get-with-http-info symbol nil))
  ([symbol string?, {:keys [date time_start limit]} (s/map-of keyword? any?)]
   (check-required-params symbol)
   (call-api "/v1/native/iex/level1-quote/{symbol}" :get
             {:path-params   {"symbol" symbol }
              :header-params {}
              :query-params  {"date" date "time_start" time_start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-native-iex-level1-quote-symbol-get (s/coll-of iex-quote-update/quote-update-model-spec)
  "Get Level-1 Quotes
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-level1-quote-symbol-get symbol nil))
  ([symbol string?, optional-params any?]
   (let [res (:data (v1-native-iex-level1-quote-symbol-get-with-http-info symbol optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of iex-quote-update/quote-update-model-spec) res st/string-transformer)
        res))))


(defn-spec v1-native-iex-level2-price-level-update-symbol-get-with-http-info any?
  "Get Level-2 Price Level Book
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-level2-price-level-update-symbol-get-with-http-info symbol nil))
  ([symbol string?, {:keys [date time_start limit]} (s/map-of keyword? any?)]
   (check-required-params symbol)
   (call-api "/v1/native/iex/level2-price-level-update/{symbol}" :get
             {:path-params   {"symbol" symbol }
              :header-params {}
              :query-params  {"date" date "time_start" time_start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-native-iex-level2-price-level-update-symbol-get (s/coll-of iex-price-level-update/price-level-update-model-spec)
  "Get Level-2 Price Level Book
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-level2-price-level-update-symbol-get symbol nil))
  ([symbol string?, optional-params any?]
   (let [res (:data (v1-native-iex-level2-price-level-update-symbol-get-with-http-info symbol optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of iex-price-level-update/price-level-update-model-spec) res st/string-transformer)
        res))))


(defn-spec v1-native-iex-level3-order-book-symbol-get-with-http-info any?
  "Get Level-3 Order Book
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-level3-order-book-symbol-get-with-http-info symbol nil))
  ([symbol string?, {:keys [date time_start limit]} (s/map-of keyword? any?)]
   (check-required-params symbol)
   (call-api "/v1/native/iex/level3-order-book/{symbol}" :get
             {:path-params   {"symbol" symbol }
              :header-params {}
              :query-params  {"date" date "time_start" time_start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-native-iex-level3-order-book-symbol-get (s/coll-of models/order-book-model-spec)
  "Get Level-3 Order Book
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-level3-order-book-symbol-get symbol nil))
  ([symbol string?, optional-params any?]
   (let [res (:data (v1-native-iex-level3-order-book-symbol-get-with-http-info symbol optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of models/order-book-model-spec) res st/string-transformer)
        res))))


(defn-spec v1-native-iex-trade-symbol-get-with-http-info any?
  "Get Trades
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-trade-symbol-get-with-http-info symbol nil))
  ([symbol string?, {:keys [date time_start limit]} (s/map-of keyword? any?)]
   (check-required-params symbol)
   (call-api "/v1/native/iex/trade/{symbol}" :get
             {:path-params   {"symbol" symbol }
              :header-params {}
              :query-params  {"date" date "time_start" time_start "limit" limit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["APIKey" "JWT"]})))

(defn-spec v1-native-iex-trade-symbol-get (s/coll-of iex-trade/trade-model-spec)
  "Get Trades
  Streams one UTC day. `time_start` may be a full timestamp (`2026-09-28T13:31:14.8560065Z`) or a time of day (`13:31:14.8560065Z`) when `date` is set. Events start at that instant, inclusive. Omit `limit` to stream through the end of the day."
  ([symbol string?, ] (v1-native-iex-trade-symbol-get symbol nil))
  ([symbol string?, optional-params any?]
   (let [res (:data (v1-native-iex-trade-symbol-get-with-http-info symbol optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of iex-trade/trade-model-spec) res st/string-transformer)
        res))))


