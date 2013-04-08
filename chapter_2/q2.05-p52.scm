
(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (car z)
  (let loop ((z z)
	     (count 0))
    (if (zero? (modulo z 2))
	(loop (quotient z 2) (+ count 1))
	count)))

(define (cdr z)
  (let loop ((z z)
	     (count 0))
    (if (zero? (modulo z 3))
	(loop (quotient z 3) (+ count 1))
	count)))

;;test
(car (cons 3 7)) ;;=> 3
(cdr (cons 3 7)) ;;=> 7
