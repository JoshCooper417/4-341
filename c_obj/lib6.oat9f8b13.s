	.align 4
	.data
arr11732:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh807:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _arr11732.init
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
	subl $108, %esp
__fresh804:
	leal -108(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -104(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl arr11732, %eax
	movl %eax, -32(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -28(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	leal -100(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
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
	leal -96(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -88(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond803
__cond803:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl $5, %eax
	cmpl %eax, %ecx
	setL -44(%ebp)
	andl $1, -44(%ebp)
	movl -44(%ebp), %eax
	cmpl $0, %eax
	jNE __body802
	jmp __post801
__fresh805:
	jmp __body802
__body802:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -68(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond803
__fresh806:
	jmp __post801
__post801:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr11732.init
_arr11732.init:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh800:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $5, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -28(%ebp)
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
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $111, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $112, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl $113, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl $114, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -4(%ebp)
	movl $115, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl %eax, arr11732
	movl %ebp, %esp
	popl %ebp
	ret
