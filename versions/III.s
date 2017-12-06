	.data
string:         .asciiz     "string" 
char:           .asciiz     "r"
string_len:     .byte       6

	.text
start:		    DADDI $v0, $v0, 0               ; i = 0
				DADDI $v1, $zero, -1            ; position = -1
				LB     $a1, char($zero)         ; load the value of char

string[0]:      LB  $t1, string($v0)            ; load the value of string[0]
				DADDI $v1, $v0, 0			    ; position = i
				BEQ $t1, $a1, exit	            ; if string[0] = char, exit
				DADDI $v0, $v0, 1               ; i++ 

string[1]:      LB  $t1, string($v0)            ; load the value of string[1]
				DADDI $v1, $v0, 0			    ; position = i
				BEQ $t1, $a1, exit	            ; if string[1] = char, exit
				DADDI $v0, $v0, 1               ; i++ 	

string[2]:      LB  $t1, string($v0)            ; load the value of string[2]
				DADDI $v1, $v0, 0			    ; position = i
				BEQ $t1, $a1, exit	            ; if string[2] = char, exit
				DADDI $v0, $v0, 1               ; i++ 

string[3]:      LB  $t1, string($v0)              ; load the value of string[3]
				DADDI $v1, $v0, 0			    ; position = i
				BEQ $t1, $a1, exit	            ; if string[3] = char, exit
				DADDI $v0, $v0, 1               ; i++ 

string[4]:     	LB  $t1, string($v0)              ; load the value of string[4]
				DADDI $v1, $v0, 0			    ; position = i
				BEQ $t1, $a1, exit	            ; if string[4] = char, exit
				DADDI $v0, $v0, 1               ; i++ 

string[5]:      LB  $t1, string($v0)              ; load the value of string[5]
				DADDI $v1, $v0, 0			    ; position = i
				BEQ $t1, $a1, exit	            ; if string[0] = char, exit
				DADDI $v0, $v0, 1               ; i++ 

				DADDI $v1, $zero, -1            ; position = -1

exit:			HALT
				