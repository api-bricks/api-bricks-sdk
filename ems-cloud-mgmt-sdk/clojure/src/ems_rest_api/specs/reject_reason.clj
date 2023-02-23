(ns ems-rest-api.specs.reject-reason
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def reject-reason-data
  {
   })

(def reject-reason-spec
  (ds/spec
    {:name ::reject-reason
     :spec reject-reason-data}))
