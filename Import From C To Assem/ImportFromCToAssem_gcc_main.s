
			IMPORT Adder
			IMPORT num
            .global main
			

main:
			LDR		R1,=num
			MOV		R0,#100
			STR		R0,[R1]
			BL		Adder
			
			.end