	.align 4
	.data
str939:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh420:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _str939.init
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh419:
	leal -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -16(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl str939, %eax
	movl %eax, -4(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _str939.init
_str939.init:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh415:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -8(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %eax, %eax
	movl %eax, %eax
	movl %eax, %eax
	movl %eax, %eax
	movl %eax, %eax
	movl %eax, %eax
	movl %eax, %eax
	movl %eax, %eax
	movl $1, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare412
__fresh416:
	jmp __compare412
__compare412:
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -12(%ebp)
	andl $1, -12(%ebp)
	movl -12(%ebp), %eax
	cmpl $0, %eax
	jNE __body413
	jmp __end414
__fresh417:
	jmp __body413
__body413:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -16(%ebp)
	jmp __compare412
__fresh418:
	jmp __end414
__end414:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -24(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	movl %eax, str939
	movl %ebp, %esp
	popl %ebp
	ret
