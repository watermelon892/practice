    .set N, 15
    .set SYS_EXIT, 0x3C
    .set SYS_WRITE, 0x01
    .set STDOUT_FILENO, 0x01
    .set EINTR, -0x04
    .set EXIT_SUCCESS, 0x00
    .set EXIT_FAILURE, 0x01

    .global _start

    .text

_start:
    movl $length, %edx
    leaq fizzbuzz(%rip), %rsi
    movl $STDOUT_FILENO, %edi

0:
    movl $SYS_WRITE, %eax
    syscall
    orl  %eax, %eax
    jns  1f
    cmpl $EINTR, %eax
    je   0b
    movl $EXIT_FAILURE, %edi
    jmp  2f

1:
    leaq (%rsi, %rax), %rsi
    subl %eax, %edx
    jnz  0b

    movl $EXIT_SUCCESS, %edi

2:
    movl $SYS_EXIT, %eax
    syscall

fizzbuzz:
    .macro num n
      .if (\n) >= 10
        num (\n) / 10
      .endif
      .byte '0' + (\n % 10)
    .endm

    .set i, 1
    .rept N
      .if i % 15 == 0
        .ascii "FizzBuzz"
      .elseif i % 3 == 0
        .ascii "Fizz"
      .elseif i % 5 == 0
        .ascii "Buzz"
      .else
        num i
      .endif
      .ascii "\n"
      .set i, i + 1
    .endr


    .set length, . - fizzbuzz
