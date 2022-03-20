#lang racket


(define a 3)
(define b 2)
;; a = 3, b = 2

(define (func a b)

    ;a = 5
    ;b = 6
    
    (let [(a 7)]
      ; a = , b = 6
      (+ a b)))

(display "(func 5 6) = ")
(func 5 6)
;------------------------ lambda
(define x 3)
(display "rezultatul lambda-ului este: ")

((lambda (x)
   x)
 2)

;-------------------------- let
(display "rezultatul let-ului este: ")
(let [(a 12)
      (b 3)]
  (- a 8)
  (+ b 1)
  (+ a b))
;-------------------------- let*
(display "rezultatul lui let* este: ")
(let* [(a 4)
       (b (+ 2 a))  ; b = 6
       (c (* 2 b))] ; c = 12
  (list a b c))
;-------------------------- letrec
;(letrec [(a (+ 1 b)) ; valoarea lui b este vizibila,
;         (b 7)]      ; dar nu este evaluata inca, deci apare ca si 'undefined'
;  (cons b a))

(letrec
   [(even-length?
     (λ(L)                          ; even-length? este o funcție, iar
       (if (null? L)                ; corpul unei funcții nu este evaluat la
           #t                       ; momentul definirii ei  
           (odd-length? (cdr L))))) ; deci nu e o problemă că încă nu știm cine e odd-length?  
    (odd-length?   
     (λ(L)   
       (if (null? L)  
           #f  
           (even-length? (cdr L)))))]  
 (even-length? '(1 2 3 4 5 6))) 

;-------------------------- named let
(define (prod-list L)
  (let loop [(L L)       ; shadowing la parametrul functiei
             (result 1)] ; cazul de baza
    (if (null? L)
        result
        (loop (cdr L) (* (car L) result)))))

(display "rezultatul pentru named let este: ")
(prod-list '(1 2 3))
;-------------------------- inchideri functionale
(define f
  (λ(x)
    (* 2 x)))
;-------------------------- functii laborator
(splitf-at '(2 5 1 -3 4 -5 6) negative?)

(let*-values (((l1 l2) (splitf-at '(-2 -5 1 -3 4 -5 6) negative?)))
    (cons l1 (list l2)))