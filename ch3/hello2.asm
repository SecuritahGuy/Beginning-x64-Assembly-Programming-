;hello2.asm
section .data
    msg db "Hello, World",0
    NL db 0xa ;ascii code for new line
section .bss
section .text 
    global main 
main:
    mov rax,1 ;1 = write
    mov rdi,1 ;1 = stdout
    mov rsi,msg ;string to display
    mov rdx,12 ;length of string 
    syscall 
    mov rax,1
    mov rdi,1
    mov rsi,NL
    mov rdx,1
    syscall
    mov rax,60 ;exit
    mov rdi,0 ;successfull exit code
    syscall