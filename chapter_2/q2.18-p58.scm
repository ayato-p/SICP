(define (reverse ls)
  (let loop ((ls ls)
	     (acc '()))
    (if (null? ls)
	acc
	(loop (cdr ls) (cons (car ls) acc)))))

    
