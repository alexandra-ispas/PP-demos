#lang racket/gui
;; --------------------------------------
(display "evaluare aplicativă vs. evaluare leneșă\n")

((λ(x)
   ((λ(y)
      (+ x y)) 1)) 
 
 ((λ(z)
    (+ z 2)) 3))

;; --------------------------------------
(display "\ninchideri funcționale\n")

(define sum1
  (λ (x y)
    (λ () 
      (+ x y))))



;; --------------------------------------
(display "\npromisiuni\n")

(define sum2
  (λ (x y)
    (delay (+ x y))))


(sum2 1 2)          ;; promisiunea
(force (sum2 1 2))  ;; se forțează evaluarea promisiunii


;; --------------------------------------
(display "\nfluxuri: stream-take din laborator vs. cel din Racket:\n")


(define (make-naturals k)
  (stream-cons k (make-naturals (add1 k))))


(define naturals-stream (make-naturals 0))


; cel din lab
(define (stream-take1 s n)
  (cond ((zero? n) '())
        ((stream-empty? s) '())
        (else (cons (stream-first s)
                    (stream-take1 (stream-rest s) (- n 1))))))
 
(stream-take1 naturals-stream 4)


(stream-take naturals-stream 4) ;;întoarce un flux format din primele 4 elemente
(stream->list (stream-take naturals-stream 4))

;(stream-length naturals-stream)

; suma a două liste, element cu element
(define list-add
  (λ(l1 l2)
    (if (null? l1) l1       ; nu apare la stream-uri pentru ca sunt infinite
        (cons (+ (car l1) (car l2))
              (list-add (cdr l1) (cdr l2))))))


; suma a două fluxuri
(define add (λ (a b) (stream-cons (+ (stream-first a) (stream-first b))
                                  (add (stream-rest a) (stream-rest b)))))

(stream->list (stream-take (add naturals-stream naturals-stream) 12)) ; fluxul numerelor pare