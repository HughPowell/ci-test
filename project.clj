(defproject ci-test "0.1.1"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :repositories [["releases" {:url "https://clojars.org/repo/"
                              :username :env
                              :password :env
                              :sign-releases false}]]
  :release-tasks [["vcs" "assert-committed"]
                  #_["change" "version" "leiningen.release/bump-version" "release"]
                  #_["vcs" "commit"]
                  #_["vcs" "tag" "--no-sign"]
                  #_["deploy"]
                  #_["change" "version" "leiningen.release/bump-version"]
                  #_["vcs" "commit"]
                  #_["vcs" "push"]])
