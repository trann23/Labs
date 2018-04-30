.data
z: .word 0
i: .word 0 
.text
main:
lw a1,z
addi a1,a1,2
lw a2,i
li t1,22
li t2,100

forloop:
	beq a2,t1,dowhile #if i>20, move to dowhile loop
	addi a1,a1,1 #z++
	addi a2,a2,2 # i=i+2
	j forloop

dowhile:
	beq  a1,t2,while #if i=100, move to while loop
	addi a1,a1,1 #z++
	j dowhile
while:
	beq a2,x0,done #if i=0, done
	addi a1,a1,-1 # z--
	addi a2,a2,-1 #i--
	j while
done:
	sw a1,z,t0 #store word back to z
	sw a2,i,t0 #store word back to i

	li a7, 1	# system call code for print_int
	lw a0, z	# integer to print
	ecall		# print it
	
	li a7, 1	# system call code for print_int
	lw a0, i	# integer to print
	ecall		# print it

	li  a7,10       #system call for an exit
    	ecall

#end of program
