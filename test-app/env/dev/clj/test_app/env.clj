(ns test-app.env
  (:require [selmer.parser :as parser]
            [clojure.tools.logging :as log]
            [test-app.dev-middleware :refer [wrap-dev]]))

(def defaults
  {:init
   (fn []
     (parser/cache-off!)
     (log/info "\n-=[test-app started successfully using the development profile]=-"))
   :middleware wrap-dev})
