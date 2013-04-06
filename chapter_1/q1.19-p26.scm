
-p = (p^2+q^2)
-q = (q^2+2pq)

(define (square x)
  (* x x))

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond
   ((zero? count) b)
   ((even? count)
    (fib-iter a
	      b
	      (+ (square p) (square q))
	      (+ (square q) (* 2 p q))
	      (/ count 2)))
   (else
    (fib-iter (+ (* b q) (* a q) (* a p))
	      (+ (* b p) (* a q))
	      p
	      q
	      (- count 1)))))

(fib 10)	      
