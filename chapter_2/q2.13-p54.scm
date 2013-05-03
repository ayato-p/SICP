

(define (mul-interval x y)
  (let ((low-x (lower-bound x))
	(up-x  (upper-bound x))
	(low-y (lower-bound y))
	(up-y  (upper-bound y)))
    (cond
     ;; xが0を跨がない正の区間
     ((positive? low-x)
      (cond
       ((positive? low-y)
	(make-interval (* low-x low-y) (* up-x up-y))))))))

(mul-interval (make-center-persent 10 0.1)
	      (make-center-persent 6 0.01))






(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
		(add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one
		  (add-interval (div-interval one r1)
				(div-interval one r2)))))
	

(par1 (make-center-persent 6.8 10)
      (make-center-persent 4.7 5))

(par2 (make-center-persent 6.8 10)
      (make-center-persent 4.7 5)) 
      
