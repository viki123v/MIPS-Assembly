# Da se pretpostavi deka registrite $s1,$s2,$s3,$s4 se registri dodeleni na promenlivire 
# a,b,c,d,da se napise asemblerska programa za sledniot kod.
# resi: a=(a / b) + (c % d) + (a * d)
.text
li $s1,3 #a
li $s2,2 #b
li $s3,5 #c
li $s4,3 #d

div $s1,$s2 #(a / b) = 1
mflo $t0 #from lo register we taka div
div $s3,$s4 #(c % d) = 2
mfhi $t1 #from hi register we take mod
mul $t2,$s1,$s4 #(a * d) = 9
add $t3,$t0,$t1 #(a / b) + (c % d) = 3
add $s1,$t3,$t2 #a=(a / b) + (c % d) + (a * b)