(declare-fun obstacle (Int Int) Bool)

(declare-const total_cost Real)

(declare-const prim_1_1 Int)
(declare-const prim_1_2 Int)

(declare-const x_1_1 Int)
(declare-const x_1_2 Int)
(declare-const x_1_3 Int)

(declare-const y_1_1 Int)
(declare-const y_1_2 Int)
(declare-const y_1_3 Int)

(declare-const vel_i_1_1 Int)
(declare-const vel_i_1_2 Int)
(declare-const vel_i_1_3 Int)

(declare-const vel_f_1_1 Int)
(declare-const vel_f_1_2 Int)

(declare-const x_f_1_1 Int)
(declare-const x_f_1_2 Int)

(declare-const y_f_1_1 Int)
(declare-const y_f_1_2 Int)

(declare-const cost_1_1 Real)
(declare-const cost_1_2 Real)

(assert (= x_1_1 1))
(assert (= y_1_1 0))


(assert (= vel_i_1_1 0))
(assert (= vel_f_1_2 0))

(assert (and (>= prim_1_1 1) (<= prim_1_1 4)))
(assert (and (>= prim_1_2 1) (<= prim_1_2 4)))

(assert (and (>= vel_i_1_2 0) (<= vel_i_1_2 8)))

(assert (and (>= vel_f_1_1 0) (<= vel_f_1_1 8)))

(assert (and (>= x_1_1 0) (<= x_1_1 2)))
(assert (and (>= x_1_2 0) (<= x_1_2 2)))
(assert (and (>= x_1_3 0) (<= x_1_3 2)))

(assert (and (>= y_1_1 0) (<= y_1_1 2)))
(assert (and (>= y_1_2 0) (<= y_1_2 2)))
(assert (and (>= y_1_3 0) (<= y_1_3 2)))

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


(assert (= x_1_2 (+ x_1_1 x_f_1_1)))
(assert (= y_1_2 (+ y_1_1 y_f_1_1)))
(assert (= x_1_3 (+ x_1_2 x_f_1_2)))
(assert (= y_1_3 (+ y_1_2 y_f_1_2)))

(assert (= vel_i_1_2 vel_f_1_1))


(assert (= total_cost (+ cost_1_1 cost_1_2)))
(assert (<= total_cost (/ 8962710 10000000)))


(assert (= x_1_3 2))
(assert (= y_1_3 1))

(check-sat)
(get-value (prim_1_1))
(get-value (prim_1_2))

(get-value (x_1_1))
(get-value (x_1_2))
(get-value (x_1_3))

(get-value (y_1_1))
(get-value (y_1_2))
(get-value (y_1_3))

(get-value (vel_i_1_1))
(get-value (vel_i_1_2))

(get-value (vel_f_1_1))
(get-value (vel_f_1_2))

(get-value (x_f_1_1))
(get-value (x_f_1_2))

(get-value (y_f_1_1))
(get-value (y_f_1_2))

(get-value (cost_1_1))
(get-value (cost_1_2))
(get-value (total_cost))

