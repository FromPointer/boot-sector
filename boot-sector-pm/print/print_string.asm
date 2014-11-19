print_string:
  ; Store the state.
  pusha
  ; Initialize TTL
  mov ah, 0x0e
  ; Create a counter and initialize to zero.
  mov si, 0
  jmp loop

loop:
  ; Validate if the current byte is a zero and jump
  ; to the end.
  cmp [bx+si], byte 0
  je end

  ; Print the current character and advance the counter,
  ; continue with the loop.
  mov al, [bx+si]
  int 0x10
  add si, 1
  jmp loop

end:
  popa
  ret