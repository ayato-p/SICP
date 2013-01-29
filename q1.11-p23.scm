;;n<3   f(n)=n
;;n>=3  f(n)=f(n-1)+2f(n-2)+3f(n-3)


;;recursive
(define (f n)
  (cond
   ((< n 3) n)
   (else
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3)))))))


;;iterative
(define (f n)
  (f-iter 0 1 2 n))

(define (f-iter a b c n)
  (cond
   ((zero? n) a)
   (else
    (f-iter b c (+ (* a 3) (* b 2) c) (- n 1)))))
