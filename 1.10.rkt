#lang sicp
;Ackermann's function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)
;(A (- 1 1) (A 1 (- 10 1)))
;(A 0 (A 1 9))
;(* 2 (A 1 9))
;(* 2 (A 0 (A 1 8))
;...
;2^10
;1024

(A 2 4) ;; 2^(2^(2^
;(A 1 (A 2 3))
;(A 1 (A 1 (A 2 2)))
;(A 1 (A 1 (A 1 (A 2 1))))
;(A 1 (A 1 (A 1 2)))
;(A 1 (A 1 4))
;...
;(A 1 16)
;...
;2^16
;65536
;;(A 3 3)

(A 3 3)
;(A 2 (A 2 2))
;(A 2 (A 1 (A 2 1)))
;(A 2 (A 1 2))
;(A 2 4))
;65536

(define (f n) (A 0 n))   ;(f n) computes 2n
(define (g n) (A 1 n))   ;(g n) computes 2^n if n>0, and 0 if n is 0
(define (h n) (A 2 n))   ;(h n) computes 2^(2^(2...) n-1 times if n>1, so it's 2^h(n-1) (yes I looked it up, I couldn't come up with the idea of function defined in terms of itself alright?)
                         ;, and 0 if n is 0, and 2 if n is 1
(define (k n) (* 5 n n)) ;(k n) computes 5n^2