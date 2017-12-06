	.data
string:         .asciiz     "string" 
char:           .asciiz     "r"
string_len:     .byte       6

	.text
start:		    LB     $a0, string_len($zero)   ; load string lenght
				LB     $a1, char($zero)         ; load the value of char

				DADDI $v1, $zero, -1            ; position = -1
				DADDI  $v0, $zero, 0            ; i = 0
				
loop: 			LB  $t1, string($v0)            ; load the value of string[i]

				BEQ $t1, $a1, exit				; if string[i] = char, exit

				SLT $at, $v0, $a0               ; if i < string_len
				DADDI $v0, $v0, 1               ; i++
				BNE $at, $zero, loop            ; 

exit:			DADDI $v1, $v0, 0			    ; position = i
				HALT
				