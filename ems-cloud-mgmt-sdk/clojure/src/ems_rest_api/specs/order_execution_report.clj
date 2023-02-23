(ns ems-rest-api.specs.order-execution-report
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-rest-api.specs.ord-side :refer :all]
            [ems-rest-api.specs.ord-type :refer :all]
            [ems-rest-api.specs.time-in-force :refer :all]
            [ems-rest-api.specs.ord-status :refer :all]
            [ems-rest-api.specs.fills :refer :all]
            )
  (:import (java.io File)))


(def order-execution-report-data
  {
   (ds/req :exchange_id) string?
   (ds/req :client_order_id) string?
   (ds/opt :symbol_id_exchange) string?
   (ds/opt :symbol_id_coinapi) string?
   (ds/req :amount_order) float?
   (ds/req :price) float?
   (ds/req :side) ord-side-spec
   (ds/req :order_type) ord-type-spec
   (ds/req :time_in_force) time-in-force-spec
   (ds/opt :expire_time) inst?
   (ds/opt :exec_inst) (s/coll-of string?)
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

(def order-execution-report-spec
  (ds/spec
    {:name ::order-execution-report
     :spec order-execution-report-data}))
