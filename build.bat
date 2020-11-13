if not exist "bin" mkdir bin

nasm -f win32 src/hello_world.asm -o o.obj &^
gcc -m32 o.obj -o bin/hello_world.exe

nasm -f win32 src/sum.asm -o o.obj &^
gcc -m32 o.obj -o bin/sum.exe

nasm -f win32 src/loop.asm -o o.obj &^
gcc -m32 o.obj -o bin/loop.exe

del o.obj
