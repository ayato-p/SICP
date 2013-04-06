
(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (* a b)
  (cond
   ((zero? b) a)
   ((even? b) (* (double a) (halve b)))
   (else
    (+ a (* a (- b 1))))))


