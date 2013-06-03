
(cons (list 1 2) (list 3 4))

(define x (cons (list 1 2) (list 3 4)))
(length x) ;;3

;;見らずにcount-leavesを実装
(define (count-leaves l)
  (cond ((null? l) 0)
	((null? (cdr l)) 1)
	(else (cond ((list? (car l)) (+ (count-leaves (car l))
					(count-leaves (cdr l))))
		    (else (+ 1 (count-leaves (cdr l))))))))

;;sicpの書き方
(define (count-leaves x)
  (cond ((null? x) 0)
	((not (pair? x)) 1)
	(else (+ (count-leaves (car x))
		 (count-leaves (cdr x))))))

(count-leaves x)
	       
