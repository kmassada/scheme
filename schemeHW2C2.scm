;CMSC 331 
;Kenneth Massada
;schemeHW1C2.scm

(define (zeroCount a)
	(let ((num (string->list(number->string a))))
		(countZero num)
	)
	
)
(define (countZero a)
	(cond 
		((null? a) 0)
		( (char=? (car a) #\0) (+ (countZero(cdr a)) 1) )
		(else (countZero(cdr a)))
	)
)


(define (main)
	(display (zeroCount 234004050))
)
(main)