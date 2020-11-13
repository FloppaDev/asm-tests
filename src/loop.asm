global _main
  extern _printf

  section .text
_main:
  mov ecx, 3
  l1:
    push ecx
    push message
    call _printf
    add esp, 4
    pop ecx
    loop l1
  ret

message:
  db 'boop :)', 10, 0
