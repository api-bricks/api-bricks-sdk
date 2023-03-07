(ns on-chain-dapps-rest-api.specs.cryptopunks/bid-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cryptopunks/bid-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) string?
   (ds/opt :vid) int?
   (ds/opt :block_range) string?
   (ds/opt :id) string?
   (ds/opt :tokens_bid) string?
   (ds/opt :token_id) string?
   (ds/opt :timestamp) string?
   (ds/opt :bidder) string?
   })

(def cryptopunks/bid-dto-spec
  (ds/spec
    {:name ::cryptopunks/bid-dto
     :spec cryptopunks/bid-dto-data}))
