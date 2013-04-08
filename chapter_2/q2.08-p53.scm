(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
		 (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
  (add-interval x
		(make-interval (- (upper-bound y))
			       (- (lower-bound y)))))

;;test
(sub-interval (make-interval 3 5)
	      (make-interval 7 9))

(sub-interval (make-interval -2 3)
	      (make-interval 5 10))


