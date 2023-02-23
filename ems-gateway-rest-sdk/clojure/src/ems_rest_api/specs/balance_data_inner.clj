(ns ems-rest-api.specs.balance-data-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def balance-data-inner-data
  {
   (ds/opt :asset_id_exchange) string?
   (ds/opt :asset_id_coinapi) string?
   (ds/opt :balance) float?
   (ds/opt :available) float?
   (ds/opt :locked) float?
   (ds/opt :last_updated_by) string?
   (ds/opt :rate_usd) float?
   (ds/opt :traded) float?
   })

(def balance-data-inner-spec
  (ds/spec
    {:name ::balance-data-inner
     :spec balance-data-inner-data}))
