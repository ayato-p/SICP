(define (last-pair ls)
  (cond ((null? (cdr ls)) ls)
	(else (last-pair (cdr ls)))))
(last-pair '(1 2 3))
