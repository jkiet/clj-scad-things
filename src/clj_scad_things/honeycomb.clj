(ns clj-scad-things.honeycomb
  (:require [scad-clj.model :as m]
            [scad-clj.scad :as s]))

(defn stamp
  [r h]
  (let [sin60 (Math/sin (/ (Math/PI) 3))
        cos60 (Math/cos (/ (Math/PI) 3))]
    (m/intersection
      (->> (m/polygon [[(* 0.1 cos60) (* 0.1 sin60)]
                       [-0.1 0]
                       [(* 0.1 cos60) (* -0.1 sin60)]])
           (m/extrude-linear {:height h
                              :scale  (/ (* 10 h) (Math/tan (/ (Math/PI) 12)))
                              :center false}))
      (->> (m/polygon [[r 0]
                       [(* r cos60) (* r sin60)]
                       [(- (* r cos60)) (* r sin60)]
                       [(- r) 0]
                       [(- (* r cos60)) (- (* r sin60))]
                       [(* r cos60) (* (- r) sin60)]])
           (m/extrude-linear {:height h
                              :center false})))))

(defn cell
  [r h d]
  (m/difference
    (stamp (+ r (/ d 2)) h)
    (->> (stamp (- r (/ d 2)) h)
         (m/translate [0 0 d]))))

(defn cells
  [xn yn r h d]
  (m/union
    (->> (for [i (range xn)
               j (range yn)
               :when (= (even? i) (even? j))]
           (->> (cell r h d)
                (m/translate [(* 1.5 i r) (/ (* j (Math/sqrt 3) r) 2) 0]))))))



(defn gen-cells
  []
  (spit "resources/honeycomb/test.scad"
        (s/write-scad
          (->> (cells 25 15 10 10 1)
               (m/rotate (/ (Math/PI) 2) [1 0 0])))))