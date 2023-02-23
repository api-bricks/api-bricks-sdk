(ns ems-rest-api.specs.position-data-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [ems-rest-api.specs.ord-side :refer :all]
            [ems-rest-api.specs. :refer :all]
            )
  (:import (java.io File)))


(def position-data-inner-data
  {
   (ds/opt :symbol_id_exchange) string?
   (ds/opt :symbol_id_coinapi) string?
   (ds/opt :avg_entry_price) float?
   (ds/opt :quantity) float?
   (ds/opt :side) ord-side-spec
   (ds/opt :unrealized_pnl) float?
   (ds/opt :leverage) float?
   (ds/opt :cross_margin) boolean?
   (ds/opt :liquidation_price) float?
   (ds/opt :raw_data) any?
   })

(def position-data-inner-spec
  (ds/spec
    {:name ::position-data-inner
     :spec position-data-inner-data}))
