# 8,17,39,106 -> a,b,c,d potoa nivniot zbir vo a
.text

addi $s0,$zero,8
addi $s1,$zero,17
addi $s2,$zero,39
addi $s3,$zero,106

add $t0,$s0,$s1 # 25
add $t1,$s2,$s3 # 145

add $s0,$t0,$t1 # 170