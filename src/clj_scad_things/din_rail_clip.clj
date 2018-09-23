(ns clj-scad-things.din-rail-clip
  (:require [scad-clj.model :as m]
            [scad-clj.scad :as s]))

(defn- hypotenuse
  [x y]
  (Math/sqrt (+ (* x x) (* y y))))

(defn- grate
  [h z n]
  (let [a (hypotenuse h h)]
    (m/union
      (for [i (range n)]

        (as-> (m/cube a a z) $
              (m/rotate (/ (Math/PI) 4) [0 0 1] $)
              (cond (zero? i) $
                    (odd? i) (m/translate [(- (* h (inc i))) 0 0] $)
                    (even? i) (m/translate [(* h i) 0 0] $)))))))

(defn- rail-side-part
  []
  (m/intersection
    (m/difference
      (m/cube 44 20 8)
      (->> (m/cube 4 20 4)
           (m/translate [14 0 0]))
      (let [a (hypotenuse 6 6)]
        (->> (m/cube a 20 a)
             (m/rotate (/ (Math/PI) 4) [0 1 0])
             (m/translate [12 0 4])))
      (let [a (hypotenuse 2 2)]
        (->> (m/cube a 20 a)
             (m/rotate (/ (Math/PI) 4) [0 1 0])
             (m/translate [16 0 0])))
      (->> (m/cube 20 20 2)
           (m/translate [0 0 3]))
      (m/cylinder 2.8 8)
      (->> (m/cylinder 6.2 2)
           (m/translate [0 0 1]))
      (->> (grate 2 10 5)
           (m/rotate (/ (Math/PI) 2) [1 0 0])
           (m/translate [0 0 -4]))
      (->> (m/cylinder 4.6 8.4)
           (m/rotate (/ (Math/PI) 2) [0 1 0])
           (m/translate [14 0 -7])))
    (let [a (hypotenuse 20.5 20.5)]
      (->> (m/cube a 20 a)
           (m/rotate (/ (Math/PI) 4) [0 1 0])
           (m/translate [6.5 0 -4])))))

(defn gen-rail-side-part
  []
  (spit "resources/din_rail_clip/rail-side-part.scad"
        (s/write-scad (rail-side-part))))

(defn slider-part
  []
  (m/intersection
    (m/union
      (m/difference
        (m/cube 44 20 14)
        (let [a (hypotenuse 4 4)]
          (->> (m/cube a 20 a)
               (m/rotate (/ (Math/PI) 4) [0 1 0])
               (m/translate [-14 0 3])))
        (let [a (hypotenuse 8 8)]
          (->> (m/cube a 20 a)
               (m/rotate (/ (Math/PI) 4) [0 1 0])
               (m/translate [-10 0 7])))
        (->> (m/cube 36 20 8)
             (m/translate [4 0 3]))
        (->> (m/cube 32 10 6)
             (m/translate [2 0 -4]))
        (let [a (hypotenuse 2 2)]
          (->> (m/cube a 6 a)
               (m/rotate (/ (Math/PI) 4) [0 1 0])
               (m/translate [20 0 -5])))
        (let [a (hypotenuse 2 2)]
          (->> (m/cube a 6 a)
               (m/rotate (/ (Math/PI) 4) [0 1 0])
               (m/translate [-20 0 -5])))
        )

      (->> (m/cylinder 2 2)
           (m/rotate (/ (Math/PI) 2) [0 1 0])
           (m/translate [17 0 -4])))
    (let [a (hypotenuse 26 26)]
      (->> (m/cube a 20 a)
           (m/rotate (/ (Math/PI) 4) [0 1 0])))))

(defn gen-slider-part
  []
  (spit "resources/din_rail_clip/slider-part.scad"
        (s/write-scad (slider-part))))

(defn equipment-side-part
  []
  (m/union
    (m/difference
      (m/union
        (m/cube 40 20 16)
        (->> (grate 2 9.6 5)
             (m/rotate (/ (Math/PI) 2) [1 0 0])
             (m/translate [0 0 8])))
      (->> (m/difference
             (m/cube 40 20 6)
             (m/cube 20 9.6 6))
           (m/translate [0 0 5]))
      (->> (m/cylinder 4.6 8.2)
           (m/rotate (/ (Math/PI) 2) [0 1 0])
           (m/translate [14.2 0 5]))

      (m/cylinder 2.8 20)
      (->> (m/cylinder 6.2 13)
           (m/translate [0 0 -1.5]))

      (->> (m/cube 40 4 8)
           (m/translate [0 0 -4]))
      (->> (m/cube 40 3 8)
           (m/translate [0 6.5 -4]))
      (->> (m/cube 40 3 8)
           (m/translate [0 -6.5 -4]))

      (->> (m/cylinder 1.8 20)
           (m/rotate (/ (Math/PI) 2) [1 0 0])
           (m/translate [15 0 -5]))
      (->> (m/cylinder 1.8 20)
           (m/rotate (/ (Math/PI) 2) [1 0 0])
           (m/translate [-15 0 -5]))
      (->> (m/cylinder 1.8 20)
           (m/rotate (/ (Math/PI) 2) [1 0 0])
           (m/translate [8 0 -5]))
      (->> (m/cylinder 1.8 20)
           (m/rotate (/ (Math/PI) 2) [1 0 0])
           (m/translate [-8 0 -5])))
    (->> (m/cylinder 2 2)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [11 0 5]))))

(defn gen-equipment-side-part
  []
  (spit "resources/din_rail_clip/equipment-side-part.scad"
        (s/write-scad (equipment-side-part))))

(defn equipment-side-part-v2
  []
  (m/union
    (m/difference
      (m/union
        (m/cube 40 30 16)
        (->> (grate 2 9.6 5)
             (m/rotate (/ (Math/PI) 2) [1 0 0])
             (m/translate [0 0 8])))
      (->> (m/difference
             (m/cube 40 30 6)
             (m/cube 20 9.6 6))
           (m/translate [0 0 5]))
      (->> (m/cylinder 4.6 8.2)
           (m/rotate (/ (Math/PI) 2) [0 1 0])
           (m/translate [14.2 0 5]))

      (m/cylinder 2.8 20)
      (->> (m/cylinder 6.2 13)
           (m/translate [0 0 -1.5]))

      (->> (m/cube 40 25 5)
           (m/translate [0 0 -3]))
      )


    (->> (m/cylinder 2 2)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [11 0 5]))))

(defn gen-equipment-side-part-v2
  []
  (spit "resources/din_rail_clip/equipment-side-part-v2.scad"
        (s/write-scad (equipment-side-part-v2))))

(defn gen-all-parts
  []
  (->> (m/union
         (->> (rail-side-part)
              (m/translate [25 15 4]))
         (->> (slider-part)
              (m/translate [-25 15 7]))
         (->> (equipment-side-part)
              (m/translate [-25 -15 8]))
         (->> (equipment-side-part-v2)
              (m/translate [30 -20 8])))
       s/write-scad
       (spit "resources/din_rail_clip/all-parts.scad")))
