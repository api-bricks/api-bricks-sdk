(ns ems-rest-api.specs.position
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-rest-api.specs.position-data-inner :refer :all]
            )
  (:import (java.io File)))


(def position-data
  {
   (ds/opt :exchange_id) string?
   (ds/opt :data) (s/coll-of position-data-inner-spec)
   })

(def position-spec
  (ds/spec
    {:name ::position
     :spec position-data}))
