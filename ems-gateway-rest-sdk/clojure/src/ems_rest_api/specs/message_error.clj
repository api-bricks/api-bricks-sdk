(ns ems-rest-api.specs.message-error
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def message-error-data
  {
   (ds/opt :message) string?
   })

(def message-error-spec
  (ds/spec
    {:name ::message-error
     :spec message-error-data}))
