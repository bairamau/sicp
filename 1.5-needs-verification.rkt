#lang sicp
(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

;Applicative-order evaluation - the interpreter first evaluates the operator and operands
;and then applies the resulting procedure to the resulting arguments

;Normal-order-evaluation -  the interpreter first substitutes operand expressions for parameters
;until it obtained an expression involving only primiritive operators,
;and would then perform the evaluation

(test 0 (p))

;My guess is that the behaviour observed via applicative-order evaulation is procedure 'p' being infinitely (arguable) run
;If the interpreter uses normal-order evaluation then the result of running the test will be 0

