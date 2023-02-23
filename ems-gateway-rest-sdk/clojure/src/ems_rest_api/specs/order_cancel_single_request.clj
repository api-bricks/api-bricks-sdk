(ns ems-rest-api.specs.order-cancel-single-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def order-cancel-single-request-data
  {
   (ds/req :exchange_id) string?
   (ds/opt :exchange_order_id) string?
   (ds/opt :client_order_id) string?
   })

(def order-cancel-single-request-spec
  (ds/spec
    {:name ::order-cancel-single-request
     :spec order-cancel-single-request-data}))
