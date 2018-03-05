; Write out "hello" 10 times.
; Assemble with nasm -f elf64 hello.nasm && ld hello.o
; Written for Linux

section .data    ; read only
  hello: db  "hello world", 10, 0 ; hello is of type char* in C
  len:  equ $-hello              ; Length of the string. Special NASM syntax.

  n: dq 10       ; Write out the string hello n times. Note that 'n' is a 
                 ; pointer to the actual value. 'dq' means "write quad-word" (8 bytes). 

section .text    ; executable code
global _start    ; find the startpoint

_start:
  push rbp
  mov  rbp, rsp
  sub  rsp, 8    ; stack frame (don't actually store anything)
  mov  rdi, [n]  ; i = *n

loop_start:      ; write out "hello" n times
  mov rax, 4     ; write
  mov rbx, 1     ; stdout
  mov rcx, hello ; pointer to string
  mov rdx, len   ; its length
  int 0x80       ; syscall

  dec rdi        ; i -= 1
  jnz loop_start ; i > 0; then goto loop_start

  call exit      ; done
  add  rsp, 8    ; restore the previous stack frame
  pop  rbp       ; ^ these two lines are never reached, they're just here for completenness

exit:
  push rbp
  mov  rbp, rsp  ; new stack
  sub  rsp, 1    ; add a byte
  mov  rbx, 0    ; exit code
  mov  rax, 1    ; exit
  int  0x80      ; syscall (doesn't return)
  add  rsp, 1    ; these are here for completness' sake
  pop  rbp
