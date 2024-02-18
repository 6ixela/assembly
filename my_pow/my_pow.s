.global my_pow

.text

msg:
	.string "%d\n"

my_pow:
    pushq   %rbp
    pushq   %r12
    pushq   %r13
    movq $1, %r13 # value of the power
    movq %rdi, %r12 # nb of power
    movq $msg, %rdi

.loop:
    movq    %r13, %rsi
    pushq   %rdi
    pushq   %rsi
    xor     %rax, %rax
    call    printf
    popq     %rsi
    popq     %rdi

    cmp     $0, %r12
    je      .done
    shl     $1, %r13
    sub     $1, %r12
    jmp     .loop
.done:
    popq    %r13
    popq    %r12
    popq    %rbp
    ret
