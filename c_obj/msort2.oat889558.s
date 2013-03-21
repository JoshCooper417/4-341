	.align 4
	.data
_oat_string2321.str.:
	.ascii " \0"
_oat_string2321:
	.long _oat_string2321.str.

_oat_string2317.str.:
	.ascii " \0"
_oat_string2317:
	.long _oat_string2317.str.

a2308:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1095:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _a2308.init
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %ebp, %esp
	popl %ebp
	ret
.globl _merge
_merge:
	pushl %ebp
	movl %esp, %ebp
	subl $416, %esp
__fresh1081:
	leal -412(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	leal -408(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	leal -404(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -400(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 20(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -396(%ebp), %eax
	movl %eax, -20(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -392(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -388(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $50, %eax
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
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	jmp __compare1063
__fresh1082:
	jmp __compare1063
__compare1063:
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl $50, %eax
	cmpl %eax, %ecx
	setL -40(%ebp)
	andl $1, -40(%ebp)
	movl -40(%ebp), %eax
	cmpl $0, %eax
	jNE __body1064
	jmp __end1065
__fresh1083:
	jmp __body1064
__body1064:
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -44(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -44(%ebp)
	jmp __compare1063
__fresh1084:
	jmp __end1065
__end1065:
	leal -416(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1068
__cond1068:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	cmpl %eax, %ecx
	setLE -88(%ebp)
	andl $1, -88(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	cmpl %eax, %ecx
	setLE -76(%ebp)
	andl $1, -76(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	cmpl $0, %eax
	jNE __body1067
	jmp __post1066
__fresh1085:
	jmp __body1067
__body1067:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -36(%ebp), %eax
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
	movl -36(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -124(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	movl -112(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -108(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	cmpl %eax, %ecx
	setL -100(%ebp)
	andl $1, -100(%ebp)
	movl -100(%ebp), %eax
	cmpl $0, %eax
	jNE __then1071
	jmp __else1070
__fresh1086:
	jmp __then1071
__then1071:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -172(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -176(%ebp), %eax
	pushl %eax
	movl -172(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -168(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -160(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -164(%ebp), %eax
	pushl %eax
	movl -160(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -164(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -156(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -144(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -136(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1069
__fresh1087:
	jmp __else1070
__else1070:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -216(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -220(%ebp), %eax
	pushl %eax
	movl -216(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -220(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -212(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -204(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -208(%ebp), %eax
	pushl %eax
	movl -204(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -208(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -200(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -192(%ebp), %eax
	movl %eax, -188(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -184(%ebp), %eax
	movl %eax, -180(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1069
__merge1069:
	jmp __cond1068
__fresh1088:
	jmp __post1066
__post1066:
	jmp __cond1074
__cond1074:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -228(%ebp), %eax
	cmpl %eax, %ecx
	setLE -224(%ebp)
	andl $1, -224(%ebp)
	movl -224(%ebp), %eax
	cmpl $0, %eax
	jNE __body1073
	jmp __post1072
__fresh1089:
	jmp __body1073
__body1073:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -276(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -272(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -276(%ebp), %eax
	pushl %eax
	movl -272(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -276(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -268(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -260(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -264(%ebp), %eax
	pushl %eax
	movl -260(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -256(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -252(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -248(%ebp), %eax
	movl %eax, -244(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -244(%ebp)
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl -240(%ebp), %eax
	movl %eax, -236(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -236(%ebp)
	movl -236(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1074
__fresh1090:
	jmp __post1072
__post1072:
	jmp __cond1077
__cond1077:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -288(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -284(%ebp)
	movl -288(%ebp), %eax
	movl %eax, %ecx
	movl -284(%ebp), %eax
	cmpl %eax, %ecx
	setLE -280(%ebp)
	andl $1, -280(%ebp)
	movl -280(%ebp), %eax
	cmpl $0, %eax
	jNE __body1076
	jmp __post1075
__fresh1091:
	jmp __body1076
__body1076:
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -328(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -332(%ebp), %eax
	pushl %eax
	movl -328(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -332(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -324(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -320(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -316(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -320(%ebp), %eax
	pushl %eax
	movl -316(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -320(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -312(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl -308(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -304(%ebp), %eax
	movl %eax, -300(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -300(%ebp)
	movl -300(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	movl %eax, -292(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -292(%ebp)
	movl -292(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1077
__fresh1092:
	jmp __post1075
__post1075:
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -336(%ebp)
	movl -336(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1080
__cond1080:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -348(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -344(%ebp)
	movl -348(%ebp), %eax
	movl %eax, %ecx
	movl -344(%ebp), %eax
	cmpl %eax, %ecx
	setL -340(%ebp)
	andl $1, -340(%ebp)
	movl -340(%ebp), %eax
	cmpl $0, %eax
	jNE __body1079
	jmp __post1078
__fresh1093:
	jmp __body1079
__body1079:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	movl -36(%ebp), %eax
	addl $0, %eax
	movl %eax, -380(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -384(%ebp), %eax
	pushl %eax
	movl -380(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -384(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -376(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -372(%ebp)
	movl -68(%ebp), %eax
	addl $0, %eax
	movl %eax, -368(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -372(%ebp), %eax
	pushl %eax
	movl -368(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -68(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -372(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -364(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -360(%ebp)
	movl -360(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -356(%ebp)
	movl -356(%ebp), %eax
	movl %eax, -352(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -352(%ebp)
	movl -352(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1080
__fresh1094:
	jmp __post1078
__post1078:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _oat_mergesort
_oat_mergesort:
	pushl %ebp
	movl %esp, %ebp
	subl $104, %esp
__fresh1060:
	leal -104(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -100(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	cmpl %eax, %ecx
	setL -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then1059
	jmp __else1058
__fresh1061:
	jmp __then1059
__then1059:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	movl -68(%ebp), %eax
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	call _oat_mergesort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -52(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	call _oat_mergesort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	movl -40(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	call _merge
	addl $16, %esp
	popl %eax
	popl %ecx
	popl %edx
	jmp __merge1057
__fresh1062:
	jmp __else1058
__else1058:
	jmp __merge1057
__merge1057:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $56, %esp
__fresh1056:
	leal -56(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	leal -52(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -48(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl a2308, %eax
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
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl a2308, %eax
	movl %eax, -24(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $9, %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -24(%ebp), %eax
	pushl %eax
	call _oat_mergesort
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl _oat_string2317, %eax
	movl %eax, -20(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl a2308, %eax
	movl %eax, -16(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -12(%ebp)
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -12(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl _oat_string2321, %eax
	movl %eax, -8(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a2308.init
_a2308.init:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh1055:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $10, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -48(%ebp)
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
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	movl $126, %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -36(%ebp)
	movl $125, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -32(%ebp)
	movl $124, %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -28(%ebp)
	movl $123, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -24(%ebp)
	movl $122, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -20(%ebp)
	movl $121, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -16(%ebp)
	movl $120, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -12(%ebp)
	movl $119, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $32, %eax
	movl %eax, -8(%ebp)
	movl $118, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	addl $4, %eax
	addl $36, %eax
	movl %eax, -4(%ebp)
	movl $117, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl %eax, a2308
	movl %ebp, %esp
	popl %ebp
	ret
