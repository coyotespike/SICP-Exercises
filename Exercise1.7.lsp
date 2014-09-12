(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt2 x)
  (sqrt-iter 1.0 x))

(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- 1 (/ (improve guess x) guess))) 0.001))
