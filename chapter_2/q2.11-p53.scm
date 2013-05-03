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
	(make-interval (* low-x low-y) (* up-x up-y)))
       ((and (negative? low-y) (negative? up-y))
	(make-interval (* up-x low-y) (* low-x up-y)))
       (else
	(make-interval (* up-x low-y) (* up-x up-y)))))
     (else
      (cond
       ;; xが0を跨がない負の区間
       ((negative? up-x)
	(cond
	 ((positive? low-y)
	  (make-interval (* low-x up-y) (* up-x low-y)))
	 ((and (negative? low-y) (negative? up-y))
	  (make-interval (* up-x up-y) (* low-x low-y)))
	 (else
	  (make-interval (* low-x up-y) (* low-x low-y)))))
       ;; xが0を跨ぐ場合
       (else
	(cond
	 ((positive? low-y)
	  (make-interval (* low-x up-y) (* up-x up-y)))
	 ((and (negative? low-y) (negative? up-y))
	  (make-interval (* up-x low-y) (* low-x low-y)))
	 (else
	  (make-interval (* low-x up-y) (* up-x up-y))))))))))
;;test
(mul-interval (make-interval 1 3)
	      (make-interval 3 5))

(mul-interval (make-interval 1 3)
	      (make-interval -10 -8))

(mul-interval (make-interval 1 3)
	      (make-interval -2 2))

(mul-interval (make-interval -3 -1)
	      (make-interval 1 3))
(mul-interval (make-interval -3 -1)
	      (make-interval -5 -3))

(mul-interval (make-interval -3 -1)
	      (make-interval -2 2))

(mul-interval (make-interval -1 1)
	      (make-interval 2 4))

(mul-interval (make-interval -1 1)
	      (make-interval -3 -1))

(mul-interval (make-interval -1 1)
	      (make-interval -2 2))

	      
;;-------------------------------------
(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i)
	(upper-bound i))
     2))

(define (width i)
  (/ (- (upper-bound i)
	(lower-bound i))
     2))

