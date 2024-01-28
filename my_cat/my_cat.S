#include <sys/syscall.h>

.global main
.set buffSize,4096

main:

    cmp $2, %rdi
    jne .err_arg
    
    pushq %r15
    pushq %r14
    pushq %r13
    pushq %r12
    pushq %rdi
    pushq %rsi

    //OPEN
    mov $__NR_open, %rax

    mov 0x8(%rsi), %rdi
    xor %rsi, %rsi
    syscall
    cmp $-1, %rax
    je .err_open

    mov %rax, %r13
    popq %rsi
    popq %rdi

    //r13 = buffer
    leaq (%rsp), %rax
    mov %rax, %r12
    subq $32, %rsp
    //r15 = nb_read
    xor %r14, %r14
    //r15 = nb_write
    xor %r15, %r15
    

.loop_read:
    //  READ

    mov $__NR_read, %rax

    mov %r13, %rdi
    mov %rsp, %rsi
    mov $32, %rdx
    syscall
    mov %rax, %r14

.loop_write:
    //  WRITE
    mov $__NR_write, %rax

    mov $1, %edi
    mov %rsp, %rsi
    mov %r14, %rdx
    syscall
    mov %rax, %r15

    //r15 - r14
    cmp %r14, %r15
    jl  .loop_write
    cmp $0, %r14
    jne .loop_read
.done:
    popq %r15
    popq %r14
    popq %r13
    popq %r12
    addq $32, %rsp
    xor %rax, %rax
    ret
.err_arg:
    mov $1, %rax
    ret
.err_open:
    mov $2, %rax
    ret


/*
    r14 = nb_read
    r15 = nb_write
    r13 = fd
    r12 = buff
*/