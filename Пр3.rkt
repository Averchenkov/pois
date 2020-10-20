#lang racket
(display "Вариант 1\n")
(display "Введите первый список из трех чисел\n")
(define one (list (read) (read) (read)))
(display "Введите второй список из трех чисел\n")
(define two (list (read) (read) (read)))

(define (func one two)
  (if(exact-integer? (car one)) two
     ( cons ( car one ) ( cdr two ))))

(display (format "~a\n\n" (func one two)))


(display "Вариант 11\n")
(display "Введите первый список из трех чисел\n")
(define listone (list (read) (read) (read)))
(display "Введите второй список из трех чисел\n")
(define listtwo (list (read) (read) (read)))

(define (functwo listone listtwo)
  (list
        (list (car listone))
        (list (list-ref listtwo 1) (list-ref listone (- (length listone) 1)))
        (list (car listtwo))))

(display (format "~a\n\n" (functwo listone listtwo)))


(display "Вариант 13\n")
(display "Введите три числа\n")
(define numberone(read))
(define numbertwo(read))
(define numberthree(read))

(define (functhree one two three)
  (if(and (odd? one) (and (odd? two) (odd? three)))
     (list (expt one 3) (expt two 3) (expt three 3))
     (+ one (+ two three))))

(display (format "~a\n\n" (functhree numberone numbertwo numberthree)))

