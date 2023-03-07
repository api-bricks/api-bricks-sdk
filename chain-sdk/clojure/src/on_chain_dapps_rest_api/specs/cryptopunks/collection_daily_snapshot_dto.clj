(ns on-chain-dapps-rest-api.specs.cryptopunks/collection-daily-snapshot-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cryptopunks/collection-daily-snapshot-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) string?
   (ds/opt :vid) int?
   (ds/opt :block_range) string?
   (ds/opt :id) string?
   (ds/opt :collection) string?
   (ds/opt :timestamp) string?
   (ds/opt :royalty_fee) string?
   (ds/opt :daily_min_sale_price) string?
   (ds/opt :daily_max_sale_price) string?
   (ds/opt :cumulative_trade_volume_eth) string?
   (ds/opt :daily_trade_volume_eth) string?
   (ds/opt :marketplace_revenue_eth) string?
   (ds/opt :creator_revenue_eth) string?
   (ds/opt :total_revenue_eth) string?
   (ds/opt :trade_count) int?
   (ds/opt :daily_traded_item_count) int?
   })

(def cryptopunks/collection-daily-snapshot-dto-spec
  (ds/spec
    {:name ::cryptopunks/collection-daily-snapshot-dto
     :spec cryptopunks/collection-daily-snapshot-dto-data}))
