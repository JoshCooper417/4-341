	.align 4
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh358:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $240, %esp
__fresh339:
	leal -232(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -228(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
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
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare324
__fresh340:
	jmp __compare324
__compare324:
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body325
	jmp __end326
__fresh341:
	jmp __body325
__body325:
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
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
	movl $1, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare321
__fresh342:
	jmp __compare321
__compare321:
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -36(%ebp)
	andl $1, -36(%ebp)
	movl -36(%ebp), %eax
	cmpl $0, %eax
	jNE __body322
	jmp __end323
__fresh343:
	jmp __body322
__body322:
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	jmp __compare321
__fresh344:
	jmp __end323
__end323:
	movl -52(%ebp), %eax
	movl %eax, -52(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -52(%ebp)
	jmp __compare324
__fresh345:
	jmp __end326
__end326:
	leal -236(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -60(%ebp)
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
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare330
__fresh346:
	jmp __compare330
__compare330:
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl $4, %eax
	cmpl %eax, %ecx
	setL -68(%ebp)
	andl $1, -68(%ebp)
	movl -68(%ebp), %eax
	cmpl $0, %eax
	jNE __body331
	jmp __end332
__fresh347:
	jmp __body331
__body331:
	movl -108(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $5, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -76(%ebp)
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
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare327
__fresh348:
	jmp __compare327
__compare327:
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl $5, %eax
	cmpl %eax, %ecx
	setL -84(%ebp)
	andl $1, -84(%ebp)
	movl -84(%ebp), %eax
	cmpl $0, %eax
	jNE __body328
	jmp __end329
__fresh349:
	jmp __body328
__body328:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -100(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -92(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -88(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -88(%ebp)
	jmp __compare327
__fresh350:
	jmp __end329
__end329:
	movl -108(%ebp), %eax
	movl %eax, -108(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -108(%ebp)
	jmp __compare330
__fresh351:
	jmp __end332
__end332:
	leal -240(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -164(%ebp), %eax
	movl %ecx, (%eax)
	movl -164(%ebp), %eax
	addl $0, %eax
	movl %eax, -160(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl -160(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -164(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -156(%ebp)
	movl -164(%ebp), %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	movl -152(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -164(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -148(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -64(%ebp), %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -140(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -136(%ebp)
	movl -64(%ebp), %eax
	addl $0, %eax
	movl %eax, -132(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl -132(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -64(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -128(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -144(%ebp), %eax
	movl %eax, -120(%ebp)
	movl -124(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -120(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
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
	movl -208(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare336
__fresh352:
	jmp __compare336
__compare336:
	movl -208(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -168(%ebp)
	andl $1, -168(%ebp)
	movl -168(%ebp), %eax
	cmpl $0, %eax
	jNE __body337
	jmp __end338
__fresh353:
	jmp __body337
__body337:
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -176(%ebp)
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
	movl -188(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare333
__fresh354:
	jmp __compare333
__compare333:
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -184(%ebp)
	andl $1, -184(%ebp)
	movl -184(%ebp), %eax
	cmpl $0, %eax
	jNE __body334
	jmp __end335
__fresh355:
	jmp __body334
__body334:
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -180(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -204(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -200(%ebp), %eax
	movl %eax, -192(%ebp)
	movl -196(%ebp), %eax
	movl %eax, %ecx
	movl -192(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -192(%ebp)
	movl -188(%ebp), %eax
	movl %eax, -188(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -188(%ebp)
	jmp __compare333
__fresh356:
	jmp __end335
__end335:
	movl -208(%ebp), %eax
	movl %eax, -208(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -208(%ebp)
	jmp __compare336
__fresh357:
	jmp __end338
__end338:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -112(%ebp), %eax
	pushl %eax
	call _f
	movl %eax, -224(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -120(%ebp), %eax
	movl %eax, -220(%ebp)
	movl -224(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -220(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $4, %eax
	pushl %eax
	call _g
	movl %eax, -216(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -220(%ebp), %eax
	movl %eax, -212(%ebp)
	movl -216(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _g
_g:
	pushl %ebp
	movl %esp, %ebp
	subl $80, %esp
__fresh314:
	leal -76(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
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
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare311
__fresh315:
	jmp __compare311
__compare311:
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __body312
	jmp __end313
__fresh316:
	jmp __body312
__body312:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -24(%ebp)
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
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare308
__fresh317:
	jmp __compare308
__compare308:
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl $3, %eax
	cmpl %eax, %ecx
	setL -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body309
	jmp __end310
__fresh318:
	jmp __body309
__body309:
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -36(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	jmp __compare308
__fresh319:
	jmp __end310
__end310:
	movl -48(%ebp), %eax
	movl %eax, -48(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -48(%ebp)
	jmp __compare311
__fresh320:
	jmp __end313
__end313:
	leal -80(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl -72(%ebp), %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -64(%ebp)
	movl -72(%ebp), %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -56(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh307:
	leal -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
