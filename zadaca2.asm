# a=(b-c)+(d+e-f)-3   //    s0,s1,s2,s3,s4,s5

.text
li $s1,4
li $s2,1
li $s3,4
li $s4,4
li $s5,2

addi $s0,$zero,0 # a=0
sub $t0,$s1,$s2  # (b-c)=3
add $t1,$s3,$s4  # (d+e)=8
sub $t2,$t1,$s5  # (d+e)-f=6
subi $t3,$t2,3 # (d+e-f)-3=3
add $s0,$t0,$t3  # a=(b-c)+(d+e-f)-3=6 


