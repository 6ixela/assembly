.global get_frame

get_frame:
	movq %rbp, %rax
	testl %edi,%edi
	je .done
.loop:
	movq (%rax), %rax
	dec %edi
	jnz .loop
.done:
	ret