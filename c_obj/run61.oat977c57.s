	.align 4
	.data
s431:
	.long 0
_oat_string429.str.:
	.ascii "341\0"
_oat_string429:
	.long _oat_string429.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh154:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _s431.init
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
__fresh153:
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
	movl s431, %eax
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
.globl _s431.init
_s431.init:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh152:
	movl _oat_string429, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, s431
	movl %ebp, %esp
	popl %ebp
	ret
