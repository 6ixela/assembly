.global get_frame

get_frame:
	movq %rdi, %rsi
.loop_find:
	addq $8, %rsp
	cmp $0, %rdi
	jne .loop_find
	leaq (%rsp), %rax
.loop_recov:
	subq $8, %rsp
	cmp $0, %rsi
	jne .loop_recov
.done:
	ret
