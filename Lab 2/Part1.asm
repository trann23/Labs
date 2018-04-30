main: 

li s0, 15
li s1, 10
li s2, 5
li s3, 2
li s4, 18
li s5, -3
li s6, 0

SUB a0, s0, s1 #(A-B)
MUL a1, s2, s3 #(C*D)
SUB a2, s4, s5 #(E-F)
DIV a3, s0, s2 #(A/C)

ADD a0, a0, a1 #(A-B)+(C*D)
ADD a0, a0, a2 #(A-B)+(C*D)+(E-F)
SUB a0, a0, a3 #(A-B)+(C*D)+(E-F)-(A/C)

ADDI s6, a0, 0 

