	.align 4
	.data
a1566:
	.long 1
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh755:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $88, %esp
__fresh751:
	leal -84(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -80(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	call _f
	movl %eax, -12(%ebp)
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -12(%ebp), %eax
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
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare748
__fresh752:
	jmp __compare748
__compare748:
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	cmpl %eax, %ecx
	setL -24(%ebp)
	andl $1, -24(%ebp)
	movl -24(%ebp), %eax
	cmpl $0, %eax
	jNE __body749
	jmp __end750
__fresh753:
	jmp __body749
__body749:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	call _f
	movl %eax, -32(%ebp)
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -28(%ebp)
	jmp __compare748
__fresh754:
	jmp __end750
__end750:
	leal -88(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl a1566, %eax
	movl %eax, -72(%ebp)
	movl -76(%ebp), %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -56(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -56(%ebp)
	movl -76(%ebp), %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -76(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -48(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh747:
	movl a1566, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, a1566
	movl a1566, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
