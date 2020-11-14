  global _main
  extern _printf

  section .text
_main:
  ; Set loop counter
  mov ecx, 5

l1:
  ; pushing ecx because printf messes with it
  ; probably not optimal but... ¯\_(ツ)_/¯
  push ecx
  push message
  call _printf
  add esp, 4
  pop ecx
  loop l1

  ret

message:
  db 'boop :)', 10, 0
