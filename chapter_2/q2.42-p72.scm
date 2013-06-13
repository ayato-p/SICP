
(add-load-path "/Users/ayato_p/Programming/SICP/lib" )
(use sicp.util)

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
	(list empty-board)
	(filter
	 (lambda (positions) (safe? k positions))
	 (flatmap
	  (lambda (rest-of-queens)
	    (map (lambda (new-row)
		   (adjoin-position new-row k rest-of-queens))
		 (enumerate-interval 1 board-size)))
	  (queen-cols (- k 1))))))
  (queen-cols board-size))

(define empty-board '())

(define (safe? col positions)
  (let* ((row (assv-ref positions col))
	 (rest-positions (alist-delete col positions)))
    (if (rassv row rest-positions)
	#f
	(null? (filter (lambda (p)
			 (let* ((p-col (position-col p))
				(p-row (position-row p))
				(df (- col p-col)))
			   (or (= row (+ p-row df))
			       (= row (- p-row df)))))
		       rest-positions)))))

(define (adjoin-position row col queens)
  (cons (make-position col row) queens))

(define (make-position col row)
  (cons col row))
(define (position-col position)
  (car position))
(define (position-row position)
  (cdr position))


;;test
(print (queens 8))
(print (length (queens 8)))
(print (car (queens 8)))
