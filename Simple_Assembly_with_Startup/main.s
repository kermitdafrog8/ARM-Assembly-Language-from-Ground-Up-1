;This is a simple project
	
	
		AREA SimpleProject, CODE, READONLY
		ENTRY
		EXPORT Start


Start
		MOV		R5,#0x1234
		MOV		R3,#0x1234
		
		ADD		R6,R5,R3

STOP	B		STOP
		
		END
		


