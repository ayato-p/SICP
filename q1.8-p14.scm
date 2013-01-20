
(define (square x)
  (* x x))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
		 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.001))

;;test
(cbrt 27) ;=> 3.0000005410641766
(cbrt 8)  ;=> 2.0000049116477504
