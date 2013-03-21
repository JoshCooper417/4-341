	.align 4
	.data
_oat_string2130.str.:
	.ascii " \0"
_oat_string2130:
	.long _oat_string2130.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh969:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $148, %esp
__fresh965:
	leal -144(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -140(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $8, %eax
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
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare962
__fresh966:
	jmp __compare962
__compare962:
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $8, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body963
	jmp __end964
__fresh967:
	jmp __body963
__body963:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -24(%ebp)
	jmp __compare962
__fresh968:
	jmp __end964
__end964:
	leal -148(%ebp), %eax
	movl %eax, -136(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -132(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -132(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	movl $121, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -124(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -124(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -120(%ebp)
	movl $125, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -112(%ebp)
	movl $120, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -104(%ebp)
	movl $111, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -96(%ebp)
	movl $116, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $5, %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -88(%ebp)
	movl $110, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $6, %eax
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -80(%ebp)
	movl $117, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $7, %eax
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -72(%ebp)
	movl $119, %eax
	movl %eax, %ecx
	movl -136(%ebp), %eax
	movl %ecx, (%eax)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -64(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl _oat_string2130, %eax
	movl %eax, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call _bubble_sort
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -40(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -36(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl $0, %eax
	movl %eax, -32(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _bubble_sort
_bubble_sort:
	pushl %ebp
	movl %esp, %ebp
	subl $192, %esp
__fresh955:
	leal -188(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -184(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -180(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -8(%ebp)
	leal -176(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond948
__cond948:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setG -28(%ebp)
	andl $1, -28(%ebp)
	movl -28(%ebp), %eax
	cmpl $0, %eax
	jNE __body947
	jmp __post946
__fresh956:
	jmp __body947
__body947:
	leal -192(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond951
__cond951:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	cmpl %eax, %ecx
	setLE -40(%ebp)
	andl $1, -40(%ebp)
	movl -40(%ebp), %eax
	cmpl $0, %eax
	jNE __body950
	jmp __post949
__fresh957:
	jmp __body950
__body950:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -84(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -84(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	movl -80(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -76(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -60(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	cmpl %eax, %ecx
	setG -52(%ebp)
	andl $1, -52(%ebp)
	movl -52(%ebp), %eax
	cmpl $0, %eax
	jNE __then954
	jmp __else953
__fresh958:
	jmp __then954
__then954:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -156(%ebp), %eax
	movl %eax, -152(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -152(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -148(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -152(%ebp), %eax
	pushl %eax
	movl -148(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -144(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, -132(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -132(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -128(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -132(%ebp), %eax
	pushl %eax
	movl -128(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -124(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -120(%ebp), %eax
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -112(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -104(%ebp), %eax
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -96(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge952
__fresh959:
	jmp __else953
__else953:
	jmp __merge952
__merge952:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	movl %eax, -160(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -160(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond951
__fresh960:
	jmp __post949
__post949:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -172(%ebp), %eax
	movl %eax, -168(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond948
__fresh961:
	jmp __post946
__post946:
	movl %ebp, %esp
	popl %ebp
	ret
