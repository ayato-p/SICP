(define (gcd a b)
  (if (zero? b)
      a
      (gcd b (modulo a b))))

(gcd 206 40)

(if (zero? 40)
    206
    (gcd 40 (modulo 206 40)))

(if (zero? (modulo 206 40))
    40
    (gcd (modulo 206 40) (modulo 40 (modulo 206 40))))

(if (zero? (modulo 40 (modulo 206 40)))
    (modulo 206 40)
    (gcd (modulo 40 (modulo 206 40)) (modulo (modulo 206 40) (modulo 40 (modulo 206 40)))))

(if (zero? (modulo (modulo 206 40) (modulo 40 (modulo 206 40))))
    (modulo 40 (modulo 206 40))
    (gcd  (modulo (modulo 206 40) (modulo 40 (modulo 206 40)))
	 (modulo (modulo 40 (modulo 206 40)) (modulo (modulo 206 40) (modulo 40 (modulo 206 40))))))

(if (zero? (modulo (modulo 40 (modulo 206 40)) (modulo (modulo 206 40) (modulo 40 (modulo 206 40)))))
    (modulo (modulo 206 40) (modulo 40 (modulo 206 40)))
    (gcd (modulo (modulo 40 (modulo 206 40)) (modulo (modulo 206 40) (modulo 40 (modulo 206 40))))
	 (modulo (modulo (modulo 206 40) (modulo 40 (modulo 206 40)))
		 (modulo (modulo 40 (modulo 206 40)) (modulo (modulo 206 40) (modulo 40 (modulo 206 40)))))))

