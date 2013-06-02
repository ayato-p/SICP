

(define (same-pariry . args)
  (let ((c (if (odd? (car args)) odd? even?)))
    (reverse (fold (lambda (a b)
		     (if (c a) (cons a b) b))
		   '()
		   args))))

;;test
(same-pariry 1 2 3 4 5 6 7 8 9)
(same-pariry 2 3 4 5 6 7 8 9)

  
