(ns clj-scad-things.pulley
  (:require [scad-clj.model :as m]
            [scad-clj.scad :as s]))


(defn rpc-90
  []
  (as-> (m/polygon [[10 0]
                    [10 7.25]
                    [20 7.25]
                    [20 12.5]
                    [43 12.5]
                    [45 10.5]
                    [45 -10.5]
                    [43 -12.5]
                    [20 -12.5]
                    [20 -7.25]
                    [10 -7.25]]) $
        (binding [m/*fn* 256]
          (m/extrude-rotate $))))

(defn gen-rpc-90
  []
  (spit "resources/pulley/rpc-90.scad"
        (s/write-scad (rpc-90))))

(defn r-33
  []
  (as-> (m/polygon [[5 4]
                    [12 4]
                    [12 5.5]
                    [15 5.5]
                    [16.5 4]
                    [16.5 -4]
                    [15 -5.5]
                    [12 -5.5]
                    [12 -4]
                    [5 -4]]) $
        (binding [m/*fn* 256]
          (m/extrude-rotate $))))

(defn gen-r-33
  []
  (spit "resources/pulley/r-33.scad"
        (s/write-scad (r-33))))

(defn arm
  []
  (m/difference
    (m/cube 145 120 40)
    (->> (m/cube 142 114 40)
         (m/translate [-1.5 0 0]))
    (->> (m/cube 3 120 20)
         (m/translate [71 0 -10]))
    (->> (m/cube 4 120 10)
         (m/translate [67.5 0 -5]))
    (->> (m/cylinder 11.5 3)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-52.5 -58.5 0]))
    (->> (m/cylinder 8.2 3)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-52.5 58.5 0]))

    (->> (m/cylinder 1.8 120)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-36.9 0 -15.6]))
    (->> (m/cylinder 1.8 120)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-36.9 0 15.6]))
    (->> (m/cylinder 1.8 120)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-68.1 0 -15.6]))
    (->> (m/cylinder 1.8 120)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-68.1 0 15.6]))))

(defn gen-arm
  []
  (spit "resources/pulley/arm.scad"
        (s/write-scad (arm))))

(defn support
  []
  (m/difference
    (m/cube 45 126 40)
    (->> (m/cube 42 120 40)
         (m/translate [1.5 0 0]))
    (->> (m/cylinder 11.5 3)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [2.5 -61.5 0]))
    (->> (m/cylinder 8.2 3)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [2.5 61.5 0]))

    (->> (m/cylinder 1.8 126)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-13.1 0 -15.6]))
    (->> (m/cylinder 1.8 126)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [-13.1 0 15.6]))
    (->> (m/cylinder 1.8 126)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [18.1 0 -15.6]))
    (->> (m/cylinder 1.8 126)
         (m/rotate (/ (Math/PI) 2) [1 0 0])
         (m/translate [18.1 0 15.6]))

    (->> (m/cylinder 2.3 3)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [-21 -17.5 10]))
    (->> (m/cylinder 2.3 3)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [-21 17.5 10]))
    (->> (m/cylinder 2.3 3)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [-21 -17.5 -10]))
    (->> (m/cylinder 2.3 3)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [-21 17.5 -10]))))

(defn gen-support
  []
  (spit "resources/pulley/support.scad"
        (s/write-scad (support))))

(defn chassis-partial
  []
  (m/difference
    (m/cube 180 192 38)
    (->> (m/cube 177 192 35)
         (m/translate [-1.5 0 1.5]))

    (->> (m/cube 50 33 38)
         (m/translate [65 83.5 0]))
    (->> (m/cube 50 33 38)
         (m/translate [65 -83.5 0]))
    (->> (m/cube 106 33 38)
         (m/translate [-37 83.5 0]))
    (->> (m/cube 106 33 38)
         (m/translate [-37 -83.5 0]))

    (->> (m/cube 4 15 3)
         (m/translate [17.335 83.5 -17.5]))
    (->> (m/cube 4 15 3)
         (m/translate [38.665 83.5 -17.5]))
    (->> (m/cube 4 15 3)
         (m/translate [17.335 -83.5 -17.5]))
    (->> (m/cube 4 15 3)
         (m/translate [38.665 -83.5 -17.5]))

    (->>
      (m/difference
        (m/cylinder 15 20)
        (m/cylinder 10 20))
      (m/rotate (/ (Math/PI) 2) [1 0 0])
      (m/translate [28 96 -17.5]))
    (->>
      (m/difference
        (m/cylinder 15 20)
        (m/cylinder 10 20))
      (m/rotate (/ (Math/PI) 2) [1 0 0])
      (m/translate [28 -96 -17.5]))

    (->> (m/cube 3 5 12)
         (m/translate [88.5 57.5 -6]))
    (->> (m/cube 3 5 12)
         (m/translate [88.5 -57.5 -6]))
    (->> (m/cube 3 5 12)
         (m/translate [88.5 57.5 14]))
    (->> (m/cube 3 5 12)
         (m/translate [88.5 -57.5 14]))


    (->> (m/cylinder 4.5 3)
         (m/translate [58 50 -17.5]))
    (->> (m/cylinder 4.5 3)
         (m/translate [58 -50 -17.5]))

    (->> (binding [m/*fn* 6]
           (m/cylinder 50 3))
         (m/translate [15 0 -17.5]))
    (->> (binding [m/*fn* 6]
           (m/cylinder 25 3))
         (m/translate [-55 -30 -17.5]))
    (->> (binding [m/*fn* 6]
           (m/cylinder 25 3))
         (m/translate [-55 30 -17.5]))))

(defn gen-chassis-partial
  []
  (spit "resources/pulley/chassis-partial.scad"
        (s/write-scad (chassis-partial))))

(defn pulley-unit
  []
  (m/difference
    (m/cube 64 192 48)
    (->> (m/cube 56 192 44)
         (m/translate [0 0 2]))

    (->> (m/cube 50 33 48)
         (m/translate [0 83.5 0]))
    (->> (m/cube 50 33 48)
         (m/translate [0 -83.5 0]))


    (->> (m/cube 64 192 48)
         (m/translate [-4 0 16]))


    (->> (m/cube 4 15 6)
         (m/translate [-30 83.5 -9.5]))
    (->> (m/cube 4 15 6)
         (m/translate [-30 -83.5 -9.5]))

    (->> (m/cylinder 4.5 4)
         (m/translate [0 50 -22]))
    (->> (m/cylinder 4.5 4)
         (m/translate [0 -50 -22]))

    (->> (m/difference
           (m/cylinder 100 16.2)
           (m/cylinder 4.5 16.2))
         (m/translate [30 -83.5 16]))
    (->> (m/difference
           (m/cylinder 100 16.2)
           (m/cylinder 4.5 16.2))
         (m/translate [30 83.5 16]))

    (->> (m/cube 10 10 48)
         (m/translate [30 96 0]))
    (->> (m/cube 10 10 48)
         (m/translate [30 -96 0]))
    (->> (m/cube 10 150 48)
         (m/translate [30 0 24]))

    (->> (m/cylinder 1.5 4)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [30 -83.5 20]))
    (->> (m/cylinder 1.5 4)
         (m/rotate (/ (Math/PI) 2) [0 1 0])
         (m/translate [30 83.5 20]))))

(defn gen-pulley-unit
  []
  (spit "resources/pulley/pulley-unit.scad"
        (s/write-scad (pulley-unit))))

