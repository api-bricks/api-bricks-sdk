(ns ems-rest-api.specs.fills
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def fills-data
  {
   (ds/opt :time) inst?
   (ds/opt :price) float?
   (ds/opt :amount) float?
   })

(def fills-spec
  (ds/spec
    {:name ::fills
     :spec fills-data}))
