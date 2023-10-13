REM Arithmetic operators
REM Relational operators
REM Logical operators
REM Assignment operators
REM Bitwise operators


:: arithmetic operators
@echo off
SET /A a = 5
SET /A b = 10
SET /A c = %a%+%b%
echo %c%
SET /A c = %a%-%b%
echo %c%
SET /A c = %b%*%a%
echo %c%
SET /A c = %b%/%a%
echo %c%
SET /A c =%b% %% %a%
echo %c%


:: Relational operators
@echo off 
SET /A a = 5 
SET /A b = 10 
if %a% EQU %b% echo A is equal to than B 
if %a% NEQ %b% echo A is not equal to than B 
if %a% LSS %b% echo A is less than B 
if %a% LEQ %b% echo A is less than or equal B
if %a% GTR %b% echo A is greater than B 
if %a% GEQ %b% echo A is greater than or equal to B


:: Logical operators
@echo off
SET /A a = 5
SET /A b = 10
IF %a% LSS 10 (IF %b% GTR 0 (ECHO %a% is less than 10 AND %b% is greater than 0))



:: Assignment operators
@echo off
SET /A a = 5
SET /A a+=5
echo %a%
SET /A a-=5
echo %a%
SET /A a*=5
echo %a%
SET /A a/=5
echo %a%
SET /A a%=5
echo %a%


:: Bitwise operators

REM 	&	This is the bitwise “and” operator
REM 	|	This is the bitwise “or” operator
REM 	^	This is the bitwise “xor” or Exclusive or operator
@echo off
SET /A "Result = 48 & 23"
echo %Result%
SET /A "Result = 16 | 16"
echo %Result%
SET /A "Result = 31 ^ 15"
echo %Result%