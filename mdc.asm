addi $v0 $zero 5
syscall
move $s0 $v0

addi $v0 $zero 5
syscall
move $s1 $v0

While: beq $s1, $0, Exit

div $t0, $s0, $s1
mfhi $t1
la  $s0, ($s1)
la $s1, ($t1)

j While

Exit: li $v0, 1
la $a0, ($s0)
syscall
