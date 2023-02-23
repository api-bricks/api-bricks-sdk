(ns ems-rest-api.specs.order-history
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def order-history-data
  {
   (ds/opt :apikey) string?
   (ds/opt :exchangeId) string?
   (ds/opt :clientOrderId) string?
   (ds/opt :symbolIdExchange) string?
   (ds/opt :symbolIdCoinapi) string?
   (ds/opt :amountOrder) float?
   (ds/opt :price) float?
   (ds/opt :side) float?
   (ds/opt :orderType) string?
   (ds/opt :timeInForce) string?
   (ds/opt :expireTime) inst?
   (ds/opt :execInst) (s/coll-of string?)
   (ds/opt :clientOrderIdFormatExchange) string?
   (ds/opt :exchangeOrderId) string?
   (ds/opt :amountOpen) float?
   (ds/opt :amountFilled) float?
   (ds/opt :avgPx) float?
   (ds/opt :status) string?
   (ds/opt :statusHistoryStatus) (s/coll-of string?)
   (ds/opt :statusHistoryTime) (s/coll-of inst?)
   (ds/opt :errorMessageResult) string?
   (ds/opt :errorMessageReason) string?
   (ds/opt :errorMessageMessage) string?
   (ds/opt :fillsTime) (s/coll-of inst?)
   (ds/opt :fillsPrice) (s/coll-of float?)
   (ds/opt :fillsAmount) (s/coll-of float?)
   (ds/opt :createdTime) inst?
   })

(def order-history-spec
  (ds/spec
    {:name ::order-history
     :spec order-history-data}))
