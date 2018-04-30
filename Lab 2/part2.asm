main:

li s0, 10
li s1, 15
li s2, 6
li s3, 0
li s4, -3
li s5, -2
li s6, -1
li s7, 5
li s8, 7

blt s0, s1, jump

check: 
	bgt s0, s1 C2 # If satisfy jump to C2
	ADDi a0, s2, 1
	BEQ a0, s8 , C2 #If satisfy jump to C3
	
	MV s3, s4
	
	j EXIT
	
jump: 
	bgt s2, s7, C1 #If satisy, jump to C1
	ble s2, s7, check #If satisfy, jump to check
	
C1: 
MV s3, s6 #z=-1
j EXIT 

C2: MV s3, s5 #z=-2
j EXIT 

EXIT: 
