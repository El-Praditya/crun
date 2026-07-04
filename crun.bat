@echo off

if "%~1"=="" (
    echo Usage: crun file.c
    exit /b 1
)

set SOURCE=%~1
set EXE=%~dpn1.exe

gcc "%SOURCE%" -o "%EXE%"

if errorlevel 1 (
    echo Compile failed.
    exit /b 1
)

"%EXE%"