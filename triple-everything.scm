(define newlist '() )
(define (triple-everything lst)
	(cond
		((null? lst) null)
		(else 
			(cons  (* 3 (car lst)) (triple-everything (cdr lst)))
		)
	)
)

(define (main)
	
	(display (triple-everything '(8 33.5 4/5 5-2i)))
	(display newlist)
)
(main)