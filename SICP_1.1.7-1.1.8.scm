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
     (newtoniter (improve guess x) x)))

(define (sqrt x)
  (newtoniter 1.0 x))

(display (sqrt 9))
;;-----------------------------------------------------------
;;Exercise 2
(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (cube x)(* x x x))
(define (square x)(* x x))
(define (goodguess?  guess x)
  (< (abs (- (cube guess) x)) 0.0000001))

(define (improvecube guess x)
  (/ (+(/ x (square guess)) (* 2 guess)) 3))

(define (cuberoot guess x)
  (if (goodguess? guess x)
    guess
    (cuberoot (improvecube guess x) x)))

(define (cube-root x)
  (cuberoot 1.0 x))

(display (cube-root 8))
;;-----------------------------------------------------------
