#lang sicp

(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x guess) guess) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.01))

(define (abs x)
  (if (< x 0) (- x) x))

(abs -10)

(square 10)

(sqrt-iter 1 4)
