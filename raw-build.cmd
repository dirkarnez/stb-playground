@echo off

@REM set PREFIX=D:\Softwares
set PREFIX=%USERPROFILE%\Downloads

if not exist raw-build mkdir raw-build

%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\gcc.exe -I%~dp0third-parties\stb_image_write\v1.16 -c src\main.c -o raw-build\main.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\gcc.exe raw-build\main.o -o raw-build\helloworld.exe -static &&^
pause

