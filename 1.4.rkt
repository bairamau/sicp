#lang sicp
;;; If b is a positive number then add a to b,
;;; otherwise subtract b from a
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;;; both will result in 3
(a-plus-abs-b 1 2)
(a-plus-abs-b 1 -2)
