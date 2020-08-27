;The problem once again is P = Q + R + S. As before, Q = 2, R = 4, S = 5 and we assume that r1 = Q, r2 = R, r3 = S.
;In this case, we will put the data in memory as constants before the program runs. We first use the load register,
;LDR r1,Q instruction to load register r1 with the contents of memory location Q. This instruction does not exist and is
;not part of the ARM�s instruction set. However, the ARM assembler automatically changes it into an actual instruction.
;We call LDR r1,Q a pseudoinstruction because it behaves like a real instruction. It is indented to make the life of a
;programmer happier by providing a shortcut.


	
		AREA	SimpleAdd, CODE, READONLY
		EXPORT  __main


__main		
		LDR		R1,Q		;Load R1 with Q
		LDR     R2,R		;Load R2 with R
		LDR     R3,S        ;Load R3 with S
		ADD     R0,R1,R2
		ADD     R0,R0,R3
Stop    B	    Stop


		AREA	SimpleAdd, DATA,READONLY
P		SPACE	4	;Reserve 4 bytes of memory

;means �call the current line Q and store the word 
;0x00000002 at that location.
Q		DCD		2	;create variable Q with initial value 2
R		DCD     4   ;create variable R with initial value 4
S       DCD     5   ;create variable S with initial value 5

		END

