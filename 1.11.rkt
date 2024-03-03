#lang sicp
; f(n)=n if n<3
; f(n)=f(n−1)+2f(n−2)+3f(n−3) if n≥3

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
         (* 2 (f-rec (- n 2)))
         (* 3 (f-rec (- n 3))))))


(define (f-iter n)
  (define (f-iter-state a b c n)
    (if (= n 0)
        a
        (f-iter-state (+ a (* 2 b) (* 3 c)) a b (- n 1))))
  (if (< n 3)
      n
      (f-iter-state 2 1 0 (- n 2))))

(f-iter 3)