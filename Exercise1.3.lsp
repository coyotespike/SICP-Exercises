(define (square x) (* x x ))
(define (sum-of-squares x y ) (+ (square x) (square y)))

(define (square-sum-larger a b c) (sum-of-squares
                                     (cond ((> a b c) a)
                                           ((> b c a) b)
                                           ((> c a b) c)
                                           ((> a c b) a)
                                           ((> b a c) b)
                                           ((> c b a) c)
					   ((= a b c) a)
                                                      )
                                     (cond ((> a b c) b)
                                           ((> b c a) c)
                                           ((> c a b) a)
                                           ((> a c b) c)
                                           ((> b a c) a)
                                           ((> c b a) b)
					   ((= a b c) b)
                                                      )
                                     ))


 (define (largest-two-of-three x y z) 
   (if (>= x y) 
       (sum-of-squares x (if (>= y z) y z)) 
       (sum-of-squares y (if (>= x z) x z))))

this is considerably more elegant. Note the use of >=. By embedding the 
sum-of-squares functin within the if statement, the author was able to 
achieve a much more concise statement.
