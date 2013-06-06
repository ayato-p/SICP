(define-module sicp.util
  (export square fib))

(select-module sicp.util)

(define (square x)
  (* x x))

(define (fib n)
  (cond ((zero? n) 0)
	((= n 1) 1)
	(else (+ (fib (- n 1))
		 (fib (- n 2))))))

(provide "sicp/util")
