(declare-fun obstacle (Int Int) Bool)

(declare-const total_cost Real)

(declare-const prim_1_1 Int)
(declare-const prim_1_2 Int)
(declare-const prim_1_3 Int)
(declare-const prim_1_4 Int)
(declare-const prim_1_5 Int)
(declare-const prim_1_6 Int)

(declare-const x_1_1 Int)
(declare-const x_1_2 Int)
(declare-const x_1_3 Int)
(declare-const x_1_4 Int)
(declare-const x_1_5 Int)
(declare-const x_1_6 Int)
(declare-const x_1_7 Int)

(declare-const y_1_1 Int)
(declare-const y_1_2 Int)
(declare-const y_1_3 Int)
(declare-const y_1_4 Int)
(declare-const y_1_5 Int)
(declare-const y_1_6 Int)
(declare-const y_1_7 Int)

(declare-const vel_i_1_1 Int)
(declare-const vel_i_1_2 Int)
(declare-const vel_i_1_3 Int)
(declare-const vel_i_1_4 Int)
(declare-const vel_i_1_5 Int)
(declare-const vel_i_1_6 Int)
(declare-const vel_i_1_7 Int)

(declare-const vel_f_1_1 Int)
(declare-const vel_f_1_2 Int)
(declare-const vel_f_1_3 Int)
(declare-const vel_f_1_4 Int)
(declare-const vel_f_1_5 Int)
(declare-const vel_f_1_6 Int)

(declare-const x_f_1_1 Int)
(declare-const x_f_1_2 Int)
(declare-const x_f_1_3 Int)
(declare-const x_f_1_4 Int)
(declare-const x_f_1_5 Int)
(declare-const x_f_1_6 Int)

(declare-const y_f_1_1 Int)
(declare-const y_f_1_2 Int)
(declare-const y_f_1_3 Int)
(declare-const y_f_1_4 Int)
(declare-const y_f_1_5 Int)
(declare-const y_f_1_6 Int)

(declare-const cost_1_1 Real)
(declare-const cost_1_2 Real)
(declare-const cost_1_3 Real)
(declare-const cost_1_4 Real)
(declare-const cost_1_5 Real)
(declare-const cost_1_6 Real)

(assert (= x_1_1 5))
(assert (= y_1_1 5))


(assert (= vel_i_1_1 0))
(assert (= vel_f_1_6 0))

(assert (and (>= prim_1_1 1) (<= prim_1_1 4)))
(assert (and (>= prim_1_2 1) (<= prim_1_2 4)))
(assert (and (>= prim_1_3 1) (<= prim_1_3 4)))
(assert (and (>= prim_1_4 1) (<= prim_1_4 4)))
(assert (and (>= prim_1_5 1) (<= prim_1_5 4)))
(assert (and (>= prim_1_6 1) (<= prim_1_6 4)))

(assert (and (>= vel_i_1_2 0) (<= vel_i_1_2 8)))
(assert (and (>= vel_i_1_3 0) (<= vel_i_1_3 8)))
(assert (and (>= vel_i_1_4 0) (<= vel_i_1_4 8)))
(assert (and (>= vel_i_1_5 0) (<= vel_i_1_5 8)))
(assert (and (>= vel_i_1_6 0) (<= vel_i_1_6 8)))

(assert (and (>= vel_f_1_1 0) (<= vel_f_1_1 8)))
(assert (and (>= vel_f_1_2 0) (<= vel_f_1_2 8)))
(assert (and (>= vel_f_1_3 0) (<= vel_f_1_3 8)))
(assert (and (>= vel_f_1_4 0) (<= vel_f_1_4 8)))
(assert (and (>= vel_f_1_5 0) (<= vel_f_1_5 8)))

(assert (and (>= x_1_1 0) (<= x_1_1 10)))
(assert (and (>= x_1_2 0) (<= x_1_2 10)))
(assert (and (>= x_1_3 0) (<= x_1_3 10)))
(assert (and (>= x_1_4 0) (<= x_1_4 10)))
(assert (and (>= x_1_5 0) (<= x_1_5 10)))
(assert (and (>= x_1_6 0) (<= x_1_6 10)))
(assert (and (>= x_1_7 0) (<= x_1_7 10)))

(assert (and (>= y_1_1 0) (<= y_1_1 10)))
(assert (and (>= y_1_2 0) (<= y_1_2 10)))
(assert (and (>= y_1_3 0) (<= y_1_3 10)))
(assert (and (>= y_1_4 0) (<= y_1_4 10)))
(assert (and (>= y_1_5 0) (<= y_1_5 10)))
(assert (and (>= y_1_6 0) (<= y_1_6 10)))
(assert (and (>= y_1_7 0) (<= y_1_7 10)))

(assert (or (not (= prim_1_1 1))
(and (= vel_i_1_1 0)
     (= vel_f_1_1 0)
     (= x_f_1_1 0)
     (= y_f_1_1 1)
     (= cost_1_1 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_1 0) (+ y_1_1 0)) false)
     (= (obstacle (+ x_1_1 0) (+ y_1_1 1)) false)
)))

(assert (or (not (= prim_1_1 2))
(and (= vel_i_1_1 0)
     (= vel_f_1_1 0)
     (= x_f_1_1 1)
     (= y_f_1_1 0)
     (= cost_1_1 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_1 0) (+ y_1_1 0)) false)
     (= (obstacle (+ x_1_1 1) (+ y_1_1 0)) false)
)))

(assert (or (not (= prim_1_1 3))
(and (= vel_i_1_1 0)
     (= vel_f_1_1 0)
     (= x_f_1_1 -1)
     (= y_f_1_1 0)
     (= cost_1_1 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_1 0) (+ y_1_1 0)) false)
     (= (obstacle (+ x_1_1 -1) (+ y_1_1 0)) false)
)))

(assert (or (not (= prim_1_1 4))
(and (= vel_i_1_1 0)
     (= vel_f_1_1 0)
     (= x_f_1_1 0)
     (= y_f_1_1 0)
     (= cost_1_1 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_1 0) (+ y_1_1 0)) false)
)))

(assert (or (not (= prim_1_2 1))
(and (= vel_i_1_2 0)
     (= vel_f_1_2 0)
     (= x_f_1_2 0)
     (= y_f_1_2 1)
     (= cost_1_2 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_2 0) (+ y_1_2 0)) false)
     (= (obstacle (+ x_1_2 0) (+ y_1_2 1)) false)
)))

(assert (or (not (= prim_1_2 2))
(and (= vel_i_1_2 0)
     (= vel_f_1_2 0)
     (= x_f_1_2 1)
     (= y_f_1_2 0)
     (= cost_1_2 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_2 0) (+ y_1_2 0)) false)
     (= (obstacle (+ x_1_2 1) (+ y_1_2 0)) false)
)))

(assert (or (not (= prim_1_2 3))
(and (= vel_i_1_2 0)
     (= vel_f_1_2 0)
     (= x_f_1_2 -1)
     (= y_f_1_2 0)
     (= cost_1_2 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_2 0) (+ y_1_2 0)) false)
     (= (obstacle (+ x_1_2 -1) (+ y_1_2 0)) false)
)))

(assert (or (not (= prim_1_2 4))
(and (= vel_i_1_2 0)
     (= vel_f_1_2 0)
     (= x_f_1_2 0)
     (= y_f_1_2 0)
     (= cost_1_2 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_2 0) (+ y_1_2 0)) false)
)))

(assert (or (not (= prim_1_3 1))
(and (= vel_i_1_3 0)
     (= vel_f_1_3 0)
     (= x_f_1_3 0)
     (= y_f_1_3 1)
     (= cost_1_3 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_3 0) (+ y_1_3 0)) false)
     (= (obstacle (+ x_1_3 0) (+ y_1_3 1)) false)
)))

(assert (or (not (= prim_1_3 2))
(and (= vel_i_1_3 0)
     (= vel_f_1_3 0)
     (= x_f_1_3 1)
     (= y_f_1_3 0)
     (= cost_1_3 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_3 0) (+ y_1_3 0)) false)
     (= (obstacle (+ x_1_3 1) (+ y_1_3 0)) false)
)))

(assert (or (not (= prim_1_3 3))
(and (= vel_i_1_3 0)
     (= vel_f_1_3 0)
     (= x_f_1_3 -1)
     (= y_f_1_3 0)
     (= cost_1_3 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_3 0) (+ y_1_3 0)) false)
     (= (obstacle (+ x_1_3 -1) (+ y_1_3 0)) false)
)))

(assert (or (not (= prim_1_3 4))
(and (= vel_i_1_3 0)
     (= vel_f_1_3 0)
     (= x_f_1_3 0)
     (= y_f_1_3 0)
     (= cost_1_3 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_3 0) (+ y_1_3 0)) false)
)))

(assert (or (not (= prim_1_4 1))
(and (= vel_i_1_4 0)
     (= vel_f_1_4 0)
     (= x_f_1_4 0)
     (= y_f_1_4 1)
     (= cost_1_4 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_4 0) (+ y_1_4 0)) false)
     (= (obstacle (+ x_1_4 0) (+ y_1_4 1)) false)
)))

(assert (or (not (= prim_1_4 2))
(and (= vel_i_1_4 0)
     (= vel_f_1_4 0)
     (= x_f_1_4 1)
     (= y_f_1_4 0)
     (= cost_1_4 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_4 0) (+ y_1_4 0)) false)
     (= (obstacle (+ x_1_4 1) (+ y_1_4 0)) false)
)))

(assert (or (not (= prim_1_4 3))
(and (= vel_i_1_4 0)
     (= vel_f_1_4 0)
     (= x_f_1_4 -1)
     (= y_f_1_4 0)
     (= cost_1_4 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_4 0) (+ y_1_4 0)) false)
     (= (obstacle (+ x_1_4 -1) (+ y_1_4 0)) false)
)))

(assert (or (not (= prim_1_4 4))
(and (= vel_i_1_4 0)
     (= vel_f_1_4 0)
     (= x_f_1_4 0)
     (= y_f_1_4 0)
     (= cost_1_4 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_4 0) (+ y_1_4 0)) false)
)))

(assert (or (not (= prim_1_5 1))
(and (= vel_i_1_5 0)
     (= vel_f_1_5 0)
     (= x_f_1_5 0)
     (= y_f_1_5 1)
     (= cost_1_5 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_5 0) (+ y_1_5 0)) false)
     (= (obstacle (+ x_1_5 0) (+ y_1_5 1)) false)
)))

(assert (or (not (= prim_1_5 2))
(and (= vel_i_1_5 0)
     (= vel_f_1_5 0)
     (= x_f_1_5 1)
     (= y_f_1_5 0)
     (= cost_1_5 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_5 0) (+ y_1_5 0)) false)
     (= (obstacle (+ x_1_5 1) (+ y_1_5 0)) false)
)))

(assert (or (not (= prim_1_5 3))
(and (= vel_i_1_5 0)
     (= vel_f_1_5 0)
     (= x_f_1_5 -1)
     (= y_f_1_5 0)
     (= cost_1_5 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_5 0) (+ y_1_5 0)) false)
     (= (obstacle (+ x_1_5 -1) (+ y_1_5 0)) false)
)))

(assert (or (not (= prim_1_5 4))
(and (= vel_i_1_5 0)
     (= vel_f_1_5 0)
     (= x_f_1_5 0)
     (= y_f_1_5 0)
     (= cost_1_5 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_5 0) (+ y_1_5 0)) false)
)))

(assert (or (not (= prim_1_6 1))
(and (= vel_i_1_6 0)
     (= vel_f_1_6 0)
     (= x_f_1_6 0)
     (= y_f_1_6 1)
     (= cost_1_6 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_6 0) (+ y_1_6 0)) false)
     (= (obstacle (+ x_1_6 0) (+ y_1_6 1)) false)
)))

(assert (or (not (= prim_1_6 2))
(and (= vel_i_1_6 0)
     (= vel_f_1_6 0)
     (= x_f_1_6 1)
     (= y_f_1_6 0)
     (= cost_1_6 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_6 0) (+ y_1_6 0)) false)
     (= (obstacle (+ x_1_6 1) (+ y_1_6 0)) false)
)))

(assert (or (not (= prim_1_6 3))
(and (= vel_i_1_6 0)
     (= vel_f_1_6 0)
     (= x_f_1_6 -1)
     (= y_f_1_6 0)
     (= cost_1_6 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_6 0) (+ y_1_6 0)) false)
     (= (obstacle (+ x_1_6 -1) (+ y_1_6 0)) false)
)))

(assert (or (not (= prim_1_6 4))
(and (= vel_i_1_6 0)
     (= vel_f_1_6 0)
     (= x_f_1_6 0)
     (= y_f_1_6 0)
     (= cost_1_6 (/ 29875696041984 100000000000000))
     (= (obstacle (+ x_1_6 0) (+ y_1_6 0)) false)
)))


(assert (= x_1_2 (+ x_1_1 x_f_1_1)))
(assert (= y_1_2 (+ y_1_1 y_f_1_1)))
(assert (= x_1_3 (+ x_1_2 x_f_1_2)))
(assert (= y_1_3 (+ y_1_2 y_f_1_2)))
(assert (= x_1_4 (+ x_1_3 x_f_1_3)))
(assert (= y_1_4 (+ y_1_3 y_f_1_3)))
(assert (= x_1_5 (+ x_1_4 x_f_1_4)))
(assert (= y_1_5 (+ y_1_4 y_f_1_4)))
(assert (= x_1_6 (+ x_1_5 x_f_1_5)))
(assert (= y_1_6 (+ y_1_5 y_f_1_5)))
(assert (= x_1_7 (+ x_1_6 x_f_1_6)))
(assert (= y_1_7 (+ y_1_6 y_f_1_6)))

(assert (= vel_i_1_2 vel_f_1_1))
(assert (= vel_i_1_3 vel_f_1_2))
(assert (= vel_i_1_4 vel_f_1_3))
(assert (= vel_i_1_5 vel_f_1_4))
(assert (= vel_i_1_6 vel_f_1_5))


(assert (= total_cost (+ cost_1_1 cost_1_2 cost_1_3 cost_1_4 cost_1_5 cost_1_6)))
(assert (<= total_cost (/ 20912990 10000000)))


(assert (and (>= y_1_1 5) (<= y_1_1 10)))
(assert (and (>= y_1_2 5) (<= y_1_2 10)))
(assert (and (>= y_1_3 5) (<= y_1_3 10)))
(assert (and (>= y_1_4 5) (<= y_1_4 10)))
(assert (and (>= y_1_5 5) (<= y_1_5 10)))
(assert (and (>= y_1_6 5) (<= y_1_6 10)))
(assert (and (>= y_1_7 5) (<= y_1_7 10)))


(assert (= x_1_7 8))
(assert (= y_1_7 8))

(check-sat)
(get-value (prim_1_1))
(get-value (prim_1_2))
(get-value (prim_1_3))
(get-value (prim_1_4))
(get-value (prim_1_5))
(get-value (prim_1_6))

(get-value (x_1_1))
(get-value (x_1_2))
(get-value (x_1_3))
(get-value (x_1_4))
(get-value (x_1_5))
(get-value (x_1_6))
(get-value (x_1_7))

(get-value (y_1_1))
(get-value (y_1_2))
(get-value (y_1_3))
(get-value (y_1_4))
(get-value (y_1_5))
(get-value (y_1_6))
(get-value (y_1_7))

(get-value (vel_i_1_1))
(get-value (vel_i_1_2))
(get-value (vel_i_1_3))
(get-value (vel_i_1_4))
(get-value (vel_i_1_5))
(get-value (vel_i_1_6))

(get-value (vel_f_1_1))
(get-value (vel_f_1_2))
(get-value (vel_f_1_3))
(get-value (vel_f_1_4))
(get-value (vel_f_1_5))
(get-value (vel_f_1_6))

(get-value (x_f_1_1))
(get-value (x_f_1_2))
(get-value (x_f_1_3))
(get-value (x_f_1_4))
(get-value (x_f_1_5))
(get-value (x_f_1_6))

(get-value (y_f_1_1))
(get-value (y_f_1_2))
(get-value (y_f_1_3))
(get-value (y_f_1_4))
(get-value (y_f_1_5))
(get-value (y_f_1_6))

(get-value (cost_1_1))
(get-value (cost_1_2))
(get-value (cost_1_3))
(get-value (cost_1_4))
(get-value (cost_1_5))
(get-value (cost_1_6))
(get-value (total_cost))

