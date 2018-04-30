.data 
A: .word 0,0,0,0,0 
B: .word 1,2,4,8,16
I: .word 0
SIZE: .word 5 

.text
main: 
	la s0, A
	la s1, B
	lw s2, I
	lw s3, SIZE
	
while: 
	beq s2, s3, next # if s2 = s3 jump to next 
    	slli s4, s2, 2 # s4 = i*2
    	add s6, s4, zero # s6 = s4
    	add s4, s4, s1 # location of B + i*2 is the location of B[i]
    	lw s5, 0(s4) # puts B[i] into s5
    	addi s5, s5, -1 # s5 = s5 -1 
    	add s6, s6, s0 # s6 = s6 + s0
    	sw s5, 0(s6) # puts s5 in A[i]
    	addi s2, s2, 1 # s2 = s2 + 1 (increments i by 1
    	j while # jumps back to the beggining of while 

next: # inrcrements to to the next element in the array 
	addi s2, s2, -1 # s2 = s2 -1
	li a0, -1
	la s0, A
	la s1, B

for:
	beq s2, a0, Exit 
    	slli s4, s2, 2  # s4 = i*2
    	add s6, s4, zero  # s6 = s4
    	add s4, s4, s1 # location of B + (*2 is the loaction of B[i]
    	lw s5, 0(s4) # puts B[i] into s5
    	add s6, s6, s0 # s6 gets address of a[i]
    	lw s7, 0(s6) # puts A[i] into s7
    	add s5, s5, s7 # s5 + s7 = s5
    	add s5, s5, s5 # s5 + s5 = s5
    	sw s5, 0(s6) # puts s5 into A[i]
    	addi s2, s2, -1 # s2 = s2 - 1
    	j for # jumps back to the begginging of for 
    	
Exit: