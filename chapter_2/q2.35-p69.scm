(add-load-path "./../lib")
(use sicp.util)

(define (count-leaves t)
  (cond ((null? t) 0)
	((not (pair? t)) 1)
	(else (+ (count-leaves (car t))
		 (count-leaves (cdr t))))))

(define (count-leaves t)
  (accumulate +
	      0
	      (map (lambda (x) 1)
		   (enumerate-tree t))))

;;test
(count-leaves '((1 2 (3 4))(5 6(7)((8)))))
(count-leaves '(1 2 3 (4 5 6(7)((((8)))9))))
