(ns clj-scad-things.dr-24312
  (:require [scad-clj.model :as m]
            [scad-clj.scad :as s]))

(def dot-projector
  (m/difference
    (m/union
      (m/minkowski
        (->> (m/cube 7 7 5)
             (m/rotate (/ (Math/PI) 4) [0 0 1]))
        (m/cube 30 30 10)))
    (m/cylinder 8 19)
    (->> (m/cube 40 32 1)
         (m/translate [0 0 7]))
    (->> (m/cube 32 20 2)
         (m/translate [-4 -6 5.5]))
    (->> (m/cube 5 5 6)
         (m/translate [17.5 0 3.5]))
    (->> (m/cylinder 16 14)
         (m/translate [0 0 0.5]))

    (->> (m/cylinder 1.9 15)
         (m/translate [16.5 11]))
    (->> (m/cylinder 3 14)
         (m/translate [16.5 11 -5]))
    (->> (m/cube 6 6 14)
         (m/translate [19.7 11 -5]))

    (->> (m/cylinder 1.9 15)
         (m/translate [16.5 -11]))
    (->> (m/cylinder 3 14)
         (m/translate [16.5 -11 -5]))
    (->> (m/cube 6 6 14)
         (m/translate [19.7 -11 -5]))

    (->> (m/cylinder 1.9 15)
         (m/translate [-17.5 11]))
    (->> (m/cylinder 3 14)
         (m/translate [-17.5 11 -5]))
    (->> (m/cube 6 6 14)
         (m/translate [-20.7 11 -5]))

    (->> (m/cube 15 6 4)
         (m/translate [-20 -6 -4])
         (m/rotate (/ (Math/PI) 6) [0 0 1]))
    (->> (m/cube 6 14 2)
         (m/translate [-20 -6 -4])
         (m/rotate (/ (Math/PI) 6) [0 0 1]))
    (->> (m/cube 6 2 10)
         (m/translate [-20 -6 -4])
         (m/rotate (/ (Math/PI) 6) [0 0 1]))
    (->> (m/cylinder 3.2 5.5)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [-20 -6 -4])
         (m/rotate (/ (Math/PI) 6) [0 0 1]))
    (->> (m/cube 6 15 15)
         (m/translate [-25.5 -6])
         (m/rotate (/ (Math/PI) 6) [0 0 1]))

    (->> (m/cube 10 10 4)
         (m/translate [-6 -16 -4]))))

(defn gen-dot-projector
  []
  (spit "resources/dr_24312/dot-projector.scad"
        (s/write-scad dot-projector)))



(def line-pointer-handle
  (m/difference
    (m/union
      (m/cylinder 23 2)
      (->> (m/cube 18 2 10)
           (m/translate [24 0 4])
           (m/rotate (/ (Math/PI) -6) [0 0 1]))
      (->> (m/intersection
             (->> (m/cube 2 12 12)
                  (m/rotate (/ (Math/PI) 4) [1 0 0]))
             (->> (m/cube 2 30 30)
                  (m/translate [0 0 15])))
           (m/translate [18 0 0])
           (m/rotate (/ (Math/PI) -6) [0 0 1])

           ))
    (m/cylinder 15 2)

    (->> (m/cylinder 1.8 2)
         (m/translate [-16.5 11]))

    (->> (m/cylinder 1.8 2)
         (m/translate [-16.5 -11]))

    (->> (m/cylinder 1.8 2)
         (m/translate [17.5 11]))

    (->> (m/cylinder 2.2 3)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [28 0 4])
         (m/rotate (/ (Math/PI) -6) [0 0 1]))))

(defn gen-line-pointer-handle
  []
  (spit "resources/dr_24312/line-pointer-handle.scad"
        (s/write-scad line-pointer-handle)))


(def dot-projector-handle
  (m/difference
    (m/union
      (m/minkowski
        (->> (m/cube 7 7 5)
             (m/rotate (/ (Math/PI) 4) [0 0 1]))
        (m/cube 30 30 5)))
    (->> (m/cube 18 40 8)
         (m/translate [11 0 1]))
    (->> (m/cube 18 40 8)
         (m/translate [-11 0 1]))
    (->> (m/cylinder 6 2)
         (m/translate [0 0 -4]))
    (m/cube 4 10 10)

    (->> (m/cylinder 1.8 10)
         (m/translate [16.5 11]))
    (->> (m/cylinder 1.8 10)
         (m/translate [16.5 -11]))
    (->> (m/cylinder 1.8 10)
         (m/translate [-17.5 11]))

    (->> (m/cylinder 1.8 4)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [0 15 1]))
    (->> (m/cylinder 1.8 4)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [0 -15 1]))
    (->> (m/cylinder 1.8 4)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [0 8 1]))
    (->> (m/cylinder 1.8 4)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [0 -8 1]))))

(defn gen-dot-projector-handle
  []
  (spit "resources/dr_24312/dot-projector-handle.scad"
        (s/write-scad dot-projector-handle)))


(defn pointer-head
  []
  (binding [m/*fn* 30]
    (m/difference
      (m/sphere 6)
      (->> (m/cube 12 12 2)
           (m/translate [0 0 5]))
      (->> (m/cube 12 12 2)
           (m/translate [0 0 -5]))
      (m/cylinder 3.1 12)
      (m/cube 3 7 12))))

(defn gen-pointer-head
  []
  (spit "resources/dr-24312/pointer-head.scad"
        (s/write-scad (pointer-head))))

(defn pointer-unit
  []
  (m/difference
    (m/union
      (m/cube 48 44 2)
      (->> (m/cube 48 8 4)
           (m/translate [0 -18 3]))
      (->> (m/cylinder 4 4)
           (m/translate [0 2 3]))
      (->> (m/cube 6 8 4)
           (m/translate [0 18 3]))
      (->> (m/cube 8 28 6)
           (m/translate [-24 -8 2]))
      (->> (m/cube 8 28 6)
           (m/translate [24 -8 2])))
    (->> (m/cylinder 3.2 4)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [0 -20 5.5]))
    (->> (m/cube 8 8 3)
         (m/translate [-10 -18 3.5]))
    (->> (m/cube 8 8 3)
         (m/translate [10 -18 3.5]))

    (->> (m/sphere 6)
         (m/translate [-18 16 5.5]))
    (->> (m/sphere 6)
         (m/translate [-12 4 5.5]))
    (->> (m/sphere 6)
         (m/translate [-6 -8 5.5]))
    (->> (m/sphere 6)
         (m/translate [18 16 5.5]))
    (->> (m/sphere 6)
         (m/translate [12 4 5.5]))
    (->> (m/sphere 6)
         (m/translate [6 -8 5.5]))

    (->> (m/cube 16 4 10)
         (m/translate [0 -16]))
    (->> (m/cube 20 2 10)
         (m/translate [0 -15]))

    (->> (m/cube 32 1 10)
         (m/translate [0 -2]))
    (->> (m/cube 1 12 10)
         (m/translate [0 -8]))
    (->> (m/cube 1 10 10)
         (m/translate [15.5 -7]))
    (->> (m/cube 1 10 10)
         (m/translate [-15.5 -7]))

    (->> (m/cube 1 18 10)
         (m/translate [-20 1]))
    (->> (m/cube 14 1 10)
         (m/translate [-13 9.5]))
    (->> (m/cube 1 8 10)
         (m/translate [-5.5 6]))
    (->> (m/cube 2 1 10)
         (m/translate [-5 2]))

    (->> (m/cube 1 18 10)
         (m/translate [20 1]))
    (->> (m/cube 14 1 10)
         (m/translate [13 9.5]))
    (->> (m/cube 1 8 10)
         (m/translate [5.5 6]))
    (->> (m/cube 2 1 10)
         (m/translate [5 2]))


    (->> (m/cube 1 9 10)
         (m/translate [-3.5 17.5]))
    (->> (m/cube 1 2 10)
         (m/translate [-2.5 13]))
    (->> (m/cube 1 9 10)
         (m/translate [3.5 17.5]))
    (->> (m/cube 1 2 10)
         (m/translate [2.5 13]))
    (->> (m/cylinder 3.1 8)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [0 18 5.5]))


    (->> (m/cylinder 1.8 10)
         (m/translate [-24 2]))
  (->> (m/cylinder 1.8 10)
       (m/translate [24 2]))
    (->> (m/cylinder 1.8 10)
         (m/translate [0 2]))
    (->> (m/cylinder 1.8 10)
         (m/translate [-20 -18]))
    (->> (m/cylinder 1.8 10)
         (m/translate [20 -18]))))

(defn gen-pointer-unit
  []
  (spit "resources/dr-24312/pointer-unit.scad"
        (s/write-scad (pointer-unit))))


