(define l1 '(1 2 (5 7) 9))
(car (cdr (car (cdr (cdr l1)))))
(cadadr (cdr l1))

(define l2 '((7)))
(car (car l2))
(caar l2)

(define l3 '(1 (2 (3 (4 (5 (6 7)))))))
(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr l3))))))))))))
(cadadr (cadadr (cadadr l3)))

