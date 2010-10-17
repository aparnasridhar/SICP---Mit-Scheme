Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (big-sum-squares a b c)
  (cond ((and (>= a b) (>= b c))(sum-of-squares a b))
	((and (>= b a) (>= c a))(sum-of-squares b c))
	(else (sum-of-squares c a))))

(define (square n)
  (* n n))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

Testing:

(big-sum-squares 1 2 3)
;Value: 13

(big-sum-squares 3 2 1)
;Value: 13

(big-sum-squares 3 1 2)
;Value: 13

(big-sum-squares 1 1 2)
;Value: 5

(big-sum-squares 1 1 1)
;Value: 2

(big-sum-squares 1 5 1)
;Value: 26

