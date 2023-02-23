(ns ems-rest-api.specs.order-new-single-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-rest-api.specs.ord-side :refer :all]
            [ems-rest-api.specs.ord-type :refer :all]
            [ems-rest-api.specs.time-in-force :refer :all]
            )
  (:import (java.io File)))


(def order-new-single-request-data
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
   })

(def order-new-single-request-spec
  (ds/spec
    {:name ::order-new-single-request
     :spec order-new-single-request-data}))
