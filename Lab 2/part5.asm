.data
A: .word 2
B: .word 0

.text
main: 

la t0, A
la t1, B
	li s0, 2
	li s1, 0
	li s2, 22
	li s3, 100
	li s4, 0
	li s5, 1
	
	
while: 
	beq s1, s2, A1
		addi s0, s0, 1
		addi s1, s1, 2
		sw s0, 0(t0)
		sw s1, 0(t1)
		j while 

A1: 
 	beq s0, s3, B1 
 		addi s0, s0 ,1
 		sw s0, 0(t0)
 		j A1
B1: 
  	beq s1, s4, EXIT
  		sub s0, s0, s5 
  		sub s1, s1, s5
  		sw s0, 0(t0) #store memory back to z
		sw s1, 0(t1) #store memory back to i
  		j B1
  	
EXIT: 