(ns ems-rest-api.specs.time-in-force
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def time-in-force-data
  {
   })

(def time-in-force-spec
  (ds/spec
    {:name ::time-in-force
     :spec time-in-force-data}))
