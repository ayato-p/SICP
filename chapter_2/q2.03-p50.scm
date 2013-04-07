;;rectangle
(define (make-rectangle start-point end-point)
  (cons start-point end-point))

(define (start-rectangle rectangle)
  (car rectangle))

(define (end-rectangle rectangle)
  (cdr rectangle))

(define (perimeter rectangle)
  (let ((sx (x-point (start-rectangle rectangle)))
	(sy (y-point (start-rectangle rectangle)))
	(ex (x-point (end-rectangle rectangle)))
	(ey (y-point (end-rectangle rectangle))))
    (+ (* (abs (- sx ex)) 2)
       (* (abs (- sy ey)) 2))))

(define (area rectangle)
  (let* ((sx (x-point (start-rectangle rectangle)))
	 (sy (y-point (start-rectangle rectangle)))
	 (ex (x-point (end-rectangle rectangle)))
	 (ey (y-point (end-rectangle rectangle)))
	 (height (abs (- sy ey)))
	 (width (abs (- sx ex))))
    (* height width)))
      
;;point
(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

;;test

(perimeter (make-rectangle (make-point 2 2)
			   (make-point 7 5)))

(area (make-rectangle (make-point 2 2)
		      (make-point 7 5)))