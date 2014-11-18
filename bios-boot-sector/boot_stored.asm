; Tell the assembler where my machine code is loaded by the BIOS
[org 0x7c00]

; int 10/ah = 0eh -> scrolling teletype BIOS routine
mov ah, 0x0e

; First attempt
mov al, the_secret
int 0x10

; Second attempt
mov al, [the_secret]
int 0x10

; Third attempt
mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10

; Fourth attempt
mov al, [0x7c1d]
int 0x10

jmp $

the_secret:
  db "X"

times 510-($-$$) db 0
dw 0xaa55