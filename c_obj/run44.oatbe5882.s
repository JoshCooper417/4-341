	.align 4
	.data
str1187:
	.long 0
_oat_string1185.str.:
	.ascii "hello\0"
_oat_string1185:
	.long _oat_string1185.str.

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh575:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _str1187.init
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
	subl $132, %esp
__fresh574:
	leal -132(%ebp), %eax
	movl %eax, -124(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	leal -128(%ebp), %eax
	movl %eax, -120(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	movl %ecx, (%eax)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -116(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -100(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -96(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -80(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -76(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -72(%ebp)
	movl str1187, %eax
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
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -28(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -24(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl str1187, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl str1187, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl str1187, %eax
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
.globl _str1187.init
_str1187.init:
	pushl %ebp
	movl %esp, %ebp
	subl $284, %esp
__fresh531:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
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
	movl -284(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare528
__fresh532:
	jmp __compare528
__compare528:
	movl -284(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -12(%ebp)
	andl $1, -12(%ebp)
	movl -12(%ebp), %eax
	cmpl $0, %eax
	jNE __body529
	jmp __end530
__fresh533:
	jmp __body529
__body529:
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
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
	movl -280(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare525
__fresh534:
	jmp __compare525
__compare525:
	movl -280(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -28(%ebp)
	andl $1, -28(%ebp)
	movl -28(%ebp), %eax
	cmpl $0, %eax
	jNE __body526
	jmp __end527
__fresh535:
	jmp __body526
__body526:
	movl -280(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -36(%ebp)
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
	movl -276(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare522
__fresh536:
	jmp __compare522
__compare522:
	movl -276(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -44(%ebp)
	andl $1, -44(%ebp)
	movl -44(%ebp), %eax
	cmpl $0, %eax
	jNE __body523
	jmp __end524
__fresh537:
	jmp __body523
__body523:
	movl -276(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -52(%ebp)
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
	movl -272(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare519
__fresh538:
	jmp __compare519
__compare519:
	movl -272(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -60(%ebp)
	andl $1, -60(%ebp)
	movl -60(%ebp), %eax
	cmpl $0, %eax
	jNE __body520
	jmp __end521
__fresh539:
	jmp __body520
__body520:
	movl -272(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -68(%ebp)
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
	movl -268(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare516
__fresh540:
	jmp __compare516
__compare516:
	movl -268(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __body517
	jmp __end518
__fresh541:
	jmp __body517
__body517:
	movl -268(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -84(%ebp)
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
	movl -264(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare513
__fresh542:
	jmp __compare513
__compare513:
	movl -264(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -92(%ebp)
	andl $1, -92(%ebp)
	movl -92(%ebp), %eax
	cmpl $0, %eax
	jNE __body514
	jmp __end515
__fresh543:
	jmp __body514
__body514:
	movl -264(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -100(%ebp)
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
	movl -260(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare510
__fresh544:
	jmp __compare510
__compare510:
	movl -260(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -108(%ebp)
	andl $1, -108(%ebp)
	movl -108(%ebp), %eax
	cmpl $0, %eax
	jNE __body511
	jmp __end512
__fresh545:
	jmp __body511
__body511:
	movl -260(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -116(%ebp)
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
	movl -256(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare507
__fresh546:
	jmp __compare507
__compare507:
	movl -256(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -124(%ebp)
	andl $1, -124(%ebp)
	movl -124(%ebp), %eax
	cmpl $0, %eax
	jNE __body508
	jmp __end509
__fresh547:
	jmp __body508
__body508:
	movl -256(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -132(%ebp)
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
	movl -252(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare504
__fresh548:
	jmp __compare504
__compare504:
	movl -252(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -140(%ebp)
	andl $1, -140(%ebp)
	movl -140(%ebp), %eax
	cmpl $0, %eax
	jNE __body505
	jmp __end506
__fresh549:
	jmp __body505
__body505:
	movl -252(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -148(%ebp)
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
	movl -248(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare501
__fresh550:
	jmp __compare501
__compare501:
	movl -248(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -156(%ebp)
	andl $1, -156(%ebp)
	movl -156(%ebp), %eax
	cmpl $0, %eax
	jNE __body502
	jmp __end503
__fresh551:
	jmp __body502
__body502:
	movl -248(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -164(%ebp)
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
	movl -244(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare498
__fresh552:
	jmp __compare498
__compare498:
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -172(%ebp)
	andl $1, -172(%ebp)
	movl -172(%ebp), %eax
	cmpl $0, %eax
	jNE __body499
	jmp __end500
__fresh553:
	jmp __body499
__body499:
	movl -244(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -180(%ebp)
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
	movl -240(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare495
__fresh554:
	jmp __compare495
__compare495:
	movl -240(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -188(%ebp)
	andl $1, -188(%ebp)
	movl -188(%ebp), %eax
	cmpl $0, %eax
	jNE __body496
	jmp __end497
__fresh555:
	jmp __body496
__body496:
	movl -240(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -196(%ebp)
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
	movl -236(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare492
__fresh556:
	jmp __compare492
__compare492:
	movl -236(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -204(%ebp)
	andl $1, -204(%ebp)
	movl -204(%ebp), %eax
	cmpl $0, %eax
	jNE __body493
	jmp __end494
__fresh557:
	jmp __body493
__body493:
	movl -236(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -212(%ebp)
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
	movl -224(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare489
__fresh558:
	jmp __compare489
__compare489:
	movl -224(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setL -220(%ebp)
	andl $1, -220(%ebp)
	movl -220(%ebp), %eax
	cmpl $0, %eax
	jNE __body490
	jmp __end491
__fresh559:
	jmp __body490
__body490:
	movl -224(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl _oat_string1185, %eax
	movl %eax, -228(%ebp)
	movl -224(%ebp), %eax
	movl %eax, -224(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -224(%ebp)
	jmp __compare489
__fresh560:
	jmp __end491
__end491:
	movl -236(%ebp), %eax
	movl %eax, -236(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -236(%ebp)
	jmp __compare492
__fresh561:
	jmp __end494
__end494:
	movl -240(%ebp), %eax
	movl %eax, -240(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -240(%ebp)
	jmp __compare495
__fresh562:
	jmp __end497
__end497:
	movl -244(%ebp), %eax
	movl %eax, -244(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -244(%ebp)
	jmp __compare498
__fresh563:
	jmp __end500
__end500:
	movl -248(%ebp), %eax
	movl %eax, -248(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -248(%ebp)
	jmp __compare501
__fresh564:
	jmp __end503
__end503:
	movl -252(%ebp), %eax
	movl %eax, -252(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -252(%ebp)
	jmp __compare504
__fresh565:
	jmp __end506
__end506:
	movl -256(%ebp), %eax
	movl %eax, -256(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -256(%ebp)
	jmp __compare507
__fresh566:
	jmp __end509
__end509:
	movl -260(%ebp), %eax
	movl %eax, -260(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -260(%ebp)
	jmp __compare510
__fresh567:
	jmp __end512
__end512:
	movl -264(%ebp), %eax
	movl %eax, -264(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -264(%ebp)
	jmp __compare513
__fresh568:
	jmp __end515
__end515:
	movl -268(%ebp), %eax
	movl %eax, -268(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -268(%ebp)
	jmp __compare516
__fresh569:
	jmp __end518
__end518:
	movl -272(%ebp), %eax
	movl %eax, -272(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -272(%ebp)
	jmp __compare519
__fresh570:
	jmp __end521
__end521:
	movl -276(%ebp), %eax
	movl %eax, -276(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -276(%ebp)
	jmp __compare522
__fresh571:
	jmp __end524
__end524:
	movl -280(%ebp), %eax
	movl %eax, -280(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -280(%ebp)
	jmp __compare525
__fresh572:
	jmp __end527
__end527:
	movl -284(%ebp), %eax
	movl %eax, -284(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -284(%ebp)
	jmp __compare528
__fresh573:
	jmp __end530
__end530:
	movl -4(%ebp), %eax
	movl %eax, str1187
	movl %ebp, %esp
	popl %ebp
	ret
