.global main
.text

//extern printf
main:
    /*pushq %rdi
    pushq %rsi
    pushq %rdx
    pushq %rax*/
    cmp $2, %rdi
    jne .err
    
    mov $1, %rax
    mov $1, %rdi
    push %rsi
    movq 8(%rsi), %rsi
    //mov $format, %rsi
    mov $10, %rdx
    //movq %rdi, %rsi
    //mov  $format, %rdi
    
    syscall
    pop %rsi
    mov $60, %rax
    xor %rdi, %rdi
    syscall
    /*popq %rax
    popq %rdx
    popq %rsi
    popq %rdi*/
.done:
    ret
.err:
    mov $69, %rax
    ret
// cpt le nombre d'argument : return 1 si pas le bon nombre
format:
    .string "%s\n"
