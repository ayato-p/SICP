(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
	 (sum term (next a) next b))))

(define (simpson f a b n)
  (let* ((h (/ (- b a) n))
	 (y (lambda (k)
	      (f (+ a (* k h))))))
    (define (loop k ans)
      (cond
       ((zero? k)
	(loop (+ k 1) (+ ans (y k))))
       ((= k n)
	(* (+ ans (y k)) (/ h 3)))
       ((even? k)
	(loop (+ k 1) (+ ans (* 2 (y k)))))
       (else
	(loop (+ k 1) (+ ans (* 4 (y k)))))))
    (loop 0 0)))

(define (integral f a b dx)
  (* (sum f (+ a (/ dx 2.0)) (lambda (x) (+ dx x)) b)
     dx))

(integral (lambda (x)
	    (* x x x))
	  0
	  1
	  0.01)
(integral (lambda (x)
	    (* x x x))
	  0
	  1
	  0.001)

(simpson (lambda (x)
	   (* x x x))
	 0
	 1
	 100)

(simpson (lambda (x)
	   (* x x x))
	 0
	 1
	 1000)
	   
