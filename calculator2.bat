@echo off
title Calculator
color 0a
echo Welcome to The Basic Arithmetic Calculator
echo Made By Martin Miglio
ping localhost -n 3 >nul

:LOADING
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading....
ping localhost -n 2 >nul
cls
echo Loading.....
ping localhost -n 2 >nul
ping localhost -n 2 >nul
color 0a

:START
cls
echo What Type of Math would you like to do?
echo Add, Subtract, Multiply, or Divide.
set /p math=
IF '%math%' == 'Add' GOTO ADD
IF '%math%' == 'add' GOTO ADD
IF '%math%' == 'Subtract' GOTO SUB
IF '%math%' == 'subtract' GOTO SUB
IF '%math%' == 'Multiply' GOTO MULTIPLY
IF '%math%' == 'multiply' GOTO MULTIPLY
IF '%math%' == 'Divide' GOTO DIVIDE
IF '%math%' == 'divide' GOTO DIVIDE
Exit

:ADD
Cls
GOTO NUMBERSADD
pause
exit

:SUB
Cls
GOTO NUMBERSSUB
pause
exit

:MULTIPLY
Cls
GOTO NUMBERSMULTIPLY
pause
exit

:DIVIDE
Cls
GOTO NUMBERSDIVIDE
pause
exit

:NUMBERSADD
echo What is the First Number you would like to Add?
set /p number1=
cls
echo What is the Second Number you would like to Add?
set /p number2=
cls

GOTO ADD2
exit

:NUMBERSSUB
echo What is the First Number you would like to Subtract?
set /p number1=
cls
echo What is the Second Number you would like to Subtract?
set /p number2=
cls
GOTO SUB2
exit

:NUMBERSMULTIPLY
echo What is the First Number you would like to Multiply?
set /p number1=
cls
echo What is the Second Number you would like to Multiply?
set /p number2=
cls
GOTO MULTIPLY2
exit

:NUMBERSDIVIDE
echo What is the First Number you would like to Divide?
set /p number1=
cls
echo What is the Second Number you would like to Divide?
set /p number2=
cls
GOTO DIVIDE2
exit

:ADD2
Set /A result = %number1% + %number2%
echo The answer is %result%.
Pause
GOTO START
exit

:SUB2
Set /A result = %number1% - %number2%
echo The answer is %result%.
pause
GOTO START
exit

:MULTIPLY2
Set /A result = %number1% * %number2%
echo The answer is %result%.
pause
GOTO START
exit

:DIVIDE2
Set /A result = %number1% / %number2%
echo The answer is %result%.
pause
GOTO START
exit