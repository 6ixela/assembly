.global myatoull

myatoull:
	xor %rax, %rax
	cmpb $0, (%rdi)
	je .done
.loop:
	xor %rcx, %rcx
	addb (%rdi), %cl
	subb $48, %cl
	imul $10, %rax
	add %rcx, %rax
	inc %rdi
	cmpb $0, (%rdi)
	jne .loop
.done:
	ret
