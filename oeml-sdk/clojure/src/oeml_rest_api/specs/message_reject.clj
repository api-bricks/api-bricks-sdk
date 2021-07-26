(ns oeml-rest-api.specs.message-reject
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [oeml-rest-api.specs.reject-reason :refer :all]
            )
  (:import (java.io File)))


(def message-reject-data
  {
   (ds/opt :type) string?
   (ds/opt :reject_reason) reject-reason-spec
   (ds/opt :exchange_id) string?
   (ds/opt :message) string?
   (ds/opt :rejected_message) string?
   })

(def message-reject-spec
  (ds/spec
    {:name ::message-reject
     :spec message-reject-data}))
