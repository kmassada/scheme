;CMSC 331 
;Kenneth Massada
;schemeHW1C1.scm

(define (getHex dec)
	(let* ((dec_num 10) 
			(a_num 65)
			(x (if (> dec dec_num) 
				(string (integer->char(+ (- dec dec_num) a_num))) 
				(number->string dec)))
			)
		x
	)
)

(define (toHex dec)
	;local-function:solveHex
	(define (solveHex dec res)
		(let ((base 16))
			(cond
				[(null? dec) res]
				[(>= dec (- base 1)) (solveHex (quotient dec base) (string-append (getHex (remainder dec base)) res) )]
				[else (string-append (getHex dec) res)]
			)
		)
	)

	(solveHex dec "")
)

(define (main)
	; (let ((x 0) (y -1))
	; 	(printf "~s" (* x y))
	; )
	;(display(getHex 12))
	;(display(getHex 9))
	;(display(string-append "" "Banana"))
	(display(toHex 43344342))
	;(display(quotient 3434 16))
	;(display(string-append "" (getHex 12)))
	;(display(integer? (remainder (quotient 32 4) 4)))
)
(main)