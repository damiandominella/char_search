	.data
string:         .asciiz     "uniurb" 
char:           .asciiz     "f"
string_len:     .byte       6

	.text
start:		    LB     $a0, string_len($zero)   ; carico lunghezza stringa
				LB     $a1, char($zero)         ; carico in a1, il valore di char[0] 

				DADDI  $v0, $zero, 0            ; i = 0 (loop counter)
				
loop: 			
				DADDI $v1, $v0, 0			    ; pos (v1) = i

				LB  $t1, string($v0)            ; carico in t1, il valore di string[i]

				BEQ $t1, $a1, exit				; Branch on Equal, salta se sono uguali, a exit

				SLT $at, $v0, $a0               ; if i < string_len
				DADDI $v0, $v0, 1               ; i++
				BNE $at, $zero, loop            ; se $at (che vale 1 se i < string_len) != 0, allora torna a loop

				DADDI $v1, $zero, -1            ; pos not found, -1

exit:			HALT
				