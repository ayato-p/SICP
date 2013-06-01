;;segment
(define (make-segment start-point end-point)
  (cons start-point end-point))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

;;point
(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

;;print
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;;midpoint-segment
(define (midpoint-segment segment)
  (let ((start-x (x-point (start-segment segment)))
	(start-y (y-point (start-segment segment)))
	(end-x (x-point (end-segment segment)))
	(end-y (y-point (end-segment segment))))
    (make-point (/ (+ start-x end-x) 2)
		(/ (+ start-y end-y) 2))))


;;test
(define hoge-segment (make-segment (make-point 0 0)
				   (make-point 10 10)))

(print-point (midpoint-segment hoge-segment))
