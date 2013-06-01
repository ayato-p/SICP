(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(use srfi-1)
(define squares
  (map (lambda (x) (* x x))
       (iota 10 1)))

(list-ref squares 3)

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))
(length squares)


