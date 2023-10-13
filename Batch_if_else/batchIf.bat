@echo off 
SET /A a = 5 
SET /A b = 10 
SET /A c = %a% + %b% 
if %c%==15 echo "The value of variable c is 15" 
if %c%==10 echo "The value of variable c is 10"


:: The following example shows how the ‘if’ statement can be used for strings.
@echo off 
SET str1 = String1 
SET str2 = String2 
if %str1%==String1 echo "The value of variable String1" 		
if %str2%==String3 echo "The value of variable c is String3"
rem the first if statement executes


:: Checking Command Line Arguments
@echo off 
echo %1 
echo %2 
echo %3 
if %1%==1 echo "The value is 1" 
if %2%==2 echo "The value is 2" 
if %3%==3 echo "The value is 3"
REM if this script is saved as 'check.bat' it can be run with given command args:
REM								check.bat 1 2 3
REM exoected output: 
REM 1 
REM 2 
REM 3 
REM "The value is 1" 
REM "The value is 2" 
REM "The value is 3"



:: If / else
@echo off 
SET /A a = 5 
SET /A b = 10
SET /A c = %a% + %b% 
if %c%==15 (echo "The value of variable c is 15") else (echo "Unknown value") 
if %c%==10 (echo "The value of variable c is 10") else (echo "Unknown value")


:: if defined
rem A special case for the ‘if’ statement is the "if defined", which is used to test for the existence of a VARIABLE.
@echo off 
SET str1 = String1 
SET str2 = String2 
if defined str1 echo "Variable str1 is defined"

if defined str3 (echo "Variable str3 is defined") else (echo "Variable str3 is not defined")


:: if exists
rem A special case for the ‘if’ statement is the "if exists", which is used to test for the existence of a FILE.
@echo off 
if exist C:\set2.txt echo "File exists" 
if exist C:\set3.txt (echo "File exists") else (echo "File does not exist")


::nested if statements
@echo off
SET /A a = 5
SET /A b = 10
if %a%==5 if %b%==10 echo "The value of the variables are correct"


:: If errorlevel
REM Yet another special case is "if errorlevel", which is used to test the exit codes of the last command that was run. 
REM Various commands issue integer exit codes to denote the status of the command. 
REM Generally, commands pass 0 if the command was COMPLETED successfully 
REM and 1 if the command FAILED.
REM Following is the general syntax of this statement.


:: goto
@echo off 
SET /A a = 5 

if %a%==5 goto :labela 
if %a%==10 goto :labelb

:labela 
echo "The value of a is 5" 

exit /b 0

:labelb 
echo "The value of a is 10"