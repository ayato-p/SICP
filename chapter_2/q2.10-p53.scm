(define (div-interval x y)
  (let ((ok? (lambda (x y)
	       (not (or (negative? (* (lower-bound x)
				      (upper-bound x)))
			(negative? (* (lower-bound y)
				      (upper-bound y))))))))
    (if (ok? x y)
	(mul-interval x
		      (make-interval (/ 1.0 (upper-bound y))
				     (/ 1.0 (lower-bound y))))
	(error "error" x y))))



;;test
(div-interval (make-interval -1 1)
	      (make-interval 3 5))

(div-interval (make-interval 3 5)
	      (make-interval -1 1))

(div-interval (make-interval 3 5)
	      (make-interval -3 -1))

(div-interval (make-interval 3 5)
	      (make-interval 7 9))

(div-interval (make-interval -3 -1)
	      (make-interval 7 9))
