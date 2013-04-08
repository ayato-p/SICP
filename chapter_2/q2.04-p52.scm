(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

#|
(car (cons 10 20))

(car (lambda (m) (m 10 20)))

((lambda (m) (m 10 20))
 (lambda (p q) p))

((lambda (p q) p) 10 20)

=> 10 

|#

