
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |arithmetic
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'arithmetic.test/main!) (:mode :native) (:reload-fn 'arithmetic.test/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'arithmetic.complex $ %{} 'FileEntry
      :defs $ {}
        'add $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add (p1 p2)
            let
                a $ .unwrap $ nth p1 0
                b $ .unwrap $ nth p1 1
                x $ .unwrap $ nth p2 0
                y $ .unwrap $ nth p2 1
              [] (+ a x) (+ b y)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Number) (:: 'List 'Number)
            :return $ :: 'List 'Number
        'conjugate $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn conjugate (pair)
            assoc pair 1 $ negate $ .unwrap (nth pair 1)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Number
            :return $ :: 'List 'Number
        'divide $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn divide (value base) "|complex number division, renamed since naming collision"
            let-sugar
                  [] x y
                  , value
                ([] a b) base
                inverted $ / 1 $ + (* a a) (* b b)
              []
                * inverted $ + (* x a) (* y b)
                * inverted $ - (* y a) (* x b)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Number) (:: 'List 'Number)
            :return $ :: 'List 'Number
        'divide-by $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn divide-by (point x)
            []
              /
                .unwrap $ nth point 0
                , x
              /
                .unwrap $ nth point $ dec (count point)
                , x
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Number) 'Number
            :return $ :: 'List 'Number
        'multiply $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn multiply (v1 v2)
            let
                a $ .unwrap $ nth v1 0
                b $ .unwrap $ nth v1 1
                x $ .unwrap $ nth v2 0
                y $ .unwrap $ nth v2 1
              []
                - (* a x) (* b y)
                + (* a y) (* b x)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Number) (:: 'List 'Number)
            :return $ :: 'List 'Number
        'polar-point $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn polar-point (angle r)
            []
              * r $ cos angle
              * r $ sin angle
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Number 'Number
            :return $ :: 'List 'Number
        'scale $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scale (pair v)
            map pair $ fn (x) (* v x)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Number) 'Number
            :return $ :: 'List 'Number
        'subtract $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn subtract (v1 v2)
            let
                a $ .unwrap $ nth v1 0
                b $ .unwrap $ nth v1 1
                x $ .unwrap $ nth v2 0
                y $ .unwrap $ nth v2 1
              [] (- a x) (- b y)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Number) (:: 'List 'Number)
            :return $ :: 'List 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns arithmetic.complex
    'arithmetic.test $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (run-tests)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (run-tests)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'run-tests $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-tests () (test-basic)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'test-basic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn test-basic ()
            assert= ([] 3 5)
              2d/add ([] 1 2) ([] 2 3)
            assert= ([] -1 -1)
              2d/subtract ([] 1 2) ([] 2 3)
            assert= ([] -5 10)
              2d/multiply ([] 1 2) ([] 3 4)
            assert= ([] 1 2)
              2d/divide ([] -5 10) ([] 3 4)
            assert= ([] 1 -2)
              2d/conjugate $ [] 1 2
            assert= ([] 3 6)
              2d/scale ([] 1 2) 3
            assert= ([] 1 2)
              2d/divide-by ([] 3 6) 3
            assert= ([] 2 0) (2d/polar-point 0 2)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
          :tests $ [] $ %{} 'TestEntry (:name |complex-operations)
            :code $ quote $ test-basic
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns arithmetic.test
          :require $ arithmetic.complex :as 2d
