(define (square x)
  (* x x))

(define (expt b n)
  (expt-iter 1 b n))

(define (expt-iter a b n)
  (cond
   ((zero? n) a)
   ((even? n) (expt-iter a (square b) (/ n 2)))
   (else
    (expt-iter (* a b) b (- n 1)))))

(expt 5 5)

