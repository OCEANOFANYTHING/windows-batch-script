@echo off
:a
echo ________Calculator________
echo.
set /p expression= Enter expression to calculate:
set /a ans=%expression%
echo.
echo = %ans%
echo program by Nakshatra
pause
cls
goto a