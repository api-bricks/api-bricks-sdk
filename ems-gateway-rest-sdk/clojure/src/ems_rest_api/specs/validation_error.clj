(ns ems-rest-api.specs.validation-error
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def validation-error-data
  {
   (ds/opt :type) string?
   (ds/opt :title) string?
   (ds/opt :status) float?
   (ds/opt :traceId) string?
   (ds/opt :errors) string?
   })

(def validation-error-spec
  (ds/spec
    {:name ::validation-error
     :spec validation-error-data}))
