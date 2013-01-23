


(define (A x y)
  (cond
   ((zero? y) 0)
   ((zero? x) (* 2 y))
   ((eq? y 1) 2)
   (else
    (A (- x 1)
       (A x (- y 1))))))

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))

(define (check x)
  (define (check-iter n)
    (cond
     ((zero? n) (cons (x n) ()))
     (else
      (cons (x n) (check-iter (- n 1))))))
  (check-iter 5))

(check f)
(check g)
(check h)

(A 1 10)
(A 2 4)
(A 3 3)
  




