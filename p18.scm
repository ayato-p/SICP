
(define (fact n)
  (cond
   ((= n 1) 1)
   (else
    (* n (fact (- n 1))))))

(fact 6)

(use slib)
(require 'trace)
(trace fact)