(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (let loop ((n n))
    (cond
     ((zero? n) (lambda (x) x))
     ((= n 1) f)
     (else
      (compose f (loop (- n 1)))))))

((repeated square 2) 5)




      

