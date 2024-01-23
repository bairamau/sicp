#lang sicp
(define (qbrt x)
  (qbrt-iter 1.0 x))

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3))

(define (qbrt-iter guess x)
  (if (< (abs (- (* guess guess guess) x)) 0.0001)
      guess
      (qbrt-iter (improve guess x)  x)
      ))

(qbrt 27)
(qbrt -27)