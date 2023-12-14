#Да се напише асемблерска програма за седниов код во C,под претпоставка
#дека почетната адреса на A е сместена во $s0
# i=5
# A[i]=15
# A[i+1]=A[i]+A[3*1+2];

.data
A: .word 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18

.text 
la $s0,A

addi $t0,$zero,5  #$t0=i=5(i=5)
addi $t1,$zero,15  #A[i]=15

sll $t0,$t0,2  #(i*4)

add $t2,$s0,$t0 # &(A+4*i)

sw $t1,0($t2) #A[i] <=> *(A+i) = 15


# A[3*i+2] pocetok
# A[3*i+2] <=> A+3*(4*i)+2 <=> A+3*(4*i)+8 <=> a[i]+(12*i)+8
mul $t3,$t0,3 # 3*i
addi $t3,$t3,8 # i+8
add $t3,$t3,$s0 # (12*i+8)+&A
#kraj

lw $t4,0($t3) 

add $t4,$t1,$t4 #A[i]+A[3*1+2];

#A[i+1] 
sw $t4,4($t2) #A[i+1]=&+4*i+4 = 0x20 ///4($t2) oznacuva pomestuvanje od 4 bajti,odnosno zgolemuvanje za 1.

