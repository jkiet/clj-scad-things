(defproject clj-scad-things "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [scad-clj "0.5.2"]]
  :main ^:skip-aot clj-scad-things.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}})
