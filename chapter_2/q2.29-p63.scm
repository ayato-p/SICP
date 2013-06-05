(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

;;a
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (car (cdr branch)))

;;b
(define (branch-weight branch)
  (let ((structure (branch-structure branch)))
    (if (pair? structure)
	(toral-weight structure)
	structure)))
   
(define (toral-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

;;c


;;d
;right-branchとbranch-structureの定義が変わるくらい 
