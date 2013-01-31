
(define (cube x)
  (* x x x))

(define (p x)
  (print x)
  (- (* 3 x)
     (* 4 (cube x))))

(define (sine angle)
  (cond
   ((not (> (abs angle) 0.1)) angle)
   (else
    (p (sine (/ angle 3.0))))))

(sine 12.15)

