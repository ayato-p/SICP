(define x (list (list 1 2) (list 3 4)))
(fringe x) ;;(1 2 3 4)
(fringe (list x x)) ;;(1 2 3 4 1 2 3 4)

(define (fringe x)
  (define (iter ls ans)
    (cond ((null? ls) ans)
	  ((not (pair? ls)) (iter '() (cons ls ans)))
	  (else (iter (cdr ls)
		      (iter (car ls) ans)))))
  (reverse (iter x '())))

