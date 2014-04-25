(define (zipper? lst)

	(define (doCheck? lst)
		(cond
			[(null? lst) #f]
			[(empty? lst) #f]
			[(not(list? lst)) #f]
			[else #t]
		)
	)

	(define (lenCheck? lst)
		(cond
			[(= (length lst) 2) #t]
			[else #f]
		)
	)

	(define (checkZip? lst lgth flag)
		(cond 
			[(= lgth 1) (and (doCheck? (car lst)) (lenCheck? (car lst)) flag)] 
			[else (and (doCheck? (car lst)) (lenCheck? (car lst)) 
					(checkZip? (cdr lst) (length (cdr lst)) flag)
				)]
		)
	)

	(cond
		[(not (doCheck? lst)) #f]
		[else (checkZip? lst (length lst) #t)]
	)
)

(define (zip lsta lstb)

	(define (consLst biglst lilst lst)
		(cond
			[(= (length biglst) 1) (append lst (list (list (car biglst) (getCar lilst) )))]
			[else (consLst (cdr biglst)(getCdr lilst) (append lst (list (list (car biglst) (getCar lilst) )) ) )]
		)
		;lst
	)


	(define (getCar lst) 
		(cond
			[(empty? lst) '()]
			[else (car lst)]
		)
	)
	(define (getCdr lst) 
		(cond
			[(empty? lst) '()]
			[else (cdr lst)]
		)
	)

	(cond 
		[(and (empty? lsta) (empty? lstb)) '()]
		[(< (length lsta) (length lstb)) (consLst lstb lsta '())] ;do op
		[(> (length lsta) (length lstb)) (consLst lsta lstb '())] ;do op
		[(= (length lsta) (length lstb)) (consLst lsta lstb '())] ;do op
		[else '()]
	)
)

(display(zipper? '( (a 1) (b 2) ) )) ;#t
(display(zipper? '( (foo 100) (bar 2 3) ))) ;#f
(display(zipper? '((a 1) b (c 3))) ) ;#f
(display(zipper? '((a 1) . 2)) ) ;#f

; (display (null? '( (a 1) (b 2) ))) 
; (display (empty? '( (a 1) (b 2) ))) 
; (display (list? '( (a 1) (b 2) ))) 
; (display (and #t #t))
; (display (zipper? '((a 1)))) 

; (display (car '( (a 1) )))
;(display(append (list "a" "b") (list (list "A" "B"))))
(display "\n")
(display (zip '(a b c) '(1 2 3)))(display "\n")
(display (zip '(a b c) '(1)))(display "\n")
(display (zip '(a b) '(1 2 3)))(display "\n")
(display(zip '() '()))
(display "\n")

