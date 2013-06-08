(add-load-path "./../lib" :relative)
(use sicp.util)

;;Horner's rule(ホーナー法)
;;乗算の回数が減る
;;n(n+1)/2 => n

(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
		(+ this-coeff (* higher-terms x)))
	      0
	      coefficient-sequence))

(horner-eval 2 (list 1 3 0 5 0 1))

