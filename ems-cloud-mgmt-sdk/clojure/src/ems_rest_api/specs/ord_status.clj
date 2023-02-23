(ns ems-rest-api.specs.ord-status
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ord-status-data
  {
   })

(def ord-status-spec
  (ds/spec
    {:name ::ord-status
     :spec ord-status-data}))
