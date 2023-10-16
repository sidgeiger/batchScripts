:: FuNctions
REM Function Declaration − It tells the compiler about a function's name, return type, and parameters.
REM Function Definition − It provides the actual body of the function.

:: Calling a function
REM the statement EXIT /B %ERRORLEVEL% is to separate the code of the main program from the function.
@echo off 
SETLOCAL 
CALL :Display 
EXIT /B %ERRORLEVEL% 
:Display 
SET /A index=2 
echo The value of index is %index% 
EXIT /B 0


:: Calling function with parameters@echo off
SETLOCAL
CALL :Display 5 , 10
EXIT /B %ERRORLEVEL%
:Display
echo The value of parameter 1 is %~1
echo The value of parameter 2 is %~2
EXIT /B 0


:: Calling a function with parameters and with return value
@echo off
SETLOCAL
CALL :SetValue value1,value2
echo %value1%
echo %value2%
EXIT /B %ERRORLEVEL%
:SetValue
set "%~1 = 5"
set "%~2 = 10"
EXIT /B 0


:: Function with a local variable
@echo off
set str = Outer
echo %str%
CALL :SetValue str
echo %str%
EXIT /B %ERRORLEVEL%
:SetValue
SETLOCAL
set str = Inner
set "%~1 = %str%"
ENDLOCAL
EXIT /B 0
REM the output is: 
REM "Outer"
REM "Outer"


:: Recursive function CALL@echo off
REM Prints out the Fibonacci numbers less than 1000000000 in RECURSIVE way
set "fst = 0"
set "fib = 1"
set "limit = 1000000000"
call:myFibo fib,%fst%,%limit%
echo.The next Fibonacci number greater or equal %limit% is %fib%.
echo.&pause&goto:eof
:myFibo -- calculate recursively
:myFibo -- calculate recursively the next Fibonacci number greater or equal to a limit
SETLOCAL
set /a "Number1 = %~1"
set /a "Number2 = %~2"
set /a "Limit = %~3"
set /a "NumberN = Number1 + Number2"

if /i %NumberN% LSS %Limit% call:myFibo NumberN,%Number1%,%Limit%
(ENDLOCAL
   IF "%~1" NEQ "" SET "%~1 = %NumberN%"
)goto:eof

