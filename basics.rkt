#lang racket

#|

this is a guessing game that finds out what you wanted via binary search


|#

(define (foo n)
  (if (> n 5)
      (+ n 10)
      (+ n 5)))

;this returns the sum of the exponents
(define (exponents n)
  (letrec ([recur (lambda (sum acc n counter)
                   (if (= n counter)
                       sum
                       (recur (+ sum acc) (* acc n) n (+ counter 1))))])
    (recur 0 1 n 0)))


(define (sum-of-numbers n)
  (letrec ([recur (lambda (n acc counter)
                    (if (> counter n)
                        acc
                        (recur n (+ acc counter) (+ 1 counter))))])
    (recur n 0 0)))

;returns the remainder
(define (mod numerator denominator)
  (letrec ([recur (lambda (numerator denominator sum counter) 
                    (cond [(> (+ sum denominator) numerator) (- numerator sum)]
                          [(= sum numerator) 0]
                          [else (recur numerator denominator (+ sum denominator) (+ 1 counter))]))])
    (if (> numerator denominator)
        (recur numerator denominator 0 0)
        numerator)))
  
(define (not-eq? a b)
  (not (eq? a b)))

(define (gcd a b)
  (letrec ([recur (lambda (a b)
                    (cond [(not-eq? b 0) (recur b (mod a b))]
                          [else a]))])
    (recur a b)))





                          









    
        



