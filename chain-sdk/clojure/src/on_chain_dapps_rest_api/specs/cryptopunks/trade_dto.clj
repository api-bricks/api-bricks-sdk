(ns on-chain-dapps-rest-api.specs.cryptopunks/trade-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cryptopunks/trade-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) string?
   (ds/opt :vid) int?
   (ds/opt :block_range) string?
   (ds/opt :id) string?
   (ds/opt :transaction_hash) string?
   (ds/opt :log_index) int?
   (ds/opt :timestamp) string?
   (ds/opt :is_bundle) boolean?
   (ds/opt :collection) string?
   (ds/opt :token_id) string?
   (ds/opt :amount) string?
   (ds/opt :price_eth) string?
   (ds/opt :buyer) string?
   (ds/opt :seller) string?
   })

(def cryptopunks/trade-dto-spec
  (ds/spec
    {:name ::cryptopunks/trade-dto
     :spec cryptopunks/trade-dto-data}))
