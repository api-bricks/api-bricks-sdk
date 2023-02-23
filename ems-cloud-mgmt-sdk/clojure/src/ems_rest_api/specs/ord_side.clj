(ns ems-rest-api.specs.ord-side
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ord-side-data
  {
   })

(def ord-side-spec
  (ds/spec
    {:name ::ord-side
     :spec ord-side-data}))
