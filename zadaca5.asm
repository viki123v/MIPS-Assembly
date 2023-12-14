.text
addi $s1,$zero,0xa3   #$s1=0x000000a3

lui $s2,0x55ee	 #$s2=0x55ee0000
ori $s2,$s2,0x7766  #$s2=0x55ee7766

sll $s1,$s1,24  #$s1=a3000000

sll $s2,$s2,8  #$s2=0xee776600
srl $s2,$s2,8  #$s2=0x00ee7766

or $s2,$s2,$s1  #$s2=0xa3ee7766