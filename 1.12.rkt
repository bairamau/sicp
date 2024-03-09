#lang sicp
;         1
;       1   1
;     1   2   1
;   1   3   3   1
; 1   4   6   4   1

(define (pascal-coef row place)
  (cond ((or (< place 1) (> place row)) 0)
        ((and (= row 1) (= place 1)) 1)
        (else (+ (coef (- row 1) (- place 1))
                 (coef (- row 1) place)))))