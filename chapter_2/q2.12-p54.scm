(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i)
	(upper-bound i))
     2))

(define (width i)
  (/ (- (upper-bound i)
	(lower-bound i))
     2))

(define (make-center-persent c p)
  (let ((w (* c (/ p 100))))
    (make-center-width c w)))

(define (persent i)
  (* (/ (width i) (center i))
     100))
  
;;test
(define hoge-interval (make-center-persent 10.0 1.0))

(center hoge-interval)

(persent hoge-interval)

