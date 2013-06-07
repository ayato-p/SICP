(add-load-path "/User/ayato_p/Programming/SICP/lib")
(use sicp.util)

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y))
	      '()
	      sequence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ y 1))
	      0
	      sequence))

;;test
(map (lambda (x) (* x x))
     '(1 2 3 4 5))

(append '(1 2 3) '(4 5 6))

(length '(1 2 3 4 5 6))
