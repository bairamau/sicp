#lang sicp
(define (sum-of-squares-of-larger-two a b c)
  (cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
        ((and (< b a) (< b c)) (+ (* a a) (* c c)))
        (else (+ (* a a) (* b b)))
        ))

(sum-of-squares-of-larger-two 1 2 1)
(sum-of-squares-of-larger-two 2 1 3)
(sum-of-squares-of-larger-two 5 2 7)
