	.align 4
	.data
str1679:
	.long 0
_oat_string1677.str.:
	.ascii "hello\0"
_oat_string1677:
	.long _oat_string1677.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh787:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _str1679.init
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
	subl $92, %esp
__fresh784:
	leal -92(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -88(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl str1679, %eax
	movl %eax, -20(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call _array_of_string
	movl %eax, -16(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	leal -84(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -80(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -76(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond783
__cond783:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $5, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body782
	jmp __post781
__fresh785:
	jmp __body782
__body782:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -56(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond783
__fresh786:
	jmp __post781
__post781:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _str1679.init
_str1679.init:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh780:
	movl _oat_string1677, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, str1679
	movl %ebp, %esp
	popl %ebp
	ret
