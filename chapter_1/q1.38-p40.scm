;;
(use srfi-1)
(map
 (lambda (i)
   (if (zero? (modulo (+ i 1) 3))
       (* (+ i 1) (/ 2 3))
       1))
 (iota 100 1))

(define e
  (+ 2
     (cont-frac (lambda (i) 1.0)
		(lambda (i)
		  (if (zero? (modulo (+ i 1) 3))
		      (* (+ i 1) (/ 2 3))
		      1))
		100)))


