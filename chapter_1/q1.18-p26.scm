 
(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (* a b)
  (aster-iter a b 0))

(define (aster-iter a b x)
  (cond
   ((zero? b) x)
   ((even? b) (aster-iter (double a) (halve b) x))
   (else
    (aster-iter a (- b 1) (+ x a)))))

(* 5 5)
(* 100 29)