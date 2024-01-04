.global main
.global my_pow

.text

my_pow:
    pushq   %r12
    mov     $1,   %rsi
    mov     %rdi, %r12
    mov     $format, %rdi
.loop:
    pushq    %rdi
    pushq    %rsi
    xor     %rax, %rax
    call    printf@PLT
    popq     %rsi
    popq     %rdi

    cmp     $0, %r12
    je      .end
    imul    $2, %rsi
    sub     $1, %r12
    jmp     .loop
.end:
    popq     %r12
    ret
main:
    pushq   %rdi
    mov     $10,  %rdi
    call    my_pow
    movq    $0,   %rax
    popq    %rdi
    ret

    .data
format:
    .string "%d\n"