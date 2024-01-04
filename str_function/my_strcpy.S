.global my_strcpy

my_strcpy:

.loop:
    cmpb $0,(%rdi)
    je  .done

    movb (%rdi), %r10b
    movb %r10b, (%rsi)

    incq %rsi
    incq %rdi
    jmp .loop

.done:
    ret

main:

    xor     %rax, %rax
  mov     $format, %rdi
    mov     $str2, %rsi

    push    %rdi
    push    %rsi
    call    printf@PLT
    pop     %rsi
    pop     %rdi
    
    
    mov     $str1, %rdi
    mov     $str2, %rsi
    call    my_strcpy
    movq    $0,   %rax

    mov     $format, %rdi
    mov     $str1, %rsi

    push    %rdi
    push    %rsi
    xor     %rax, %rax
    call    printf@PLT
    pop     %rsi
    pop     %rdi
    ret

    .data
str1:
    .string "Hello world!"

str2:
    .string "------------"

format:
    .string "string is %s\n"