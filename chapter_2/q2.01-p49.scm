;;make-rat
(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (positive? (/ n d))
	(cons (/ (abs n) g) (/ (abs d) g))
	(cons (/ (- (abs n)) g) (/ (abs d) g)))))

;;test
(print-rat (make-rat 1 3))

(print-rat (make-rat -1 -3))

(print-rat (make-rat 1 -3))

(print-rat (make-rat -1 3))
