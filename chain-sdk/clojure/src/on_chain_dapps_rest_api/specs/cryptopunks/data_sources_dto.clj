(ns on-chain-dapps-rest-api.specs.cryptopunks/data-sources-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cryptopunks/data-sources-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :block_range) string?
   (ds/opt :causality_region) int?
   (ds/opt :manifest_idx) int?
   (ds/opt :parent) int?
   (ds/opt :id) string?
   (ds/opt :param) string?
   (ds/opt :context) string?
   (ds/opt :done_at) int?
   })

(def cryptopunks/data-sources-dto-spec
  (ds/spec
    {:name ::cryptopunks/data-sources-dto
     :spec cryptopunks/data-sources-dto-data}))
