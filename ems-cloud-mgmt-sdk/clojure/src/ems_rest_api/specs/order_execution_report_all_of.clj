(ns ems-rest-api.specs.order-execution-report-all-of
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-rest-api.specs.ord-status :refer :all]
            [ems-rest-api.specs.fills :refer :all]
            )
  (:import (java.io File)))


(def order-execution-report-all-of-data
  {
   (ds/req :client_order_id_format_exchange) string?
   (ds/opt :exchange_order_id) string?
   (ds/req :amount_open) float?
   (ds/req :amount_filled) float?
   (ds/opt :avg_px) float?
   (ds/req :status) ord-status-spec
   (ds/opt :status_history) (s/coll-of (s/coll-of string?))
   (ds/opt :error_message) string?
   (ds/opt :fills) (s/coll-of fills-spec)
   })

(def order-execution-report-all-of-spec
  (ds/spec
    {:name ::order-execution-report-all-of
     :spec order-execution-report-all-of-data}))
