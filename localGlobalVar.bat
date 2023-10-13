rem The ‘globalvar’ is defined with a global scope and is available throughout the entire script.
rem The ‘var‘ variable is defined in a local scope because it is enclosed between a ‘SETLOCAL’ and ‘ENDLOCAL’ block. Hence, this variable will be destroyed as soon the ‘ENDLOCAL’ statement is executed.
@echo off 
set globalvar = 5
SETLOCAL
set var = 13145
set /A var = %var% + 5
echo %var%
echo %globalvar%
ENDLOCAL
pause