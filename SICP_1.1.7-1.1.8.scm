;;Exercise 1
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.000000000001))

(define (average x y)
  (/ (+ x y ) 2))

(define (improve guess x)
  (average  guess (/ x guess)))

(define (newtoniter guess x)
  (if(good-enough? guess x)
     guess
     (newtoniter (improve guess x)
                 x)))

(define (sqrt x)
  (newtoniter 1.0 x))

(display (sqrt 9))
(exit)
