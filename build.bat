if not exist "bin" mkdir bin

nasm -f win32 hello_world.asm &^
gcc -m32 hello_world.obj -o bin/hello_world.exe &^
del hello_world.obj
