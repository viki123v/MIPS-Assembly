# Da se napise asemblerska programa za mnozenje eden broj smesten vo registarot $s1
# so -128 za pretstavuvanje na broevi so znak RC.

.text
addi $s1,$zero,2 #Poso prijatelive ne objasvat mn.128 go pretvorame vo 2^7.Ova e osnovata 

sll $s1,$s1,7 #ovde vek e 2^7 se pisit i eksponentot.
#RC sign change:
nor $s1,$s1,$zero #se pravi prv komplement
addi $s1,$s1,1