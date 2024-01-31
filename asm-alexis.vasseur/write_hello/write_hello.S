#include <sys/syscall.h>

.global write_hello_world

message:
	.string "hello"

msg:
	.string "Hello World!"

write_hello_world:
	pushq %r12
	pushq %r13
	mov $SYS_open, %rax
	mov $message, %rdi
	mov $0x241, %rsi
	mov $400, %rdx
	syscall

	mov %rax, %r12
	
	mov $SYS_write, %rax
	mov $msg, %rsi
	mov %r12, %rdi
	mov $12, %rdx
	syscall
	
	mov $SYS_close, %rax
	mov %r12, %rdi
	syscall

	popq %r13
	popq %r12	
	ret


