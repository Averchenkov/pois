#lang racket
(display "Вариант 3\n")
(display "Введите список из пяти чисел\n")
(define list1 (list (read) (read) (read) (read) (read)))
(display "Введите первый лисповский объект\n")
(define one (read))
(display "Введите второй лисповский объект\n")
(define two (read))


(define (func1 list1 one two)
(if (= (length list1) 1)
     (if (= (car list1) one) (list two) list1)
(cons (if (= (car list1) one) two (car list1)) (func1 (cdr list1) one two))))


(display (format "~a\n\n" (func1 list1 one two)))


(display "Вариант 5\n")
(display "Введите список из шести чисел\n")
(define list2 (list (read) (read) (read) (read) (read) (read)))

(define (multiplication list2)
(if (= (length list2) 1)
(car list2)
(* (car list2) (multiplication (cdr list2)))))

(define (func2 list2)
(if (= (length list2) 1)
    list2
(cons (multiplication list2) (func2 (cdr list2)))))

(display (format "~a\n\n" (func2 list2)))



(display "Вариант 8\n")
(display "Введите список из пяти чисел\n")
(define list3 (list (read) (read) (read) (read) (read)))
(display "Введите номер элемента списка с конца\n")
(define num (read))

(define (func3 list3 num)
(if (= (length list3) num)
     (car list3)
(func3 (cdr list3)  num)))


(display (format "~a\n\n" (func3 list3 num)))



