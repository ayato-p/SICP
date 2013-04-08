;;q2.07

(define (make-interval a b) (cons a b))

(define (lower-bound interval) (car interval))

(define (upper-bound interval) (cdr interval))

;;test
(lower-bound (make-interval 6.12 7.48)) ;;6.12
(upper-bound (make-interval 6.12 7.48)) ;;7.48

