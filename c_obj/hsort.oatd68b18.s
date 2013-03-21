	.align 4
	.data
n2472:
	.long 8
b2471:
	.long 0
	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1176:
	pushl %edx
	pushl %ecx
	pushl %eax
	call _b2471.init
	addl $0, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl %ebp, %esp
	popl %ebp
	ret
.globl _restoreHdown
_restoreHdown:
	pushl %ebp
	movl %esp, %ebp
	subl $268, %esp
__fresh1167:
	leal -268(%ebp), %eax
	movl %eax, -48(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	leal -264(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	leal -260(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -48(%ebp), %eax
	addl $0, %eax
	movl %eax, -32(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -28(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	leal -256(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -12(%ebp)
	leal -252(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -248(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1157
__cond1157:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	cmpl %eax, %ecx
	setLE -64(%ebp)
	andl $1, -64(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -56(%ebp)
	andl $1, -56(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	cmpl $0, %eax
	jNE __body1156
	jmp __post1155
__fresh1168:
	jmp __body1156
__body1156:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	cmpl %eax, %ecx
	setL -120(%ebp)
	andl $1, -120(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -48(%ebp), %eax
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
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -108(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	movl %eax, -96(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -96(%ebp)
	movl -48(%ebp), %eax
	addl $0, %eax
	movl %eax, -92(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -96(%ebp), %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -88(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	cmpl %eax, %ecx
	setL -80(%ebp)
	andl $1, -80(%ebp)
	movl -120(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __then1160
	jmp __else1159
__fresh1169:
	jmp __then1160
__then1160:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, -132(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1158
__fresh1170:
	jmp __else1159
__else1159:
	jmp __merge1158
__merge1158:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -48(%ebp), %eax
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
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -168(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -160(%ebp), %eax
	movl %eax, -156(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -156(%ebp)
	movl -48(%ebp), %eax
	addl $0, %eax
	movl %eax, -152(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	movl -152(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -156(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -148(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	cmpl %eax, %ecx
	setL -140(%ebp)
	andl $1, -140(%ebp)
	movl -140(%ebp), %eax
	cmpl $0, %eax
	jNE __then1163
	jmp __else1162
__fresh1171:
	jmp __then1163
__then1163:
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1161
__fresh1172:
	jmp __else1162
__else1162:
	jmp __merge1161
__merge1161:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -180(%ebp)
	andl $1, -180(%ebp)
	movl -180(%ebp), %eax
	cmpl $0, %eax
	jNE __then1166
	jmp __else1165
__fresh1173:
	jmp __then1166
__then1166:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl -224(%ebp), %eax
	movl %eax, -220(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -220(%ebp)
	movl -48(%ebp), %eax
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
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -220(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -212(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -48(%ebp), %eax
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
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -208(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -200(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -192(%ebp), %eax
	movl %eax, -188(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -188(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -188(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1164
__fresh1174:
	jmp __else1165
__else1165:
	jmp __merge1164
__merge1164:
	jmp __cond1157
__fresh1175:
	jmp __post1155
__post1155:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	movl -244(%ebp), %eax
	movl %eax, -240(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -240(%ebp)
	movl -48(%ebp), %eax
	addl $0, %eax
	movl %eax, -236(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -240(%ebp), %eax
	pushl %eax
	movl -236(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -240(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -232(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl _restoreHup
_restoreHup:
	pushl %ebp
	movl %esp, %ebp
	subl $136, %esp
__fresh1152:
	leal -136(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	leal -132(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -12(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	leal -128(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1151
__cond1151:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl $1, %eax
	cmpl %eax, %ecx
	setG -64(%ebp)
	andl $1, -64(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -56(%ebp)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -52(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -56(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -48(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	cmpl %eax, %ecx
	setL -36(%ebp)
	andl $1, -36(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	andl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body1150
	jmp __post1149
__fresh1153:
	jmp __body1150
__body1150:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -104(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	movl -104(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -100(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, -92(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -92(%ebp)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -84(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	sarl %cl, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1151
__fresh1154:
	jmp __post1149
__post1149:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -120(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -124(%ebp), %eax
	pushl %eax
	movl -120(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -116(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $344, %esp
__fresh1137:
	leal -316(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	leal -312(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $9, %eax
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
	jmp __compare1122
__fresh1138:
	jmp __compare1122
__compare1122:
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $9, %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body1123
	jmp __end1124
__fresh1139:
	jmp __body1123
__body1123:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -24(%ebp)
	jmp __compare1122
__fresh1140:
	jmp __end1124
__end1124:
	leal -340(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	leal -336(%ebp), %eax
	movl %eax, -80(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	leal -332(%ebp), %eax
	movl %eax, -76(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	leal -328(%ebp), %eax
	movl %eax, -72(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	leal -324(%ebp), %eax
	movl %eax, -68(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -60(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	leal -320(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -48(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -48(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -44(%ebp)
	movl b2471, %eax
	addl $0, %eax
	movl %eax, -40(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl -40(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl b2471, %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl b2471, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl $1, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1127
__cond1127:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl n2472, %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	cmpl %eax, %ecx
	setLE -88(%ebp)
	andl $1, -88(%ebp)
	movl -88(%ebp), %eax
	cmpl $0, %eax
	jNE __body1126
	jmp __post1125
__fresh1141:
	jmp __body1126
__body1126:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	movl -140(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -136(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl b2471, %eax
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
	movl b2471, %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -124(%ebp)
	movl b2471, %eax
	movl %eax, -120(%ebp)
	movl $0, %eax
	movl %eax, -116(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -112(%ebp), %eax
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	call _restoreHup
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %eax, -100(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1127
__fresh1142:
	jmp __post1125
__post1125:
	movl n2472, %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl $1, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1130
__cond1130:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -160(%ebp), %eax
	movl %eax, %ecx
	movl -156(%ebp), %eax
	cmpl %eax, %ecx
	setLE -152(%ebp)
	andl $1, -152(%ebp)
	movl -152(%ebp), %eax
	cmpl $0, %eax
	jNE __body1129
	jmp __post1128
__fresh1143:
	jmp __body1129
__body1129:
	leal -344(%ebp), %eax
	movl %eax, -240(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -240(%ebp), %eax
	movl %ecx, (%eax)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -236(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -236(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -232(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	movl %eax, %ecx
	movl -240(%ebp), %eax
	movl %ecx, (%eax)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -224(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -224(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -220(%ebp)
	movl n2472, %eax
	movl %eax, -216(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -212(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -216(%ebp), %eax
	pushl %eax
	movl -212(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -208(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl n2472, %eax
	movl %eax, -200(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -196(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -200(%ebp), %eax
	pushl %eax
	movl -196(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -192(%ebp)
	movl -240(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl n2472, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl %eax, -180(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	subl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	movl %eax, n2472
	movl n2472, %eax
	movl %eax, -176(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -176(%ebp), %eax
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -172(%ebp), %eax
	pushl %eax
	call _restoreHdown
	addl $12, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	movl %eax, -164(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1130
__fresh1144:
	jmp __post1128
__post1128:
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	movl -244(%ebp), %eax
	movl %eax, n2472
	movl $1, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1133
__cond1133:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl n2472, %eax
	movl %eax, -252(%ebp)
	movl -256(%ebp), %eax
	movl %eax, %ecx
	movl -252(%ebp), %eax
	cmpl %eax, %ecx
	setLE -248(%ebp)
	andl $1, -248(%ebp)
	movl -248(%ebp), %eax
	cmpl $0, %eax
	jNE __body1132
	jmp __post1131
__fresh1145:
	jmp __body1132
__body1132:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -276(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -280(%ebp), %eax
	pushl %eax
	movl -276(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -280(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -272(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -268(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	movl -268(%ebp), %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	cmpl %eax, %ecx
	setGE -260(%ebp)
	andl $1, -260(%ebp)
	movl -260(%ebp), %eax
	cmpl $0, %eax
	jNE __then1136
	jmp __else1135
__fresh1146:
	jmp __then1136
__then1136:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -292(%ebp)
	pushl %edx
	pushl %ecx
	pushl %eax
	movl -296(%ebp), %eax
	pushl %eax
	movl -292(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	popl %eax
	popl %ecx
	popl %edx
	movl -84(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -296(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -288(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -284(%ebp)
	movl -284(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1134
__fresh1147:
	jmp __else1135
__else1135:
	movl $1, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1134
__merge1134:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -304(%ebp), %eax
	movl %eax, -300(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -300(%ebp)
	movl -300(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1133
__fresh1148:
	jmp __post1131
__post1131:
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl -308(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _b2471.init
_b2471.init:
	pushl %ebp
	movl %esp, %ebp
	subl $76, %esp
__fresh1121:
	pushl %edx
	pushl %ecx
	pushl %eax
	movl $9, %eax
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
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -68(%ebp)
	movl $108, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -64(%ebp)
	movl $110, %eax
	movl %eax, %ecx
	subl %ecx, -64(%ebp)
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -56(%ebp)
	movl $111, %eax
	movl %eax, %ecx
	subl %ecx, -56(%ebp)
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -48(%ebp)
	movl $109, %eax
	movl %eax, %ecx
	subl %ecx, -48(%ebp)
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $12, %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -40(%ebp)
	movl $117, %eax
	movl %eax, %ecx
	subl %ecx, -40(%ebp)
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $16, %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -32(%ebp)
	movl $119, %eax
	movl %eax, %ecx
	subl %ecx, -32(%ebp)
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $20, %eax
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -24(%ebp)
	movl $113, %eax
	movl %eax, %ecx
	subl %ecx, -24(%ebp)
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $24, %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -16(%ebp)
	movl $120, %eax
	movl %eax, %ecx
	subl %ecx, -16(%ebp)
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $28, %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %eax, -8(%ebp)
	movl $108, %eax
	movl %eax, %ecx
	subl %ecx, -8(%ebp)
	movl -72(%ebp), %eax
	addl $4, %eax
	addl $32, %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -72(%ebp), %eax
	movl %eax, b2471
	movl %ebp, %esp
	popl %ebp
	ret
