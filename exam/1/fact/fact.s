.global fact

fact:
	mov $1,%rax
	cmp $0, %rdi
	je .done
.loop:	
	imul %rdi, %rax
	sub $1, %rdi
	cmp $1,%rdi
	jge .loop
	
.done:	
	ret
