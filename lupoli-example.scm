; define variables
(define user “Lupoli”)

(printf “Will I do my work in Mr. Lupoli’s Class??”)
  
; have user press “Y” or “N”
(set user (read) )  ; reads what user typed
  
if(eq? user #\Y)  ; will pass. eq? works with Characters
(printf “Then I will pass SCHEME, and learn some Ruby!”)
; ONE LINE
  
if(eq? user #\N)  ; will fail
(begin
(printf “Then I will not pass Mr. Lupoli’s class.”) 
(printf “And my parents will be upset!”)
; TWO LINES OR MORE
)