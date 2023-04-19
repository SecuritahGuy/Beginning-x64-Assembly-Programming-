;alive2.asm
BITS 64;
section .text
    msg1 db "Hello, World",0
    msg2 db "Alive and Kicking!",0
    radius dd 357
    pi dq 3.14
    fmtstr db "%s",10,0         ;format for printing a string 
    fmtflot db "%lf",10,0       ;format for a float
    fmtint db   "%d",10,0       ;format for an integer 
section .bss
section .text 
    global main 
extern printf 
main:
    push rbp;
    mov rbp,rsp

    ;print msg1
    mov rax,0       ;no floating point
    mov rdi,fmtstr
    mov rsi,msg1
    call printf

    ;print msg2
    mov rax,0       ;no floating point
    mov rdi,fmtstr
    mov rsi,msg2
    call printf

    ;print radius
    mov rax,0       ;no floating point
    mov rdi,fmtint
    mov rsi, [radius]
    call printf 

    ;print pi (float)
    mov rax,1       ;1 xmm register used, i assume to indicate a floating point
    movq xmm0,[pi]
    mov rdi,fmtflot
    call printf 

    mov rsp,rbp 
    pop rbp 
    ret 