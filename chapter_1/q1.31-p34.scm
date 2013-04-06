(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
	 (product term (next a) next b))))

(define (product term a next b)
  (define (iter a ans)
    (if (> a b)
	ans
	(iter (next a) (* (term a) ans))))
  (iter a 1))

(define (factrial b)
  (product (lambda (x) x)
	   1
	   (lambda (x) (+ x 1))
	   b))

(define (my-pi n)
  (let ((f (lambda (x)
	     (if (even? x)
		 (/ (+ x 2) (+ x 1))
		 (/ (+ x 1) (+ x 2))))))
    (* 4.0 (product f
		    1
		    (lambda (x) (+ x 1))
		    n))))

