(ns user
  (:require [mount.core :as mount]
            test-app.core))

(defn start []
  (mount/start-without #'test-app.core/repl-server))

(defn stop []
  (mount/stop-except #'test-app.core/repl-server))

(defn restart []
  (stop)
  (start))


