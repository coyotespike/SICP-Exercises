(define (cube-root x)
  (cube-iter 1.0 x))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- 1 (/ (improve guess x) guess))) 0.001))
