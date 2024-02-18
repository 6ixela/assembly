.global myadd

myadd:
	xor %rax, %rax
	addq %rdi, %rax
	addq %rsi, %rax
	ret
