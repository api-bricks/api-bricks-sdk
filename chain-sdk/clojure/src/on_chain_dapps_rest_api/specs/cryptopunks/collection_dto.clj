(ns on-chain-dapps-rest-api.specs.cryptopunks/collection-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cryptopunks/collection-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :block_range) string?
   (ds/opt :id) string?
   (ds/opt :name) string?
   (ds/opt :symbol) string?
   (ds/opt :total_supply) string?
   (ds/opt :royalty_fee) string?
   (ds/opt :cumulative_trade_volume_eth) string?
   (ds/opt :marketplace_revenue_eth) string?
   (ds/opt :creator_revenue_eth) string?
   (ds/opt :total_revenue_eth) string?
   (ds/opt :trade_count) int?
   (ds/opt :buyer_count) int?
   (ds/opt :seller_count) int?
   })

(def cryptopunks/collection-dto-spec
  (ds/spec
    {:name ::cryptopunks/collection-dto
     :spec cryptopunks/collection-dto-data}))
