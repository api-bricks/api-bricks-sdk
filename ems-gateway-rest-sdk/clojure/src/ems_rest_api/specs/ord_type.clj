(ns ems-rest-api.specs.ord-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ord-type-data
  {
   })

(def ord-type-spec
  (ds/spec
    {:name ::ord-type
     :spec ord-type-data}))
