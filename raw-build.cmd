@echo off

@REM set PREFIX=D:\Softwares
set PREFIX=%USERPROFILE%\Downloads

if not exist build mkdir build

%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -I%~dp0third-parties\stb_image_write\v1.16 -c src\main.c -o build\main.o &&^
%PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe build\main.o -o build\helloworld.exe -static &&^
pause

