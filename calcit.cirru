
{}
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |calcit-test/ |calcit.std/
  :entries $ {}
    :test $ {} (:init-fn |app.test/main!) (:reload-fn |app.test/reload!)
      :modules $ [] |calcit-test/
  :ir $ {} (:package |app)
    :files $ {}
      |app.main $ {}
        :configs $ {} (:extension nil)
        :defs $ {}
          |calling-func $ {} (:at 1635438145038) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1635438146706) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1635438145038) (:by |u0) (:text |calling-func) (:type :leaf)
              |r $ {} (:at 1635438145038) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1635438147671) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635440602999) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1635438316806) (:by |u0) (:text "|\"todo bcc") (:type :leaf)
          |main! $ {} (:at 1606310749711) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1606310749711) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1606310749711) (:by |u0) (:text |main!) (:type :leaf)
              |r $ {} (:at 1606310749711) (:by |u0) (:type :expr)
                :data $ {}
              |t $ {} (:at 1625340406714) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625340407993) (:by |u0) (:text |run-tests) (:type :leaf)
              |u $ {} (:at 1651385435232) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651385435232) (:by |u0) (:text |set-interval) (:type :leaf)
                  |b $ {} (:at 1651385435232) (:by |u0) (:text |2000) (:type :leaf)
                  |h $ {} (:at 1651385435232) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651385435232) (:by |u0) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1651385435232) (:by |u0) (:type :expr)
                        :data $ {}
                      |h $ {} (:at 1651385435232) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651385435232) (:by |u0) (:text |calling-func) (:type :leaf)
          |on-error $ {} (:at 1606310757107) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1606310757107) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1606310757107) (:by |u0) (:text |on-error) (:type :leaf)
              |r $ {} (:at 1606310757107) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1606310780908) (:by |u0) (:text |message) (:type :leaf)
              |v $ {} (:at 1606311673317) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1606370713438) (:by |u0) (:text |;) (:type :leaf)
                  |T $ {} (:at 1606311684125) (:by |u0) (:text |draw-error-message) (:type :leaf)
                  |j $ {} (:at 1606311685136) (:by |u0) (:text |message) (:type :leaf)
          |reload! $ {} (:at 1606310753106) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1606310753106) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1606310753106) (:by |u0) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1606310753106) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1606310801441) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1606310803027) (:by |u0) (:text |echo) (:type :leaf)
                  |j $ {} (:at 1625293407488) (:by |u0) (:text "|\"Reloaded.") (:type :leaf)
        :ns $ {} (:at 1606310745262) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1606310745262) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1606310745262) (:by |u0) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1625340359278) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1625340360591) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1625340360867) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1625340363084) (:by |u0) (:text |app.test) (:type :leaf)
                    |j $ {} (:at 1625340363810) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1625340366421) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1625340368206) (:by |u0) (:text |run-tests) (:type :leaf)
                |r $ {} (:at 1635438174394) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1635438179295) (:by |u0) (:text |calcit.std.time) (:type :leaf)
                    |j $ {} (:at 1635438177953) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1635438180356) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1635438182183) (:by |u0) (:text |set-interval) (:type :leaf)
        :proc $ {} (:at 1606310745262) (:by |u0) (:type :expr)
          :data $ {}
      |app.test $ {}
        :configs $ {}
        :defs $ {}
          |main! $ {} (:at 1651385630841) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651385630841) (:by |u0) (:text |defn) (:type :leaf)
              |b $ {} (:at 1651385630841) (:by |u0) (:text |main!) (:type :leaf)
              |h $ {} (:at 1651385630841) (:by |u0) (:type :expr)
                :data $ {}
              |l $ {} (:at 1651385633767) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651385635804) (:by |u0) (:text |run-tests) (:type :leaf)
          |reload! $ {} (:at 1651385641606) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651385641606) (:by |u0) (:text |defn) (:type :leaf)
              |b $ {} (:at 1651385641606) (:by |u0) (:text |reload!) (:type :leaf)
              |h $ {} (:at 1651385641606) (:by |u0) (:type :expr)
                :data $ {}
              |l $ {} (:at 1651385642773) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651385643658) (:by |u0) (:text |println) (:type :leaf)
                  |b $ {} (:at 1651385646578) (:by |u0) (:text "|\"TODO reload") (:type :leaf)
          |run-tests $ {} (:at 1625339970921) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1625339972421) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1625339970921) (:by |u0) (:text |run-tests) (:type :leaf)
              |r $ {} (:at 1625339970921) (:by |u0) (:type :expr)
                :data $ {}
              |t $ {} (:at 1625340033281) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625340034982) (:by |u0) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1625340036265) (:by |u0) (:text |*quit-on-failure?) (:type :leaf)
                  |r $ {} (:at 1625340037959) (:by |u0) (:text |true) (:type :leaf)
              |v $ {} (:at 1625339973401) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625339982550) (:by |u0) (:text |test-add) (:type :leaf)
          |test-add $ {} (:at 1625339983101) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1625339986557) (:by |u0) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1625339983101) (:by |u0) (:text |test-add) (:type :leaf)
              |r $ {} (:at 1625340048519) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625340049484) (:by |u0) (:text |testing) (:type :leaf)
                  |j $ {} (:at 1625340052314) (:by |u0) (:text ||add) (:type :leaf)
                  |r $ {} (:at 1625340054484) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1625340055860) (:by |u0) (:text |is) (:type :leaf)
                      |j $ {} (:at 1625340056137) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1625340056311) (:by |u0) (:text |=) (:type :leaf)
                          |j $ {} (:at 1625340057399) (:by |u0) (:text |2) (:type :leaf)
                          |r $ {} (:at 1625340057796) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1625340058161) (:by |u0) (:text |+) (:type :leaf)
                              |j $ {} (:at 1625340058562) (:by |u0) (:text |1) (:type :leaf)
                              |r $ {} (:at 1625340138662) (:by |u0) (:text |1) (:type :leaf)
        :ns $ {} (:at 1625339956346) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1625339956346) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1625339956346) (:by |u0) (:text |app.test) (:type :leaf)
            |r $ {} (:at 1625340009385) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1625340010270) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1625340010573) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1625340015655) (:by |u0) (:text |calcit-test.core) (:type :leaf)
                    |j $ {} (:at 1625340016422) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1625340016945) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1625340018567) (:by |u0) (:text |deftest) (:type :leaf)
                        |j $ {} (:at 1625340020648) (:by |u0) (:text |testing) (:type :leaf)
                        |r $ {} (:at 1625340021012) (:by |u0) (:text |is) (:type :leaf)
                        |v $ {} (:at 1625340040078) (:by |u0) (:text |*quit-on-failure?) (:type :leaf)
        :proc $ {} (:at 1625339956346) (:by |u0) (:type :expr)
          :data $ {}
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
