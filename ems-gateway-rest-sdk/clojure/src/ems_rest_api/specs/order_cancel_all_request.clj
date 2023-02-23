(ns ems-rest-api.specs.order-cancel-all-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def order-cancel-all-request-data
  {
   (ds/req :exchange_id) string?
   })

(def order-cancel-all-request-spec
  (ds/spec
    {:name ::order-cancel-all-request
     :spec order-cancel-all-request-data}))
