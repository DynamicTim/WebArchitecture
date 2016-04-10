(ns test-app.env
  (:require [clojure.tools.logging :as log]))

(def defaults
  {:init
   (fn []
     (log/info "\n-=[test-app started successfully]=-"))
   :middleware identity})
