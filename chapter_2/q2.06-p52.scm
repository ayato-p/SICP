
(define zero
  (lambda (f)
    (lambda (x)
      x)))

(define one
  (lambda (f)
    (lambda (x)
      (f x))))

(define two
  (lambda (f)
    (lambda (x)
      (f (f x)))))

(define add-1
  (lambda (n)
    (lambda (f)
      (lambda (x)
	(f ((n f) x))))))

(define plus
  (lambda (m)
    (lambda (n)
      (lambda (f)
	(lambda (x)
	  ((m f) ((n f) x)))))))

(define (c->n c)
  ((c (lambda (x)
	(+ x 1)))
   0))

;;test
(c->n ((plus one) two)) ;;3
(c->n ((plus ((plus one) two)) two)) ;;5
