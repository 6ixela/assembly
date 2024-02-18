.global fibo

fibo:
	xor %rax, %rax
	movq $0, %rsi
	movq $1, %rdx
.loop:
	xor %rcx, %rcx
	cmp $0, %rdi
	je .done
	addq %rsi, %rcx
	addq %rdx, %rcx
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq %rsi, %rax
	
	dec %rdi
	jmp .loop
.done:
	ret
