@REM @echo off

@REM @REM set PREFIX=D:\Softwares
@REM set PREFIX=%USERPROFILE%\Downloads

@REM if not exist build mkdir build
@REM if not exist %~dp0build\ringbuffer mkdir %~dp0build\ringbuffer

@REM cd .\third-parties\Ring-Buffer &&^
@REM %PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\g++.exe -c ringbuffer.c -o %~dp0build\ringbuffer\ringbuffer.o &&^
@REM %PREFIX%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin\ar.exe rcs %~dp0build\ringbuffer\ringbuffer.a %~dp0build\ringbuffer\ringbuffer.o &&^
@REM pause