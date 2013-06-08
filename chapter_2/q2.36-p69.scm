(add-load-path "./../lib" :relative)
(use sicp.util)

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op
			init
			(map (lambda (x) (car x))
			     seqs))
	    (accumulate-n op
			  init
			  (map (lambda (x) (cdr x))
			       seqs)))))
(accumulate-n +
	      0
	      '((1 2 3) (4 5 6) (7 8 9) (10 11 12)))