(ns on-chain-dapps-rest-api.specs.cryptopunks/item-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cryptopunks/item-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :block_range) string?
   (ds/opt :id) string?
   })

(def cryptopunks/item-dto-spec
  (ds/spec
    {:name ::cryptopunks/item-dto
     :spec cryptopunks/item-dto-data}))
