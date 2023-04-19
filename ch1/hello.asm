;hello.asm
section .data
    msg db "hello, world",0
section .bss
section .text
    global main
main:
    mov rax,1    ;1 = write
    mov rdi,1    ;1 = stdout
    mov rsi,msg   ;string to display in console
    mov rdx,12    ;length of the string without the zero
    syscall       ;display the string
    mov rax,60    ;60 = exit
    mov rdi,0    ;0 = success exit code
    syscall    ;quit