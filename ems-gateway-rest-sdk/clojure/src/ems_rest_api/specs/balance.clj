(ns ems-rest-api.specs.balance
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-rest-api.specs.balance-data-inner :refer :all]
            )
  (:import (java.io File)))


(def balance-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :data) (s/coll-of balance-data-inner-spec)
   })

(def balance-spec
  (ds/spec
    {:name ::balance
     :spec balance-data}))
