;Exercise 1.2.1
;                        (n, k) \in S
;--------------    -----------------------
; (0, 1) \in S      (n + 1, k + 7) \in S
;
; S = {(n, 7n + 1) | n \in N}
; (0, 1) \in S
; if (n, 7n + 1) \in S then (n+1, 7n+7+1)=(n+1, 7(n+1)+1) \in S

;Exercise 1.2.2
;                     (n, k) \in S
;--------------    -------------------
; (0, 1) \in S      (n + 1, 2k) \in S
;
; S = {(n, 2^n) | n \in N}
; (0, 1) \in S
; if (n, 2^n) \in S then (n+1, 2*2^n)=(n+1, 2^(n+1)) \in S

;Exercise 1.2.3
;                         (n, i, j) \in S
;-----------------    -----------------------
; (0, 0, 1) \in S      (n + 1, j, i+j) \in S
;
; Let Fib(0) = 0, Fib(1) = 1, Fib(n) = Fib(n-1) + Fib(n-2)
; S = {(n, Fib(n), Fib(n+1) | n \in N}
; (0, 0, 1) \in S
; if (n, Fib(n), Fib(n+1)) \in S
; then (n+1, Fib(n+1), Fib(n)+Fib(n+1))=(n+1, Fib(n+1), Fib(n+2)) \in S

;Exercise 1.2.4
;                         (n, i, j) \in S
;-----------------    -----------------------
; (0, 1, 0) \in S      (n + 1, i+2, i+j) \in S
;
; S = {(n, 2n+1, n^2 | n \in N}
; (0, 1, 0) \in S
; if (n, 2n+1, n^2) \in S
; then (n+1, 2n+1+2, n^2+2n+1 )=(n+1, 2(n+1) + 1, (n+1)^2) \in S
