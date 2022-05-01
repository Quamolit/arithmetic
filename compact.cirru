
{} (:package |arithmetic)
  :configs $ {} (:init-fn |arithmetic.test/main!) (:reload-fn |arithmetic.test/reload!) (:version |0.0.1)
    :modules $ [] |calcit-test/
  :entries $ {}
  :files $ {}
    |arithmetic.test $ {}
      :ns $ quote
        ns arithmetic.test $ :require
          calcit-test.core :refer $ deftest testing is *quit-on-failure?
          arithmetic.complex :as complex
      :defs $ {}
        |main! $ quote
          defn main! () $ run-tests
        |reload! $ quote
          defn reload! () (run-tests) (println "\"reloaded.")
        |run-tests $ quote
          defn run-tests () (reset! *quit-on-failure? true) (test-basic)
        |test-basic $ quote
          deftest test-basic
            testing |add $ is
              = ([] 3 5)
                complex/&+ ([] 1 2) ([] 2 3)
            testing |minus $ is
              = ([] -1 -1)
                complex/&- ([] 1 2) ([] 2 3)
    |arithmetic.complex $ {}
      :ns $ quote (ns phlox.complex)
      :defs $ {}
        |&* $ quote
          defn &* (v1 v2)
            let-sugar
                  [] a b
                  , v1
                ([] x y) v2
              []
                - (* a x) (* b y)
                + (* a y) (* b x)
        |&+ $ quote
          defn &+ (p1 p2)
            let-sugar
                  [] a b
                  , p1
                ([] x y) p2
              [] (+ a x) (+ b y)
        |&- $ quote
          defn &- (v1 v2)
            let-sugar
                  [] a b
                  , v1
                ([] x y) v2
              [] (- a x) (- b y)
        |&/ $ quote
          defn rebase (value base) "\"complex number division, renamed since naming collision" $ let-sugar
                [] x y
                , value
              ([] a b) base
              inverted $ / 1
                + (* a a) (* b b)
            []
              * inverted $ + (* x a) (* y b)
              * inverted $ - (* y a) (* x b)
        |conjugate $ quote
          defn conjugate (pair) (update pair 1 negate)
        |divide-by $ quote
          defn divide-by (point x)
            []
              / (first point) x
              / (last point) x
        |polar-point $ quote
          defn polar-point (angle r)
            []
              * r $ js/Math.cos angle
              * r $ js/Math.sin angle
        |scale $ quote
          defn scale (pair v)
            map pair $ fn (x) (* v x)
