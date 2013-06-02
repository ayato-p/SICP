
;;scale-list
(define (scale-list items factor)
  (if (null? items)
      '()
      (cons (* (car items) factor)
	    (scale-list (cdr items) factor))))

(scale-list (list 1 2 3 4 5) 10)


;;with map
(define (map proc items)
  (if (null? items)
      '()
      (cons (proc (car items))
	    (map proc (cdr items)))))

(map abs (list -10 2.5 -11.6 17))
(map (lambda (x) (* x x))
     (list 1 2 3 4))

(define (scale-list items factor)
  (map (lambda (x) (* factor x))
       items))
(scale-list (list 1 2 3 4 5) 10)
