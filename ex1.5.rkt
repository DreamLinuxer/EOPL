; Let e be a lambda expression
; If e is of the form Identifier then # of '(' = 0 = # of ')'
;
; If e is of the form (lambda (Identifier) e1)
; assume e1 is a lambda expression with the same # of '(' and ')'
; # of '(' in e = 2 + # of '(' in e1 = 2 + # of ')' in e1 = # of ')' in e
;
; If e is of the form (e1 e2)
; assume e1, e2 are lambda expressions with the same # of '(' and ')'
;   # of '(' in e
; = 1 + # of '(' in e1 + # of '(' in e2
; = 1 + # of ')' in e2 + # of ')' in e2
; = # of ')' in e
