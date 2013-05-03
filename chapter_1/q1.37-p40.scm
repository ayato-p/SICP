
;;fn = n / (d + fn+1)

(define (cont-frac n d k)
  (let loop ((k k)
	     (result (/ (n k) (d k))))
    (let ((-1k (- k 1)))
      (if (= k 1)
	  result
	  (loop -1k
		(/ (n -1k) (+ (d -1k)
			      result)))))))

(define (cont-frac n d k)
  (let loop ((i 1))
    (if (= i k)
	(/ (n i) (d i))
	(/ (n i) (+ (d i)
		    (loop (+ i 1)))))))

(cont-frac (lambda (i) 1.0)
	   (lambda (i) 1.0)
	   10)

