

(define (gcd a b)
  (cond
   ((zero? b) a)
   (else
    (gcd b (modulo a b)))))

