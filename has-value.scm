; (define (has-value x) ; x is the input value

;     ( if(null? x)
;           #f ; then something there (double negative) (then expression)
;           #t ; then really no value entered (else expression)
;           ; “false” and “true” also work in mzscheme/Racket
;     )
; )

;(define x 0)


(define(main)
	;(let((x 0)(y -1)))
	;(display (has-value 3))
	;(display (has-value #\A))
	; (printmenu)
	;(display(number? 42))
	;(printd "~s" x)
	(display (list-sum '(3 4 5 6 )))
	(newline)
	(display (member 7 '(3 4 5 6 )))
	(newline)
)
; (define (printmenu)
; 	; (let((x 30)
; 	; 	(y -10)
; 	; 	)
; 	; (printf "~s" x)
; 	; )

; )
(define (list-sum lst)
	(cond
		((null? lst) 0)
		(else (+ (car lst) (list-sum (cdr lst))))
	)
)
(define (member atm lst)
	(cond
		((null? lst) #f)
		((eq? atm (car lst)) #t)
		(else(member atm (cdr lst)))
	)
)
(main)