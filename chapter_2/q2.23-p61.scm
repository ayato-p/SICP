(pair? '())
(pair? '(1 2))
(pair? '(1))

(define (for-each proc items)
  (cond ((null? items) #f)
	((null? (cdr items)) (proc (car items)))
	(else (proc (car items))
	      (for-each proc (cdr items)))))

;;test
(for-each (lambda (x) (newline) (display x))
	  (list 57 321 88))




