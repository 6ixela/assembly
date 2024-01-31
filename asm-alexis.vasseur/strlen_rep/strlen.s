.global my_strlen

my_strlen:
	xor %rax, %rax
.loop:
	xor %rcx, %rcx
	movb (%rdi), %cl
	cmpb $0, %cl
	je .done
	inc %rax
	inc %rdi
	jmp .loop
.done:
	ret
