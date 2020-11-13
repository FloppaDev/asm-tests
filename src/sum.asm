global _main
  extern _printf

  section .text
_main:
  ; Set loop counter
  mov ecx, 50
  mov ebx, 0
  l1:
    add ebx, ecx
    loop l1

  push ebx
  push message
  call _printf
  add esp, 8
  ret

message:
  db 'Sum is : %d', 10, 0
