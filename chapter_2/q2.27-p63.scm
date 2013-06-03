(define x (list (list 1 2) (list 3 4)))
x ;;((1 2) (3 4))

(reverse x) ;;((3 4) (1 2))

(deep-reverse x) ;;((4 3) (2 1))

;;deep-reverse
(define (deep-reverse x)
  (define (iter ls ans)
    (cond ((null? ls) ans)
	  ((pair? (car ls))
	   (iter (cdr ls)
		 (cons (iter (car ls) '()) ans)))
	  (else (iter (cdr ls) (cons (car ls) ans)))))
  (iter x '()))
