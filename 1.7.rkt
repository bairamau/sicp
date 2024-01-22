#lang sicp

(define (sqrt-iter guess x)
  (if (alt-good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

;Alternative good-enough procedure, stops if difference between current guess and previous guess is a small fraction of a guess
(define (alt-good-enough? prev-guess guess)
  (< (abs (/ (- guess prev-guess) guess)) 0.0000001))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;The good-enough? test used in computing square roots will not be very effective
;for finding the square roots of very small numbers.

;;With old good-enough:
(sqrt 0.0001) ;0.03230844833048122, this answer is sufficient for the provided accuracy, but we'd want something better
(sqrt 10000000000000) ;The program enterns into infinite recursion (I guess of the lost precision on float numbers?)

;;With alt-good-enough:
(sqrt 0.0001) ;0.010000000025490743, more accurate
(sqrt 10000000000000) ;3162277.6640104805, no infinite loop

;This book is too difficult