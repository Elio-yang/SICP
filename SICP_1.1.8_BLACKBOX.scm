;;将过程视作一个抽象的黑箱，例如过程square给出一个数的平方，
;;而不需要用户考虑这过程如何去实现
;------------------------------------------------------------
;;内部定义与块结构
(define (sqrt x)
    (define (abs y)
        (if(< y 0)
            (- y)
            y))
    (define (average a b)
        (/ (+ a b) 2))
    (define (square a)
        (* a a))
    (define (goodenough? guess x)
        (< (abs (- (square guess) x)) 0.0001))
    (define (improve guess x)
        (average guess (/ x guess)))
    (define (sqrt-iter guess x)
        (if (goodenough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))
    (sqrt-iter 1.0 x))
(display (sqrt 9))
(exit)
;;x在sqrt中受到了约束，因而下面过程中的x跟此处的x是一个x，不需要
;;再将x作为显示的参数进行传递，可以省略该形式参数x
;------------------------------------------------------------
