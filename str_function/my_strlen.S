.global my_strlen

my_strlen:
    movq %rdi, %rsi
    xor %rax,%rax
.loop:
    cmpb $0,(%rsi,%rax)
    je .done
    inc %rax
    jmp .loop
.done:
    ret
