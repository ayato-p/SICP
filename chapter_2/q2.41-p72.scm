(add-load-path "/Users/ayato_p/Programming/SICP/lib" )
(use sicp.util)

(define (unique-triple n)
  (flatmap (lambda (i)
	     (flatmap (lambda (j)
			(map (lambda (k) (list i j k))
			     (enumerate-interval 1 (- j 1))))
		      (enumerate-interval 1 (- i 1))))
	   (enumerate-interval 1 n)))

;;think
(let ((result (let ((n 10))
		(map (lambda (i)
		       (map (lambda (j) (list i j))
			    (enumerate-interval 1 (- i 1))))
		     (enumerate-interval 1 n)))))
  (accumulate append '() result));;important!!

(unique-triple 10)

