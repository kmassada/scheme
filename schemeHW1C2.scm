;CMSC 331 
;Kenneth Massada
;schemeHW1C2.scm

(define (validInt? a b c)
	(cond 
		((not (or (integer? a) (integer? b) (integer? c ))) #f)
		((and (>= a b)(<= a c)) #t)
		(else #f)
	)
)
(define (main)
	(display (validInt? 7 2 5))
)
(main)