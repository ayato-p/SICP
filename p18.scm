;;再帰的プロセス 
(define (fact n)
  (cond
   ((= n 1) 1)
   (else
    (* n (fact (- n 1))))))

(fact 6)

;;反復的プロセス
(define (fact n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (cond
   ((> counter max-count) product)
   (else
    (fact-iter (* counter product)
	       (+ counter 1)
	       max-count))))

(fact 6)

(use slib)
(require 'trace)
(trace fact-iter)