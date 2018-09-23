(ns clj-scad-things.rover
  (:require [scad-clj.model :as m]
            [scad-clj.scad :as s]))


(defn track-drive-wheel
  []
  (binding [m/*fn* 256]
    (m/difference
      (m/union
        (m/cylinder 29.5 10)
        (->> (m/cylinder 24 12)
             (m/translate [0 0 11])))
      (m/cylinder 18 10)
      (->> (m/cylinder 19.8 12)
           (m/translate [0 0 11]))
      (for [i (range 12)]
        (->> (binding [m/*fn* 64]
               (m/cylinder 3.5 11))
             (m/translate [29.5 0 0])
             (m/rotate (* (/ (Math/PI) 6) i) [0 0 1]))))))

(defn gen-track-drive-wheel
  []
  (spit "resources/rover/track-drive-wheel.scad"
        (s/write-scad (track-drive-wheel))))


(defn drive-wheel
  []
  (m/difference
    (m/union
      (as-> (m/polygon [[2.5 0]
                        [2.5 22]
                        [6 22]
                        [8 8]
                        [41 8]
                        [41 50]
                        [45 50]
                        [45 49]
                        [44 48]
                        [44 31]
                        [45 30]
                        [45 0]]) $
            (binding [m/*fn* 256]
              (m/extrude-rotate $)))
      (for [i (range 8)]
        (->> (m/polygon [[0 0]
                         [0 50]
                         [5 0]])
             (m/extrude-linear {:height    3
                                :convexity 10})
             (m/rotate (/ (Math/PI) 2) [1 0 0])
             (m/translate [-41 0 0])
             (m/rotate (* i (/ (Math/PI) 4)) [0 0 1])))
      (for [i (range 8)]
        (->> (m/polygon [[0 0]
                         [0 25]
                         [25 0]])
             (m/extrude-linear {:height    3
                                :convexity 10})
             (m/rotate (/ (Math/PI) 2) [1 0 0])
             (m/translate [-41 0 0])
             (m/rotate (+ (* i (/ (Math/PI) 4)) (/ (Math/PI) 8)) [0 0 1]))))

    (m/cube 1 30 44)
    (m/cube 30 1 44)

    (for [i (range 8)]
      (->> (m/cylinder 8 16)
           (m/translate [26 0 0])
           (m/rotate (* i (/ (Math/PI) 4)) [0 0 1])))
    (apply concat
           (for [x [-8 8]
                 y [-8 8]]

             [(->> (m/cylinder 1.8 10)
                   (m/translate [x y 5]))
              (->> (m/cylinder 4 3)
                   (m/translate [x y 1.5]))]))
    (->> (m/difference
           (m/cylinder 38 2)
           (m/cylinder 36 2))
         (m/translate [0 0 1]))))

(defn gen-drive-wheel
  []
  (spit "resources/rover/drive-wheel.scad"
        (s/write-scad (drive-wheel))))

(defn rear-wheel
  []
  (m/difference
    (m/union
      (as-> (m/polygon [[8.25 0]
                        [8.25 15]
                        [7 16]
                        [7 44]
                        [8.25 45]
                        [8.25 50]
                        [12 50]
                        [12 4]
                        [42 4]
                        [42 50]
                        [45 50]
                        [45 49]
                        [44 48]
                        [44 31]
                        [45 30]
                        [45 0]]) $
            (binding [m/*fn* 256]
              (m/extrude-rotate $)))
      (for [i (range 8)]
        (->> (m/cube 32 48 2)
             (m/rotate (/ (Math/PI) 2) [1 0 0])
             (m/translate [-27 0 26])
             (m/rotate (+ (* i (/ (Math/PI) 4)) (/ (Math/PI) 8)) [0 0 1]))))

    (for [i (range 8)]
      (->> (m/cylinder 8 16)
           (m/translate [26 0 0])
           (m/rotate (* i (/ (Math/PI) 4)) [0 0 1])))
    (->> (m/difference
           (m/cylinder 38 2)
           (m/cylinder 36 2))
         (m/translate [0 0 1]))))

(defn gen-rear-wheel
  []
  (spit "resources/rover/rear-wheel.scad"
        (s/write-scad (rear-wheel))))

(defn steering
  []
  (letfn [(cyl [r h n]
            (binding [m/*fn* n]
              (m/cylinder r h)))]
    (m/difference
      (m/union
        (m/cylinder 30 16)
        (->> (m/cylinder 32 2)
             (m/translate [0 0 7]))
        (->> (m/cylinder 32 2)
             (m/translate [0 0 -2]))
        (for [i (range -80 80 2)
              :let [a (+ (/ (inc i) 30) (/ (Math/PI) 2))]]
          (->> (cyl 0.5 7 32)
               (m/translate [30 0 2.5])
               (m/rotate a [0 0 1]))))
      (->> (m/cube 43 40.5 12)
           (m/translate [0 0 2.5]))
      (for [i (range -80 80 2)
            :let [a (+ (/ i 30) (/ (Math/PI) 2))]]
        (->> (cyl 0.55 7 32)
             (m/translate [30 0 2.5])
             (m/rotate a [0 0 1])))

      (->> (m/cylinder 1.8 10)
           (m/rotate (/ (Math/PI) 2) [1 0 0])
           (m/translate [15.5 -25 2.5]))
      (->> (m/cylinder 1.8 10)
           (m/rotate (/ (Math/PI) 2) [1 0 0])
           (m/translate [-15.5 -25 2.5]))


      (->> (m/cylinder 1.8 16)
           (m/translate [0 25 0]))
      (->> (m/cylinder 3 10)
           (m/translate [0 25 0]))
      (->> (m/cylinder 1.8 16)
           (m/translate [25 0 0]))
      (->> (m/cylinder 3 10)
           (m/translate [25 0 0]))
      (->> (m/cylinder 1.8 16)
           (m/translate [-25 0 0]))
      (->> (m/cylinder 3 10)
           (m/translate [-25 0 0]))

      #_(m/cylinder 7 16)
      (->> (cyl 8.25 5 64)
           (m/translate [0 0 -5.5]))
      (->> (m/difference
             (m/cylinder 32 3)
             (m/cylinder 10 3))
           (m/translate [0 0 -6.5]))

      (->> (m/cube 60 10 16)
           (m/translate [0 -30 0]))

      #_(->> (m/cube 60 10 10)
             (m/translate [0 30 0]))
      #_(->> (m/cube 40 4 16)
             (m/translate [0 30 0]))

      (->> (m/cylinder 15 10)
           (m/rotate (/ (Math/PI) 2) [1 0 0])
           (m/translate [0 -25 19])))))

(defn gen-steering
  []
  (spit "resources/rover/steering.scad"
        (s/write-scad (steering))))