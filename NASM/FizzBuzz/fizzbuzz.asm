    section .data
_fizz:
    db "Fizz"
_buzz:
    db "Buzz"
_numbers:
    db "0123456789"
_newline:
    db 10

    section .text
    global _start

_print_fizz:
    mov rax, 1
    mov rdi, 1
    mov rsi, _fizz
    mov rdx, 4

    push rcx
    syscall
    pop rcx

    ret

_print_buzz:
    mov rax, 1
    mov rdi, 1
    mov rsi, _buzz
    mov rdx, 4

    push rcx
    syscall
    pop rcx

    ret

_print_number:
    mov rdx, 0
    mov rax, rcx
    mov rbx, 100
    div rbx

    push rdx
    call _print_rax_number

    pop rax
    mov rdx, 0
    mov rbx, 10
    div rbx

    push rdx
    call _print_rax_number

    pop rax
    call _print_rax_number

    ret

_print_rax_number:
    lea rsi, [_numbers + rax]
    mov rax, 1
    mov rdi, 1
    mov rdx, 1

    push rcx
    syscall
    pop rcx

    ret

_print_newline:
    mov rax, 1
    mov rdi, 1
    mov rsi, _newline
    mov rdx, 1

    push rcx
    syscall
    pop rcx

    ret

_check_fizz:
    mov rdx, 0
    mov rax, rcx
    mov rbx, 3
    div rbx
    cmp rdx, 0

    ret

_check_buzz:
    mov rdx, 0
    mov rax, rcx
    mov rbx, 5
    div rbx
    cmp rdx, 0

    ret

_exit:
    mov rax, 60
    xor rdi, rdi
    syscall

_start:
    mov rcx, 1                  ; Use as a counter. The default value is 3.

_loop:
    call _check_fizz
    je _print_fizz_1

    call _check_buzz
    je _print_buzz_1

_print_default:
    call _print_number
    call _print_newline
    jmp _next

_print_fizz_1:
    call _print_fizz

    call _check_buzz
    je _print_buzz

    call _print_newline
    jmp _next

_print_buzz_1:
    call _print_buzz
    call _print_newline
    jmp _next

_next:
    inc rcx
    cmp rcx, 100
    jle _loop

    call _exit
