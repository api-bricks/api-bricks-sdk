(ns on-chain-dapps-rest-api.specs.cryptopunks/user-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cryptopunks/user-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :block_range) string?
   (ds/opt :id) string?
   })

(def cryptopunks/user-dto-spec
  (ds/spec
    {:name ::cryptopunks/user-dto
     :spec cryptopunks/user-dto-data}))
