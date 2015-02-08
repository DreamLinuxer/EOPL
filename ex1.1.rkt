; Exercise 1.1.1
; S1 = {3n + 2 | n \in N}
; Def. 1
; n is in S1 if and only if
; 1. n = 2 or
; 2. n - 3 \in S1
;
; Def. 2
; S1 is the smallest set contained in N and satisfying
; 1. 2 \in S1
; 2. if n \in S1 then n+3 \in S1
;
; Def. 3
;                 n \in S1
;----------    --------------
; 2 \in S1      (n+3) \in S1
(define in-S1?
  (lambda (n)
    (if (= 2 n) #t
        (if (>= (- n 3) 0) (in-S1? (- n 3))
            #f))))

(equal? (in-S1? 0) #f)
(equal? (in-S1? 2) #t)
(equal? (in-S1? 5) #t)
(equal? (in-S1? 6) #f)
(equal? (in-S1? 62) #t)

; Exercise 1.1.2
; S2 = {2n + 3m +1 | n, m \in N}
; Def. 1
; n is in S2 if and only if
; 1. n = 1 or
; 2. n - 3 \in S2 or
; 3. n - 2 \in S2
;
; Def. 2
; S1 is the smallest set contained in N and satisfying
; 1. 1 \in S2
; 2. if n \in S2 then n+2 \in S2
; 3. if n \in S2 then n+3 \in S2
;
; Def. 3
;                 n \in S2          n \in S2
;----------    --------------    --------------
; 1 \in S2      (n+3) \in S2      (n+2) \in S2
(define in-S2?
  (lambda (n)
    (if (= 1 n) #t
        (if (>= (- n 3) 0)
            (or (in-S2? (- n 3)) (in-S2? (- n 2)))
            (if (>= (- n 2) 0)
                (in-S2? (- n 2))
                #f)))))

(equal? (in-S2? 1) #t)
(equal? (in-S2? 2) #f)
(equal? (in-S2? 3) #t)
(equal? (in-S2? 4) #t)
(equal? (in-S2? 21) #t)

; Exercise 1.1.3
; S3 = {(n, 2n + 1) | n \in N}
; Def. 1
; (n, m) is in S3 if and only if
; 1. (n, m) = (0, 1) or
; 2. (n - 1, m - 2) \in S3
;
; Def. 2
; S3 is the smallest set contained in NxN and satisfying
; 1. (0, 1) \in S3
; 2. if (n, m) \in S3 then (n + 1, m + 2) \in S3
;
; Def. 3
;                       (n, m) \in S3
;---------------    -------------------
; (0, 1) \in S3      (n+1, m+2) \in S3
(define in-S3?
  (lambda (n m)
    (if (and (= 0 n) (= 1 m)) #t
        (if (and (>= (- n 1) 0)
                 (>= (- m 2) 0))
            (in-S3? (- n 1) (- m 2))
            #f))))

(equal? (in-S3? 0 1) #t)
(equal? (in-S3? 1 3) #t)
(equal? (in-S3? 10 21) #t)
(equal? (in-S3? 10 20) #f)

; Exercise 1.1.3
; S4 = {(n, n^2) | n \in N}
; Def. 1
; (n, m) is in S4 if and only if
; 1. (n, m) = (0, 0) or
; 2. (n - 1, m - 2n + 1) \in S4
;
; Def. 2
; S4 is the smallest set contained in NxN and satisfying
; 1. (0, 0) \in S4
; 2. if (n, m) \in S4 then (n + 1, m + 2n + 1) \in S4
;
; Def. 3
;                         (n, m) \in S4
;---------------    ----------------------
; (0, 0) \in S4      (n+1, m+2n-1) \in S4
(define in-S4?
  (lambda (n m)
    (if (and (= 0 n) (= 0 m)) #t
        (if (and (>= (- n 1) 0)
                 (>= (+ (- m (* 2 n)) 1) 0))
            (in-S4? (- n 1) (+ (- m (* 2 n)) 1))
            #f))))

(equal? (in-S4? 0 0) #t)
(equal? (in-S4? 1 1) #t)
(equal? (in-S4? 10 100) #t)
(equal? (in-S4? 9 80) #f)
