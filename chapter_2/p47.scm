;;2.1.1

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
	       (* (numer y) (denom x)))
	    (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
	       (* (numer y) (denom x)))
	    (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
	    (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
	    (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

;;----------------------------------------

(define x (cons 1 2))
(car x);; 1
(cdr x);; 2 

(define y (cons 3 4))

(define z (cons x y))

(car (car z));; 1 

(car (cdr z));; 3

;;----------------------------------------

(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (positive? (/ n d))
	(cons (/ (abs n) g) (/ (abs d) g))
	(cons (/ (- (abs n)) g) (/ (abs d) g)))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

;;----------------------------------------

(define one-half (make-rat 1 2))

(print-rat one-half)

(define one-third (make-rat 1 3))

(print-rat one-third)

(print-rat (add-rat one-half one-third))

(print-rat (mul-rat one-half one-third))

(print-rat (add-rat one-third one-third))


