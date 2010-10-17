;Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order
;evaluation or normal-order evaluation. He defines the following two procedures:

(define (p)(p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;Then he evaluates the expression (test 0 (p)) What behavior will Ben observe with an interpreter that uses applicative
;order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your
;answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or
;applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the
;consequent or the alternative expression.)

Solution:

;Applicative order of evaluation would mean that the parameters of the function test would be evaluated before applying
;the function to it.  In this case since one of the parameters is a function call to p, that is resolved first before
;applying the test function to 0 and (p).  Since p is a function defined in terms of itself, trying to resolve this
;parameter would result in an infinite loop of a function calling itself.  Scheme would reach maximum recursion depth
;and error out.  

;However normal order evaluation in this case would apply test to its parameters 0 (p) and the first condition of test,
;would cause return 0 and exit out of the function. 
















