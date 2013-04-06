;;find-divisor

(define (square x)
  (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond
   ((> (square test-divisor) n) n)
   ((divided? test-divisor n) test-divisor)
   (else
    (find-divisor n (+ test-divisor 1)))))

(define (divided? a b)
  (zero? (modulo b a)))

(define (prime? n)
  (= n (smallest-divisor n)))

;;Fermat

(use srfi-27)

(expmed 2 11 11)

(define (expmed base exp m)
  (cond
   ((zero? exp) 1)
   ((even? exp)
    (modulo (square (expmed base (/ exp 2) m))
	    m))
    (else
     (modulo (* base (expmed base (- exp 1) m))
	     m))))

(define (my-expmed base exp m)
  (modulo (expt base exp) m))

(define (fermat-test n)
  (define (try-it a)
    (= (my-expmed a n n) a))
  (try-it (+ 1 (random-integer (- n 1)))))

(define (fast-prime? n times)
  (cond
   ((zero? times) #t)
   ((fermat-test n) (fast-prime? n (- times 1)))
   (else #f)))



