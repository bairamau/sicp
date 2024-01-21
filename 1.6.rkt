#lang sicp

(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(new-if (= 2 3) 0 5)
(sqrt 9)

;If we use 'new-if' procedure instead of 'if' special form then we'll get an error which says
;The evaluation thread is no longer running, so no evaluation can take place until the next execution.
;The program ran out of memory.
;I looked up the solution
;Unlike special form, new-if is using applicative order evaluation, and since the third parameter is a call to sqr-iter,
;we end up in an infinite loop