(ns on-chain-dapps-rest-api.specs.cryptopunks/market-place-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cryptopunks/market-place-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :block_range) string?
   (ds/opt :id) string?
   (ds/opt :name) string?
   (ds/opt :slug) string?
   (ds/opt :schema_version) string?
   (ds/opt :subgraph_version) string?
   (ds/opt :methodology_version) string?
   (ds/opt :collection_count) int?
   (ds/opt :trade_count) int?
   (ds/opt :cumulative_trade_volume_eth) string?
   (ds/opt :marketplace_revenue_eth) string?
   (ds/opt :creator_revenue_eth) string?
   (ds/opt :total_revenue_eth) string?
   (ds/opt :cumulative_unique_traders) int?
   })

(def cryptopunks/market-place-dto-spec
  (ds/spec
    {:name ::cryptopunks/market-place-dto
     :spec cryptopunks/market-place-dto-data}))
