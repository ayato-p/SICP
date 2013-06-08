(add-load-path "./../lib")
(use sicp.util)

(define (count-leaves t)
  (cond ((null? t) 0)
	((not (pair? t)) 1)
	(else (+ (count-leaves (car t))
		 (count-leaves (cdr t))))))

(define (count-leaves t)
  (accumulate (lambda (a b) (+ b 1))
	      0
	      (map (lambda (x)
		     )
		   t)))
	      

;;test
(count-leaves '((1 2 (3 4))(5 6(7)((8)))))
