#lang sicp
(+(* 3
     (+(* 2 4)
       (+ 3 5)))
  (+ (- 10 7)
     6))
;编写复杂代码时 对齐操作数是一种好的选择
;;------------------------------------------------------------
(define size 2)
size
(* 2 size)
;将size 与 2 进行了绑定
;;------------------------------------------------------------
(define (square x) (* x x))
(square 12)
;定义了操作square 参数是x
;过程的一般定义为：
;(define (<name> <formal params>) <body> )
( define ( sum-of-square x y )(+ (square x) (square y)) )
( define (f a) (sum-of-square (+ a 1 ) (* 2 a)))
( f 5)
;规约求值
;正则序求值:完全展开后而规约
;应用序求值:先求值参数再应用
;;------------------------------------------------------------
( define (abs x)
   ( cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x ))))
( abs (- 7))
;条件表达式的一般形式为
;( cond ( <p1> <e1>)
 ;       ( <p2> <e2>)
;       ...
;       ( <pn> <en>))

( define ( abs2 x)
   (cond ((< x 0)(- x))
        (else x)))
(abs2 (- 9))

( define (abs3 x)
   (if (< x 0)
       (- x)
       x))
;if是特殊用法，只适用于俩个条件的句子
;( if <predicate> <consequence> <alternative> )
;谓词是真求值结果；谓词是假，求值替代
;;------------------------------------------------------------
( and (< 1 2) (> 3 2))
( or (> 1 2) (< 3 2))
( not (> 1 2))
;逻辑复合运算符
(define (>= x y)
  (or (> x y ) ( = x y )))
(define (>=_2 x y)
  (not (< x y)))
;利用复合运算符，定义谓词
;;------------------------------------------------------------
(define SQUARE (lambda(x)(* x x )))
(SQUARE 5)
SQUARE
;lambda表达式
;;-------------------------------------------------------------
;;Exercise 1
(define exp
  (lambda x n)
  (cond ( (= n 0) 1)
        (else
         (* x ( exp x ( - n 1))))))
(exp 2 5)
