(define (square x)
  (* x x))
;;Louis square-list

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things)
	      (cons (square (car things))
		    answer))))
  (iter items '()))

;;Louis bugfix ver? square-list
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things)
	      (cons answer
		    (square (car things))))))
  (iter items '()))

;;ans.
;; 1つ目のsquare-listは最後のanswerを返す前にreverseしてやれば良い。
;; 2つ目のsquare-listは最後が空リストになってないので、ドット対になってしまっている。
;; かな？

;;test
(square-list '(1 2 3 4 5))



