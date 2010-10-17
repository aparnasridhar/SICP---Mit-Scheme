
(define (smallest-divisor n)
	(find-divisor n 2))

 (define (find-divisor n test-divisor)
	(cond ((> (square test-divisor ) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
	(= (remainder b a) 0))

(define (prime? n)
	(= n (smallest-divisor n)))

(define (timed-prime n)
	(newline)
	(display n)
	(start-prime n (runtime)))

(define (start-prime n start-time)
	(if (prime? n)
	(report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
	(display "***")
	(display elapsed-time))


(define (search-primes start count)
	(define (search-iter n count)
		(cond ((= count 0) (newline))
		((prime? n)(timed-prime n)(search-iter (+ n 1) (- count 1)))
		(else (search-iter (+ n 1) count))))
	  (search-iter start count))


(define (square n)(* n n))

