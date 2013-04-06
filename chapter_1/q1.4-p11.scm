(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(define (a-plus-abs-b2 a b)
  ((cond ((> b 0) +)
	 (else -)) a b))
