

(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (cond
   ((zero? counter) product)
   (else
    (expt-iter b
	       (- counter 1)
	       (* b product)))))


(define (square x)
  (* x x))

(define (fast-expt b n)
  (cond
   ((zero? n) 1)
   ((even? n) (square (fast-expt b (/ n 2))))
   (else
    (* b (fast-expt b (- n 1))))))

(fast-expt 1000 1000)