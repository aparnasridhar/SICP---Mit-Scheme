Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;Value: a-plus-abs-b

In the above procedure, if b is a positive number then addition operation is applied to a and b.  If b is 0 or a negative number then the negation operator is applied to a and b.  Here the result of the if condition evaluates to a function that is applied to parameters a and b. So i also tried out the above function with the sum of squares we defined before and it functions exactly like using a + or -.  Renders itself to show that scheme treats primitive and user defined functions the same way.  

(define (test a b)
  ((if (> b 0) sum-of-squares -) a b))
;Value: test

(test 1 2)
;Value: 5

(test 1 -8)
;Value: 9
