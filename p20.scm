

(define (fib n)
  (cond
   ((zero? n) 0)
   ((= n 1) 1)
   (else
    (+ (fib (- n 1))
       (fib (- n 2))))))

(define (fib n)
  (fib-iter 0 1 n))

(define (fib-iter a b cont)
  (cond
   ((zero? cont) a)
   (else
    (fib-iter b (+ a b) (- cont 1)))))

;;--count-change

(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-conins)
  (cond
   ((zero? amount) 1)
   ((or (< amount 0)(zero? kinds-of-conins)) 0)
   (else
    (+ (cc amount (- kinds-of-conins 1))
       (cc (- amount (first-denomination kinds-of-conins))
	   kinds-of-conins)))))

(define (first-denomination kinds-of-conins)
  (cond
   ((= kinds-of-conins 1) 1)
   ((= kinds-of-conins 2) 5)
   ((= kinds-of-conins 3) 10)
   ((= kinds-of-conins 4) 25)
   ((= kinds-of-conins 5) 50)))


(count-change 10)
(cc 10 5) -> (cc -40 5)
|
(cc 10 4) -> (cc -15 4)
|
(cc 10 3) -> (cc 0 3)
|
(cc 10 2) -> (cc 5 2) -> (cc 0 2)
|            |
|            (cc 5 1) -> ... -> (cc 0 1)
|            |
|            (cc 5 0)
|
(cc 10 1) -> ... -> (cc 0 1)
|
(cc 10 0)