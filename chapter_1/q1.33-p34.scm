(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a result)
    (cond
     ((> a b) result)
     ((filter a) (iter (next a)
		       (combiner (term a)
				 result)))
     (else (iter (next a)
		 result))))
  (iter a null-value))

;;a
(define (sum-prime-square a b)
  (filtered-accumulate prime?
		       +
		       0
		       (lambda (x) (* x x))
		       a
		       (lambda (x) (+ x 1))
		       b))

;;b
(define (gcd a b)
  (if (zero? b)
      a
      (gcd b (remainder a b))))

(define (func n)
  (filtered-accumulate (lambda (i)
			 (= (gcd i n) 1))
		       *
		       1
		       (lambda (x) x)
		       1
		       (lambda (x) (+ x 1))
		       n))

