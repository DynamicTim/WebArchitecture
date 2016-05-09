(ns demo.env
  (:require [clojure.tools.logging :as log]))

(def defaults
  {:init
   (fn []
     (log/info "\n-=[demo started successfully]=-"))
   :middleware identity})
