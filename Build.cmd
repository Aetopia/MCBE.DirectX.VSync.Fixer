@echo off
cd "%~dp0/src"

rd /q /s "bin"
md "bin"

rd /q /s "obj"
md "obj"

windres.exe -i "Resources\d3d12.rc" -o "obj\d3d12.o"
gcc.exe -Oz -s -Wl,--gc-sections,--exclude-all-symbols -nostdlib -e DllMain "d3d12.c" "obj\d3d12.o" -lkernel32 -o "bin\d3d12.dll"

windres.exe -i "Resources\vcruntime140_1.rc" -o "obj\vcruntime140_1.o"
gcc.exe -Oz -s -Wl,--gc-sections,--exclude-all-symbols,--wrap=memcpy,--wrap=memset -static -shared -municode -nostdlib -e DllMain -DINITGUID "vcruntime140_1.c" "obj\vcruntime140_1.o" -lminhook -lkernel32 -luser32 -ldxgi -lgdi32 -o "bin\vcruntime140_1.dll"
