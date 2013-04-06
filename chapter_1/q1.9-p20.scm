

(define (inc x)
  (+ x 1))
(define (dec x)
  (- x 1))

(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))

(define (plus a b)
  (if (= a 0)
      b
      (plus (dec a) (inc b))))

(plus 4 5)

(use slib)
(require 'trace)
(trace plus)

