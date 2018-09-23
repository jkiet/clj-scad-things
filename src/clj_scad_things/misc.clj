(ns clj-scad-things.misc
  (:require [scad-clj.model :as m]
            [scad-clj.scad :as s]))

(def arduino-nano-handler
  (m/difference
    (m/union
      (m/minkowski
        (m/cube 44 18 3)
        (->> (m/cube 3 3 3)
             (m/rotate (/ (Math/PI) 4) [0 0 1])))

      (->> (m/cube 8 2 12)
           (m/translate [16.5 -10.2 6]))
      (->> (m/cube 8 2 12)
           (m/translate [-16.5 -10.2 6])))

    (m/minkowski
      (m/cube 40 14 3)
      (->> (m/cube 3 3 3)
           (m/rotate (/ (Math/PI) 4) [0 0 1])))


    (m/cube 44 18 2)
    (->> (m/cube 3 8 2)
         (m/translate [-23 0 2]))
    (->> (m/cylinder 1.8 2)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-16.5 -10.2 8]))
    (->> (m/cylinder 1.8 2)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [16.5 -10.2 8]))

    (->> (m/cube 25 5 6)
         (m/translate [0 -10]))
    ))

(defn gen-arduino-nano-handler
  []
  (spit "resources/arduino-nano-handler.scad"
        (s/write-scad arduino-nano-handler)))

(def opto-handler
  (m/intersection
    (m/difference
      (m/cube 20 45 6)
      (->> (m/cube 10 14 6)
           (m/translate [5 16 0]))
      (->> (m/cube 10 14 6)
           (m/translate [5 -16 0]))
      (->> (m/cube 20 14.5 4)
           (m/translate [1.5 0 1]))
      (->> (m/cube 7 14 4)
           (m/translate [-5 16 1]))
      (->> (m/cube 7 14 4)
           (m/translate [-5 -16 1]))

      (->> (m/cylinder 1.8 6)
           (m/translate [-5 -12 0]))
      (->> (m/cylinder 1.8 6)
           (m/translate [-5 -18 0]))
      (->> (m/cube 3.4 6 6)
           (m/translate [-5 -15 0]))

      (->> (m/cylinder 1.8 6)
           (m/translate [-5 12 0]))
      (->> (m/cylinder 1.8 6)
           (m/translate [-5 18 0]))
      (->> (m/cube 3.4 6 6)
           (m/translate [-5 15 0]))


      (->> (m/cylinder 1.8 6)
           (m/translate [-3 0 0]))
      (->> (m/cylinder 1.8 6)
           (m/translate [5 0 0]))
      (->> (m/cube 8 3.2 6)
           (m/translate [1 0 0])))
    (->> (m/cube 20 50 50)
         (m/rotate (/ (Math/PI) 4) [1 0 0])
         (m/translate [0 0 -14]))))

(defn gen-opto-handler
  []
  (spit "resources/misc.opto-handler.scad"
        (s/write-scad opto-handler)))


(defn pi-handler
  []
  (letfn [(hex
            []
            (binding [m/*fn* 6]
              (m/cylinder 4 22)))]
    (m/difference
      (m/cube 20 70 22)
      (->> (m/cube 20 54 19)
           (m/translate [0 3 1.5]))
      (->> (m/cube 20 58 2)
           (m/translate [0 3 1]))

      (->> (m/cube 2.2 8 22)
           (m/translate [8.9 -31]))
      (->> (m/cube 2.2 8 22)
           (m/translate [-8.9 -31]))
      (->> (m/cube 3.2 8 22)
           (m/translate [3.5 -31]))
      (->> (m/cube 3.2 8 22)
           (m/translate [-3.5 -31]))

      (->> (m/cylinder 1.8 20)
           (m/rotate (/ (Math/PI) 2) [0 1 0])
           (m/translate [0 -31 1.5]))
      (->> (m/cylinder 1.8 20)
           (m/rotate (/ (Math/PI) 2) [0 1 0])
           (m/translate [0 -31 -6]))



      (->> (hex)
           (m/translate [-4 -15]))
      (->> (hex)
           (m/translate [-4 -5]))
      (->> (hex)
           (m/translate [-4 5]))
      (->> (hex)
           (m/translate [-4 15]))
      (->> (hex)
           (m/translate [-4 25]))

      (->> (hex)
           (m/translate [4 -10]))
      (->> (hex)
           (m/translate [4 0]))
      (->> (hex)
           (m/translate [4 10]))
      (->> (hex)
           (m/translate [4 20]))

      (->> (m/cube 12 13 9)
           (m/translate [0 -28.5 9.5]))
      (->> (m/cube 20 3 10)
           (m/rotate (/ (Math/PI) 12) [1 0 0])
           (m/translate [0 -24 7]))

      (->> (m/cube 16 5 7)
           (m/translate [0 32.5 5.5]))
      (->> (m/cube 20 3 10)
           (m/rotate (/ (Math/PI) -12) [1 0 0])
           (m/translate [0 30 7])))))

(defn gen-pi-handler
  []
  (spit "resources/misc.pi-handler.scad"
        (s/write-scad (pi-handler))))

(defn cover-1
  []
  (m/difference
    (m/cube 56 30 17)
    (->> (m/cube 42 31 2)
         (m/rotate (/ (Math/PI) 96) [1 0 0])
         (m/translate [0 0 9]))
    (->> (m/cube 10 30 40)
         (m/rotate (/ (Math/PI) 6) [0 1 0])
         (m/translate [-29 0 0]))
    (->> (m/cube 10 30 40)
         (m/rotate (/ (Math/PI) -6) [0 1 0])
         (m/translate [29 0 0]))
    (->> (m/cube 19.5 30 13)
         (m/translate [0 0 -2]))
    (->> (m/cube 22.8 30 6)
         (m/translate [0 0 -6]))

    (->> (m/cylinder 2.6 56)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [0 -7 -1]))
    (->> (m/cylinder 6 16)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [22 -7 -1]))
    (->> (m/cylinder 6 16)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [-22 -7 -1]))

    (->> (m/cube 19.5 10 17)
         (m/translate [0 10 0]))
    (->> (m/cube 22.8 6 8)
         (m/translate [0 12 0]))))

(defn gen-cover-1
  []
  (spit "resources/misc.cover-1.scad"
        (s/write-scad (cover-1))))